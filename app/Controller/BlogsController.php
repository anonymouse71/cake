<?php
App::uses('AppController', 'Controller');
/**
 * Blogs Controller
 *
 * @property Blog $Blog
 * @property PaginatorComponent $Paginator
 */
class BlogsController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

	#public $uses = array('User','Blog');

	public function beforeRender(){

		$this->loadModel('Comment');
		$this->loadModel('User');


		$conditions = array('model_name' => 'Blog');
		$lastComments = $this->Comment->find('all', array('conditions' => $conditions,'limit' => 3,'order' => 'id DESC'));
		$lastRegister = $this->User->find('all', array('limit' => 4,'order' => 'id DESC'));
		#$allUser =  $this->User->find('all');
		foreach ($lastComments as $key => $comment) {
			$commentAuthor = $this->User->findByUsername($comment['Comment']['created_by']); 

			$lastComments[$key]['Comment']['author'] = $commentAuthor['User'];
		}

		/*For Archive start*/
		$archives = $this->Blog->find('all',
						array(
						'fields'=>array('DATE_FORMAT(Blog.modified, \'%Y %M\') AS  dd','count(Blog.id) AS numblogs'),
						'order'=>array('dd DESC'),
						'group'=>array('dd')
						));

		#var_dump($lastComments); die(); 

		$this->set(compact('lastComments','lastRegister','archives'));
	}
/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Blog->recursive = 0;
		$this->set('blogs', $this->Paginator->paginate());
	}

/**
 * catalog method
 *
 * @return void
 */
	public function catalog() {

		$this->Paginator->settings = array('limit'=>5);
		$this->Blog->recursive = 0;
		$blog = $this->Paginator->paginate();

		#var_dump($blog);

		$this->loadModel('Comment');

		foreach ($blog as $key => $blogs) {
		
		$conditions = array('model_name' => 'Blog','model_foreign_key'=>$blogs['Blog']['id']);
		$comment = $this->Comment->find('all', array('conditions' => $conditions, 'order' => 'id DESC'));

		$blog[$key]['Blog']['comment'] = $comment;

		#var_dump($comment);
		}
	#var_dump($blog);die();

		$this->set('blogs',$blog);
	}
/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Blog->exists($id)) {
			throw new NotFoundException(__('Invalid blog'));
		}
		$options = array('conditions' => array('Blog.' . $this->Blog->primaryKey => $id));
		$this->set('blog', $this->Blog->find('first', $options));
	}

/**
 * Details method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function details($id = null) {
		$this->layout = 'oneColumn';
		if (!$this->Blog->exists($id)) {
			throw new NotFoundException(__('Invalid blog'));
		}
		
		$options = array('conditions' => array('Blog.' . $this->Blog->primaryKey => $id));
		$blogs = $this->Blog->find('first', $options);


		$this->loadModel('Comment');
		$this->loadModel('User');
		$conditions = array('model_name' => 'Blog','model_foreign_key'=>$id);
		$comment = $this->Comment->find('all', array('conditions' => $conditions));
		#var_dump($comment);

		foreach ($comment as $key => $comments) {

			$cAuthor = $this->User->findByUsername($comments['Comment']['created_by']);
			$comment[$key]['Comment']['author'] =  $cAuthor['User'];
			#var_dump($cAuthor );
		}
		#var_dump($comment); 
		#die();

		$blogs['Blog']['comment'] = $comment;
		#var_dump($blogs,$comment); die();

		$this->set('blog', $blogs);
	}
/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Blog->create();
			if ($this->Blog->save($this->request->data)) {
				$this->Session->setFlash(__('The blog has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The blog could not be saved. Please, try again.'));
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
		if (!$this->Blog->exists($id)) {
			throw new NotFoundException(__('Invalid blog'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Blog->save($this->request->data)) {
				$this->Session->setFlash(__('The blog has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The blog could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Blog.' . $this->Blog->primaryKey => $id));
			$this->request->data = $this->Blog->find('first', $options);
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
		$this->Blog->id = $id;
		if (!$this->Blog->exists()) {
			throw new NotFoundException(__('Invalid blog'));
		}
		//$this->request->allowMethod('post', 'delete');

		if ($this->request -> isPost()) {

			if ($this->Blog->delete()) {
					$this->Session->setFlash(__('The blog has been deleted.'));
			} else {
				$this->Session->setFlash(__('The blog could not be deleted. Please, try again.'));
			}

		}
		
		return $this->redirect(array('action' => 'index'));
	}

	public function last_comments(){
 
  $this->autoRender = false;

  $this->loadModel('Comment');
  $total_comments = $this->Comment->find('all',array('fields'=>array('created_by','data','created','id'),
  												'conditions'=>array('Comment.model_name'=>'Blog',),
  												'order'=>array('Comment.created DESC'),
  												'limit' => 3,));


  //}
  	// var_dump($total_comments);

  echo json_encode(array(
  		'last_comments'=> $total_comments,
  		

  	) );

 }

 public function last_registered(){

 	 $this->autoRender = false;

 	$this->loadModel('User');
  	$last_registered = $this->User->find('all',array('fields'=>array('first_name','last_name','created'),
  												'conditions'=>array('user_group_id'=>2),
  												'order'=>array('User.created DESC'),
  												'limit' => 5,));

  	// var_dump($last_registered);

  	echo json_encode(array(
  				'last_registered'=>$last_registered));
 }
    public  function blogComment($id=null){
        $this->autoRender = false;
        $this->loadModel('Comment');
        // $this->loadModel('User');
        $conditions = array('model_name' => 'Blog','model_foreign_key'=>$id);
        $comment = $this->Comment->find('all', array('conditions' => $conditions,'fields' => array('id','data')));
        //var_dump($comment);
        echo  json_encode(array('comment'=>$comment));

    }

}
