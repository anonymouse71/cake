<?php
App::uses('AppController', 'Controller');
/**
 * Usrgroups Controller
 *
 * @property Usrgroup $Usrgroup
 * @property PaginatorComponent $Paginator
 */
class UsrgroupsController extends AppController {

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
		$this->Usrgroup->recursive = 0;
		$this->set('usrgroups', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Usrgroup->exists($id)) {
			throw new NotFoundException(__('Invalid usrgroup'));
		}
		$options = array('conditions' => array('Usrgroup.' . $this->Usrgroup->primaryKey => $id));
		$this->set('usrgroup', $this->Usrgroup->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Usrgroup->create();
			if ($this->Usrgroup->save($this->request->data)) {
				$this->Session->setFlash(__('The usrgroup has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The usrgroup could not be saved. Please, try again.'));
			}
		}
		$userTypes = $this->Usrgroup->UserType->find('list');
		$courses = $this->Usrgroup->Course->find('list');
		$lessons = $this->Usrgroup->Lesson->find('list');
		$users = $this->Usrgroup->User->find('list');
		$this->set(compact('userTypes', 'courses', 'lessons', 'users'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Usrgroup->exists($id)) {
			throw new NotFoundException(__('Invalid usrgroup'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Usrgroup->save($this->request->data)) {
				$this->Session->setFlash(__('The usrgroup has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The usrgroup could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Usrgroup.' . $this->Usrgroup->primaryKey => $id));
			$this->request->data = $this->Usrgroup->find('first', $options);
		}
		$userTypes = $this->Usrgroup->UserType->find('list');
		$courses = $this->Usrgroup->Course->find('list');
		$lessons = $this->Usrgroup->Lesson->find('list');
		$users = $this->Usrgroup->User->find('list');
		$this->set(compact('userTypes', 'courses', 'lessons', 'users'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Usrgroup->id = $id;
		if (!$this->Usrgroup->exists()) {
			throw new NotFoundException(__('Invalid usrgroup'));
		}
		//$this->request->allowMethod('post', 'delete');

		if ($this->request -> isPost()) {

			if ($this->Usrgroup->delete()) {
					$this->Session->setFlash(__('The usrgroup has been deleted.'));
			} else {
				$this->Session->setFlash(__('The usrgroup could not be deleted. Please, try again.'));
			}

		}
		
		return $this->redirect(array('action' => 'index'));
	}
}
