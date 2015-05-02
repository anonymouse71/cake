<?php
App::uses('AppController', 'Controller');
/**
 * Comments Controller
 *
 * @property Comment $Comment
 * @property PaginatorComponent $Paginator
 */
class CommentsController extends AppController {

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
		$this->Comment->recursive = 0;
		$this->set('comments', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Comment->exists($id)) {
			throw new NotFoundException(__('Invalid comment'));
		}
		$options = array('conditions' => array('Comment.' . $this->Comment->primaryKey => $id));
		$this->set('comment', $this->Comment->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Comment->create();
			if ($this->Comment->save($this->request->data)) {
				$this->Session->setFlash(__('The comment has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The comment could not be saved. Please, try again.'));
			}
		}
	}

/**
 * add method for Forum comment Module
 *
 * @return void
 */
	public function addComment() {
		if ($this->request->is('post')) {
			$data = $this->request->data;
			#var_dump($data); 
			$this->Comment->create();
			if ($this->Comment->save($data)) {
				$this->Session->setFlash(__('The comment has been saved.'));
				return $this->redirect(array('controller'=>'forums','action' => 'topicsView',$data['Post']['id']));
			} else {
				$this->Session->setFlash(__('The comment could not be saved. Please, try again.'));
			}
		}
	}
/**
 * add method for Blog comment Module
 *
 * @return void
 */
	public function addBlogComment() {
		if ($this->request->is('post')) {
			$data = $this->request->data;
			#var_dump($data); die();
			$this->Comment->create();
			if ($this->Comment->save($data)) {
				$this->Session->setFlash(__('The comment has been saved.'));
				return $this->redirect(array('controller'=>'blogs','action' => 'details',$data['Comment']['model_foreign_key']));
			} else {
				$this->Session->setFlash(__('The comment could not be saved. Please, try again.'));
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
		if (!$this->Comment->exists($id)) {
			throw new NotFoundException(__('Invalid comment'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Comment->save($this->request->data)) {
				$this->Session->setFlash(__('The comment has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The comment could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Comment.' . $this->Comment->primaryKey => $id));
			$this->request->data = $this->Comment->find('first', $options);
		}
	}
/**
 * edit method for Blog comments
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function BlogCommentedit($id = null) {
		if (!$this->Comment->exists($id)) {
			throw new NotFoundException(__('Invalid comment'));
		}
		if ($this->request->is(array('post', 'put'))) {
			$data = $this->request->data;
			#var_dump($data); die();
			if ($this->Comment->save($this->request->data)) {
				$this->Session->setFlash(__('The comment has been saved.'));
				return $this->redirect(array('controller'=>'Blogs','action' => 'details',$data['Comment']['model_foreign_key']));
			} else {
				$this->Session->setFlash(__('The comment could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Comment.' . $this->Comment->primaryKey => $id));
			$this->request->data = $this->Comment->find('first', $options);
			#echo json_encode($this->request->data);
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
		$this->Comment->id = $id;
		if (!$this->Comment->exists()) {
			throw new NotFoundException(__('Invalid comment'));
		}
		//$this->request->allowMethod('post', 'delete');

		if ($this->request -> isPost()) {

			if ($this->Comment->delete()) {
					$this->Session->setFlash(__('The comment has been deleted.'));
			} else {
				$this->Session->setFlash(__('The comment could not be deleted. Please, try again.'));
			}

		}
		
		return $this->redirect(array('action' => 'index'));
	}

/**
 * delete Blog Comment method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function blogCommentDelete($id = null) {
		$this->Comment->id = $id;
		if (!$this->Comment->exists()) {
			throw new NotFoundException(__('Invalid comment'));
		}
		//$this->request->allowMethod('post', 'delete');

		if ($this->request -> isPost()) {

			if ($this->Comment->delete()) {
					$this->Session->setFlash(__('The comment has been deleted.'));
			} else {
				$this->Session->setFlash(__('The comment could not be deleted. Please, try again.'));
			}

		}
		
		return $this->redirect(array('controller'=>'blogs','action' => 'catalog'));
	}
}
