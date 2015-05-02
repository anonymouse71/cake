<?php
App::uses('AppController', 'Controller');
/**
 * Contents Controller
 *
 * @property Content $Content
 * @property PaginatorComponent $Paginator
 */
class ContentsController extends AppController {

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

        /*$_data= $this->Content->generateTreeList(
            null,
            null,
            null,
            '&nbsp;&nbsp;&nbsp;'
        );*/

		$this->Content->recursive = 0;
		$this->set('contents', $this->Paginator->paginate());

        $_contents = $this->Content->find('all');
        $this->set('contents',$_contents);

        #$this->set('contents', $_data);
	}

    /**
     * catalog method
     *
     * @return void
     */
    public function catalog($lessonId=null) {
    	
    	$this->Content->recursive = 0;
		$this->set('contents', $this->Paginator->paginate());

        $_contents = $this->Content->find('all', array(
    'conditions' => array('Content.lesson_id' => $lessonId), //array of conditions
    'recursive' => 0, //int
    //array of field names
    //'fields' => array('Content.field1', 'DISTINCT Model.field2'),
    //string or array defining order
    //'order' => array('Model.created', 'Model.field3 DESC'),
    //'group' => array('Model.field'), //fields to GROUP BY
    //'limit' => n, //int
    //'page' => n, //int
    //'offset' => n, //int
    //'callbacks' => true //other possible values are false, 'before', 'after'
));
        // debug($_contents);
        $this->set('contents',$_contents);
        $this->set('lessonId',$lessonId);

        // $content['Content']['previous_content']

        // $_sql = "SELECT name FROM `contents` WHERE lesson_id = $id";
        // $users = $this->Course->query($_sql);

        //$this->request->data['Content']['lesson_id'] = $lessonId;

    }
/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Content->exists($id)) {
			throw new NotFoundException(__('Invalid content'));
		}
		$options = array('conditions' => array('Content.' . $this->Content->primaryKey => $id));
		$this->set('content', $this->Content->find('first', $options));
	}

	public function detail($id = null) {
		if (!$this->Content->exists($id)) {
			throw new NotFoundException(__('Invalid content'));
		}
		$options = array('conditions' => array('Content.' . $this->Content->primaryKey => $id));
		$this->set('content', $this->Content->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add($lessonId=null,$contentId=null) {
		if ($this->request->is('post')) {

			if(isset($this->request->data['Content']['parent_id'])){
				if($this->request->data['Content']['parent_id']==0){
					unset($this->request->data['Content']['parent_id']);
				}
			}

			#var_dump($this->request->data); die();

			if ($lessonId) {
				$this->request->data['Content']['lesson_id'] = $lessonId;
			}

			if ($contentId) {
				$this->request->data['Content']['parent_id'] = $contentId;
			}

			var_dump($this->request->data); die();

			$this->Content->create();
			$this->Content->id = null;
			if ($this->Content->save($this->request->data['Content'])) {
				$this->Session->setFlash(__('The content has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The content could not be saved. Please, try again.'));
			}
		}
		$lessons = $this->Content->Lesson->find('list');
		$parentContents = $this->Content->generateTreeList(null,null,null,'--');
		$users = $this->Content->User->find('list');
		$this->set(compact('lessons', 'parentContents', 'users'));

		if ($lessonId) {

			$contents = $this->Content->generateTreeList(
					array('Content.lesson_id'=>$lessonId),
					null,
					null,
					'&nbsp;&nbsp;&nbsp;'
				);


			$alreadyHaveLessonId ='Yes';
			$this->set(compact('alreadyHaveLessonId','contents'));

		}
     $content_result = $this->Content->find('list', array('fields'=>array('Content.id', 'Content.name'),'recursive'=>0));
        $this->set(compact('previous_content','content_result'));
        //var_dump($content_result);

	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Content->exists($id)) {
			throw new NotFoundException(__('Invalid content'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Content->save($this->request->data)) {
				$this->Session->setFlash(__('The content has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The content could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Content.' . $this->Content->primaryKey => $id));
			$this->request->data = $this->Content->find('first', $options);
		}
		$lessons = $this->Content->Lesson->find('list');
		$parentContents = $this->Content->generateTreeList(null,null,null,'>>');
		$users = $this->Content->User->find('list');
		$this->set(compact('lessons', 'parentContents', 'users'));


$content_result = $this->Content->find('list', array('fields'=>array('Content.id', 'Content.name'),'recursive'=>0));
$this->set(compact('previous_content','content_result'));
//    var_dump($content_result);
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Content->id = $id;
		if (!$this->Content->exists()) {
			throw new NotFoundException(__('Invalid content'));
		}
		//$this->request->allowMethod('post', 'delete');

		if ($this->request -> isPost()) {

			if ($this->Content->delete()) {
					$this->Session->setFlash(__('The content has been deleted.'));
			} else {
				$this->Session->setFlash(__('The content could not be deleted. Please, try again.'));
			}

		}
		
		return $this->redirect(array('action' => 'index'));
	}
}
