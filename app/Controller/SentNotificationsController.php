<?php
App::uses('AppController', 'Controller');
/**
 * SentNotifications Controller
 *
 * @property SentNotification $SentNotification
 * @property PaginatorComponent $Paginator
 */
class SentNotificationsController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->SentNotification->recursive = 0;
		$this->set('sentNotifications', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->SentNotification->exists($id)) {
			throw new NotFoundException(__('Invalid sent notification'));
		}
		$options = array('conditions' => array('SentNotification.' . $this->SentNotification->primaryKey => $id));
		$this->set('sentNotification', $this->SentNotification->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->SentNotification->create();
			if ($this->SentNotification->save($this->request->data)) {
				$this->Session->setFlash(__('The sent notification has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The sent notification could not be saved. Please, try again.'));
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->SentNotification->exists($id)) {
			throw new NotFoundException(__('Invalid sent notification'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->SentNotification->save($this->request->data)) {
				$this->Session->setFlash(__('The sent notification has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The sent notification could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('SentNotification.' . $this->SentNotification->primaryKey => $id));
			$this->request->data = $this->SentNotification->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->SentNotification->id = $id;
		if (!$this->SentNotification->exists()) {
			throw new NotFoundException(__('Invalid sent notification'));
		}
		//$this->request->allowMethod('post', 'delete');

		if ($this->request -> isPost()) {

			if ($this->SentNotification->delete()) {
					$this->Session->setFlash(__('The sent notification has been deleted.'));
			} else {
				$this->Session->setFlash(__('The sent notification could not be deleted. Please, try again.'));
			}

		}
		
		return $this->redirect(array('action' => 'index'));
	}
}
