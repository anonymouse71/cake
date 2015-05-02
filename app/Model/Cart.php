<?php

App::uses('AppModel', 'Model');
App::import('Model', 'Order');

/**
 * Cart Model
 *
 * @property User $User
 * @property Course $Course
 */
class Cart extends AppModel
{

    /**
     * Validation rules
     *
     * @var array
     */
    public $validate = array (
        'user_id'   => array (
            'numeric' => array (
                'rule' => array ('numeric'),
            //'message' => 'Your custom message here',
            //'allowEmpty' => false,
            //'required' => false,
            //'last' => false, // Stop validation after this rule
            //'on' => 'create', // Limit validation to 'create' or 'update' operations
            ),
        ),
        'course_id' => array (
            'numeric' => array (
                'rule' => array ('numeric'),
            //'message' => 'Your custom message here',
            //'allowEmpty' => false,
            //'required' => false,
            //'last' => false, // Stop validation after this rule
            //'on' => 'create', // Limit validation to 'create' or 'update' operations
            ),
        ),
    );

    //The Associations below have been created with all possible keys, those that are not needed can be removed

    /**
     * belongsTo associations
     *
     * @var array
     */
    public $belongsTo = array (
        'User'   => array (
            'className'  => 'User',
            'foreignKey' => 'user_id',
            'conditions' => '',
            'fields'     => '',
            'order'      => ''
        ),
        'Course' => array (
            'className'  => 'Course',
            'foreignKey' => 'course_id',
            'conditions' => '',
            'fields'     => '',
            'order'      => ''
        )
    );

    public function add_to_cart($courseId = null, $userId = null)
    {
        $orderModel = new Order();
        $orders     = $orderModel->find('first', array (
            'joins'      => array (
                array (
                    'table'      => 'order_details',
                    'alias'      => 'OrderDetail',
                    'type'       => 'LEFT',
                    'conditions' => array (
                        'OrderDetail.order_id = Order.id'
                    )
                )
            ),
            'conditions' => array (
                'AND' => array (
                    'OrderDetail.course_id' => $courseId,
                    'Order.user_id'         => $userId
                )
            )
        ));
        if (!empty($orders)) {
            return true;
        }
        $carts = $this->find('first', array ('conditions' => array ('AND' => array ('course_id' => $courseId, 'user_id' => $userId))));
        if (!empty($carts)) {
            return true;
        }
        $data = array (
            'Cart' => array (
                'course_id' => $courseId,
                'user_id'   => $userId
            )
        );
        $this->create();
        if ($this->save($data)) {
            return true;
        }
        return false;

    }

    public function remove_from_cart($courseId = null, $userId = null)
    {

        $carts = $this->find('first', array ('conditions' => array ('AND' => array ('course_id' => $courseId, 'user_id' => $userId))));
        if (empty($carts)) {
            return true;
        }
        $this->id = $carts['Cart']['id'];
        if (!$this->exists()) {
            throw new NotFoundException(__('Invalid cart'));
        }
        if ($this->delete()) {
            return true;
        }
        return false;

    }

    public function clear($userId = null)
    {
        if ($this->deleteAll(array ('user_id' => $userId), false)) {
            return true;
        }
        return false;

    }

}
