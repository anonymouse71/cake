<?php
App::uses('AppController', 'Controller');
/**
 * Tests Controller
 *
 * @property Test $Test
 * @property PaginatorComponent $Paginator
 */
class TestsController extends AppController {

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
		$this->Test->recursive = 0;
		$this->set('tests', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Test->exists($id)) {
			throw new NotFoundException(__('Invalid test'));
		}
		$options = array('conditions' => array('Test.' . $this->Test->primaryKey => $id));
		$this->set('test', $this->Test->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Test->create();
			if ($this->Test->save($this->request->data)) {
				$this->Session->setFlash(__('The test has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The test could not be saved. Please, try again.'));
			}
		}
		$contents = $this->Test->Content->find('list');
		$lessons = $this->Test->Lesson->find('list');
		$this->set(compact('contents', 'lessons'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Test->exists($id)) {
			throw new NotFoundException(__('Invalid test'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Test->save($this->request->data)) {
				$this->Session->setFlash(__('The test has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The test could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Test.' . $this->Test->primaryKey => $id));
			$this->request->data = $this->Test->find('first', $options);
		}
		$contents = $this->Test->Content->find('list');
		$lessons = $this->Test->Lesson->find('list');
		$this->set(compact('contents', 'lessons'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Test->id = $id;
		if (!$this->Test->exists()) {
			throw new NotFoundException(__('Invalid test'));
		}
		//$this->request->allowMethod('post', 'delete');

		if ($this->request -> isPost()) {

			if ($this->Test->delete()) {
					$this->Session->setFlash(__('The test has been deleted.'));
			} else {
				$this->Session->setFlash(__('The test could not be deleted. Please, try again.'));
			}

		}
		
		return $this->redirect(array('action' => 'index'));
	}
}
