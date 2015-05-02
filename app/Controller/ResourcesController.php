<?php
App::uses('AppController', 'Controller');
/**
 * Resources Controller
 *
 * @property Resource $Resource
 * @property PaginatorComponent $Paginator
 */
class ResourcesController extends AppController {

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
		$this->Resource->recursive = 0;
		$this->set('resources', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Resource->exists($id)) {
			throw new NotFoundException(__('Invalid resource'));
		}
		$options = array('conditions' => array('Resource.' . $this->Resource->primaryKey => $id));
		$this->set('resource', $this->Resource->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Resource->create();
			if ($this->Resource->save($this->request->data)) {
				$this->Session->setFlash(__('The resource has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The resource could not be saved. Please, try again.'));
			}
		}
		$lessons = $this->Resource->Lesson->find('list');
		$this->set(compact('lessons'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Resource->exists($id)) {
			throw new NotFoundException(__('Invalid resource'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Resource->save($this->request->data)) {
				$this->Session->setFlash(__('The resource has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The resource could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Resource.' . $this->Resource->primaryKey => $id));
			$this->request->data = $this->Resource->find('first', $options);
		}
		$lessons = $this->Resource->Lesson->find('list');
		$this->set(compact('lessons'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Resource->id = $id;
		if (!$this->Resource->exists()) {
			throw new NotFoundException(__('Invalid resource'));
		}
		//$this->request->allowMethod('post', 'delete');

		if ($this->request -> isPost()) {

			if ($this->Resource->delete()) {
					$this->Session->setFlash(__('The resource has been deleted.'));
			} else {
				$this->Session->setFlash(__('The resource could not be deleted. Please, try again.'));
			}

		}
		
		return $this->redirect(array('action' => 'index'));
	}
}
