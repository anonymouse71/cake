<?php
App::uses('AppController', 'Controller');
/**
 * Ratings Controller
 *
 * @property Rating $Rating
 * @property PaginatorComponent $Paginator
 */
class RatingsController extends AppController {

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
		$this->Rating->recursive = 0;
		$this->set('ratings', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Rating->exists($id)) {
			throw new NotFoundException(__('Invalid rating'));
		}
		$options = array('conditions' => array('Rating.' . $this->Rating->primaryKey => $id));
		$this->set('rating', $this->Rating->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Rating->create();
			if ($this->Rating->save($this->request->data)) {
				$this->Session->setFlash(__('The rating has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The rating could not be saved. Please, try again.'));
			}
		}
		$users = $this->Rating->User->find('list');
		$this->set(compact('users'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Rating->exists($id)) {
			throw new NotFoundException(__('Invalid rating'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Rating->save($this->request->data)) {
				$this->Session->setFlash(__('The rating has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The rating could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Rating.' . $this->Rating->primaryKey => $id));
			$this->request->data = $this->Rating->find('first', $options);
		}
		$users = $this->Rating->User->find('list');
		$this->set(compact('users'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Rating->id = $id;
		if (!$this->Rating->exists()) {
			throw new NotFoundException(__('Invalid rating'));
		}
		//$this->request->allowMethod('post', 'delete');

		if ($this->request -> isPost()) {

			if ($this->Rating->delete()) {
					$this->Session->setFlash(__('The rating has been deleted.'));
			} else {
				$this->Session->setFlash(__('The rating could not be deleted. Please, try again.'));
			}

		}
		
		return $this->redirect(array('action' => 'index'));
	}
}
