<?php
App::uses('AppController', 'Controller');
/**
 * Glossaries Controller
 *
 * @property Glossary $Glossary
 * @property PaginatorComponent $Paginator
 */
class GlossariesController extends AppController {

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
		$this->Glossary->recursive = 0;
		$this->set('glossaries', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Glossary->exists($id)) {
			throw new NotFoundException(__('Invalid glossary'));
		}
		$options = array('conditions' => array('Glossary.' . $this->Glossary->primaryKey => $id));
		$this->set('glossary', $this->Glossary->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Glossary->create();
			if ($this->Glossary->save($this->request->data)) {
				$this->Session->setFlash(__('The glossary has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The glossary could not be saved. Please, try again.'));
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
		if (!$this->Glossary->exists($id)) {
			throw new NotFoundException(__('Invalid glossary'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Glossary->save($this->request->data)) {
				$this->Session->setFlash(__('The glossary has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The glossary could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Glossary.' . $this->Glossary->primaryKey => $id));
			$this->request->data = $this->Glossary->find('first', $options);
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
		$this->Glossary->id = $id;
		if (!$this->Glossary->exists()) {
			throw new NotFoundException(__('Invalid glossary'));
		}
		//$this->request->allowMethod('post', 'delete');

		if ($this->request -> isPost()) {

			if ($this->Glossary->delete()) {
					$this->Session->setFlash(__('The glossary has been deleted.'));
			} else {
				$this->Session->setFlash(__('The glossary could not be deleted. Please, try again.'));
			}

		}
		
		return $this->redirect(array('action' => 'index'));
	}
}
