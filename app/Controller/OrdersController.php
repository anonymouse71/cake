<?php

App::uses('AppController', 'Controller');

/**
 * Orders Controller
 *
 * @property Order $Order
 * @property PaginatorComponent $Paginator
 */
class OrdersController extends AppController
{

    /**
     * Components
     *
     * @var array
     */
    public $components = array ('Paginator');


    /**
     * order method
     *
     * @return void
     */
    public function checkout()
    {
        $this->loadModel('Cart');
        $this->loadModel('OrderDetail');
        // Checked User is loged in
        $UserAuth = $this->Session->read('UserAuth');
        if (empty($UserAuth)) {
            return $this->redirect('login');
        }
        $userId = $this->Session->read('UserAuth.User.id');

        $this->Cart->recursive                                     = 1;
        $this->Paginator->settings['conditions'][]['Cart.user_id'] = $userId;
        $carts                                                     = $this->Paginator->paginate('Cart');

        if ($this->request->is('post')) {
            $orderSaved = true;
            try {
                $this->Order->begin();
                $subtotal = 0;
                foreach ($carts as $cart) {
                    $subtotal = $subtotal + $cart['Course']['price'];
                }
                $orderData = array (
                    'Order' => array (
                        'user_id' => $userId,
                        'price'   => $subtotal,
                        'is_paid' => 0,
                    )
                );
                $orderId   = 0;
                try {
                    $order = $this->Order->save($orderData);
                    if (!empty($order)) {
                        $orderId = $order['Order']['id'];
                        foreach ($carts as $cart) {
                            try {
                                $data            = array (
                                    'OrderDetail' => array (
                                        'order_id'  => $orderId,
                                        'course_id' => $cart['Cart']['course_id'],
                                        'price'     => $cart['Course']['price'],
                                    )
                                );
                                $this->OrderDetail->create();
                                $order_detail_id = $this->OrderDetail->save($data);

                                if (empty($order_detail_id)) {
                                    $orderSaved = false;
                                };
                                $data = array ();
                            } catch (Exception $e) {
                                throw new Exception($e);
                            }
                        }
                    } else {
                        $orderSaved = false;
                    }
                } catch (Exception $e) {
                    throw new Exception($e);
                }

                if ($orderSaved) {
                    $this->Order->commit();
                    // Clear cart
                    $this->Cart->clear($userId);
                    $this->Session->setFlash(__('Thank you for your order.'));
                    return $this->redirect(array ('action' => 'invoice', $orderId));
                } else {
                    $this->Order->rollback();
                }
            } catch (Exception $e) {
                throw new Exception($e);
            }
        }
        $users = $this->Order->User->find('list');
        $this->set(compact('carts', 'users'));

    }

    public function invoice($id = 0)
    {

        // Checked User is loged in
        $UserAuth = $this->Session->read('UserAuth');
        if (empty($UserAuth)) {
            return $this->redirect('login');
        }
        $userId = $this->Session->read('UserAuth.User.id');
        $user_group = $this->Session->read('UserAuth.UserGroup.alias_name');



        if (!$this->Order->exists($id)) {
            throw new NotFoundException(__('Invalid order'));
        }
        $options = array ();

        $options['conditions'][]['Order.' . $this->Order->primaryKey] = $id;
        switch ($user_group) {
            case 'Admin':

                break;
            default:
                $options['conditions'][]['Order.user_id'] =  $userId;
                break;
        }

        $this->Order->recursive = 2;
        $order = $this->Order->find('first', $options);
        $this->set(compact('order'));


    }

}
