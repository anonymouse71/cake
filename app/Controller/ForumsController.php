<?php
App::uses('AppController', 'Controller');
/**
 * Forums Controller
 *
 * @property Forum $Forum
 * @property PaginatorComponent $Paginator
 */
class ForumsController extends AppController {

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
		$this->Forum->recursive = 0;
		$this->set('forums', $this->Paginator->paginate());
	}

public function catalog() {
		$this->Forum->recursive = 2;
		$forums = $this->Paginator->paginate();
		#var_dump($forums); die();
/*
		foreach ($forums as $key=>$form) {
		
		$conditions = array('model_name' => 'forum','model_foreign_key'=>$cform['Forum']['id']);
		$comments = $this->Comment->find('all', array('conditions' => $conditions));

		$forums[$key]['Forum']['ans'] = $comments;
		
		}*/
#var_dump($forums); die();
		$this->set('forums',$forums);
	}

/*public function catalog() {
		$this->Forum->recursive = 0;
		$forums = $this->Paginator->paginate();
		#var_dump($forums); die();

		$this->loadModel('Comment');
		foreach ($forums as $key=>$cform) {
		
		$conditions = array('model_name' => 'forum','model_foreign_key'=>$cform['Forum']['id']);
		$comments = $this->Comment->find('all', array('conditions' => $conditions));

		$forums[$key]['Forum']['ans'] = $comments;
		
		}
#var_dump($forums); die();
		$this->set(compact('forums'));
	}*/

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Forum->exists($id)) {
			throw new NotFoundException(__('Invalid forum'));
		}
		$options = array('conditions' => array('Forum.' . $this->Forum->primaryKey => $id));
		$this->set('forum', $this->Forum->find('first', $options));
	}
/**
 * Details method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function details($id = null) {
		$this->loadModel('Topic');
		$topics = $this->Topic->findById($id);
		$this->loadModel('User');

		// var_dump($topics); die();
		foreach ($topics['Post'] as $key=> $post) {

			$users = $this->User->findByUsername($post['created_by']);

			$topics['Post'][$key]['author'] = $users['User'];
			#var_dump($topics, $users); 

		}

		if (!$this->Topic->exists($id)) {
			throw new NotFoundException(__('Invalid Topic'));
		}


		$this->set('topics', $topics);
	}

/**
 * Toics method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function topicsView($id = null) {
		$this->loadModel('Post');
		$posts = $this->Post->findById($id);
		#var_dump($post); die();

		$this->loadModel('Comment');
		$this->loadModel('User');

		$users = $this->User->findByUsername($posts['Post']['created_by']);
		$posts['Post']['author'] = $users['User'];

		#var_dump($posts); die();
		
		$conditions = array('model_name' => 'Post','model_foreign_key'=>$id);
		$comment = $this->Comment->find('all', array('conditions' => $conditions));

		foreach ($comment as $key => $comments) {
			$commentUser = $this->User->findByUsername($comments['Comment']['created_by']);
			#var_dump($commentUser);
			$comment[$key]['Comment']['author'] = $commentUser['User'];
		}

		#var_dump($comment[$key]['Comment']); die();

		if (!$this->Post->exists($id)) {
			throw new NotFoundException(__('Invalid Post'));
		}


		$this->set('posts', $posts);
		$this->set('comments',$comment);
	}

/*public function details($id = null) {
		if (!$this->Forum->exists($id)) {
			throw new NotFoundException(__('Invalid forum'));
		}
		$this->loadModel('Comment');
		$conditions = array('model_name' => 'forum','model_foreign_key'=>$id);
		$comments = $this->Comment->find('all', array('conditions' => $conditions));

		$options = array('conditions' => array('Forum.' . $this->Forum->primaryKey => $id));
		$this->set('forum', $this->Forum->find('first', $options));
		$this->set('comment', $comments);
	}
*/
/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Forum->create();
			if ($this->Forum->save($this->request->data)) {
				$this->Session->setFlash(__('The forum has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The forum could not be saved. Please, try again.'));
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
		if (!$this->Forum->exists($id)) {
			throw new NotFoundException(__('Invalid forum'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Forum->save($this->request->data)) {
				$this->Session->setFlash(__('The forum has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The forum could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Forum.' . $this->Forum->primaryKey => $id));
			$this->request->data = $this->Forum->find('first', $options);
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
		$this->Forum->id = $id;
		if (!$this->Forum->exists()) {
			throw new NotFoundException(__('Invalid forum'));
		}
		//$this->request->allowMethod('post', 'delete');

		if ($this->request -> isPost()) {

			if ($this->Forum->delete()) {
					$this->Session->setFlash(__('The forum has been deleted.'));
			} else {
				$this->Session->setFlash(__('The forum could not be deleted. Please, try again.'));
			}

		}
		
		return $this->redirect(array('action' => 'index'));
	}
	/*
	*Status Update
	*
	*/

	public function changeStatus($id = null) {
		$this->loadModel('Topic');
		$this->Topic->id = $id;
		$data = $this->Topic->findById($id);
		#var_dump($data['Topic']['status']); die();
		
		if ($this->request -> isPost()) {

			if ($data['Topic']['status']) {
				$this->Topic->saveField('status', false);
			}else{
				$this->Topic->saveField('status', true);
			}

		}
		return $this->redirect(array('action' => 'catalog'));
	}


	public function addNewVote(){
		
	}
}
