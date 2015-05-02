<?php
App::uses('AppController', 'Controller');
/**
 * Lessons Controller
 *
 * @property Lesson $Lesson
 * @property PaginatorComponent $Paginator
 */
class LessonsController extends AppController {

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
		$this->Lesson->recursive = 0;
		$this->set('lessons', $this->Paginator->paginate());
	}
    /**
     * catalog method
     *
     * @return void
     */
    public function catalog() {
        $this->Lesson->recursive = 0;
        $this->set('lessons', $this->Paginator->paginate());
    }
/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view1($id = null) {

		$this->layout = 'default';
		if (!$this->Lesson->exists($id)) {
			throw new NotFoundException(__('Invalid lesson'));
		}
		$options = array('conditions' => array('Lesson.' . $this->Lesson->primaryKey => $id));
		$this->set('lesson', $this->Lesson->find('first', $options));

		$this->loadModel('Content');
		$this->Content->recursive = -1;
		$category_tree = $this->Content->find('threaded',array('conditions'=>array('Content.lesson_id'=>$id)));


        $this->set('categories', $category_tree);

		if (isset($category_tree[0]['Content']['name'])) {
			$this->set('firstContent',array('Content'=>array('name'=>$category_tree[0]['Content']['name'], 'data'=>$category_tree[0]['Content']['data'])));
		}
	}

	public function detail($id = null) {

		$this->layout = 'default';
		if (!$this->Lesson->exists($id)) {
			throw new NotFoundException(__('Invalid lesson'));
		}
		$options = array('conditions' => array('Lesson.' . $this->Lesson->primaryKey => $id));
		$this->set('lesson', $this->Lesson->find('first', $options));

		$this->loadModel('Content');
		$this->Content->recursive = -1;
		$category_tree = $this->Content->find('threaded',array('conditions'=>array('Content.lesson_id'=>$id)));


        $this->set('categories', $category_tree);

		if (isset($category_tree[0]['Content']['name'])) {
			$this->set('firstContent',array('Content'=>array('name'=>$category_tree[0]['Content']['name'], 'data'=>$category_tree[0]['Content']['data'])));

			$this->loadModel('LessonUser');
			$UID = $this->UserAuth->getUserId();
			$LU = $this->LessonUser->find('first',array('conditions'=>array('AND'=>array('LessonUser.user_id'=>$UID,'LessonUser.lesson_id'=>$id))));
			if ($LU) {

				$firstContentID = $category_tree[0]['Content']['id'];
				$CID = $LU['LessonUser']['completed_content_ids'];

				if ($CID) {
					$CID = unserialize($CID);
					if (in_array($firstContentID, $CID)) {
						$this->set('completeStatus',1);
					}
				}

			}
		}

		/*For Update Progressbar*/
		$this->loadModel('LessonUser');
		$LU = $this->LessonUser->find('first',array('LessonUser.user_id'=>$this->UserAuth->getUserId()));
		$totalCompletedContent = array_key_exists('LessonUser',$LU) ?$LU['LessonUser']['total_completed_content']:0;
		$userId = array_key_exists('LessonUser',$LU) ?$LU['LessonUser']['user_id']:$this->UserAuth->getUserId();
		$lessonId = $id;
		$this->set(compact('userId','totalCompletedContent','lessonId'));
	}

public function preview($id = null) {

		$this->layout = 'default';
		if (!$this->Lesson->exists($id)) {
			throw new NotFoundException(__('Invalid lesson'));
		}
		$options = array('conditions' => array('Lesson.' . $this->Lesson->primaryKey => $id));
		$this->set('lesson', $this->Lesson->find('first', $options));

		$this->loadModel('Content');
		$this->Content->recursive = -1;
		$category_tree = $this->Content->find('threaded',array('conditions'=>array('Content.lesson_id'=>$id)));


        $this->set('categories', $category_tree);

		if (isset($category_tree[0]['Content']['name'])) {
			$this->set('firstContent',array('Content'=>array('name'=>$category_tree[0]['Content']['name'], 'data'=>$category_tree[0]['Content']['data'])));

			$this->loadModel('LessonUser');
			$UID = $this->UserAuth->getUserId();
			$LU = $this->LessonUser->find('first',array('conditions'=>array('AND'=>array('LessonUser.user_id'=>$UID,'LessonUser.lesson_id'=>$id))));
			if ($LU) {

				$firstContentID = $category_tree[0]['Content']['id'];
				$CID = $LU['LessonUser']['completed_content_ids'];

				if ($CID) {
					$CID = unserialize($CID);
					if (in_array($firstContentID, $CID)) {
						$this->set('completeStatus',1);
					}
				}

			}
		}

		/*For Update Progressbar*/
		$this->loadModel('LessonUser');
		$LU = $this->LessonUser->find('first',array('LessonUser.user_id'=>$this->UserAuth->getUserId()));
		$totalCompletedContent = array_key_exists('LessonUser',$LU) ?$LU['LessonUser']['total_completed_content']:0;
		$userId = array_key_exists('LessonUser',$LU) ?$LU['LessonUser']['user_id']:$this->UserAuth->getUserId();
		$lessonId = $id;
		$this->set(compact('userId','totalCompletedContent','lessonId'));
	}
    /*public function detail($id = null) {

        $this->layout = 'default';
        if (!$this->Lesson->exists($id)) {
            throw new NotFoundException(__('Invalid lesson'));
        }
        $options = array('conditions' => array('Lesson.' . $this->Lesson->primaryKey => $id));
        $this->set('lesson', $this->Lesson->find('first', $options));

        $this->loadModel('Content');
        $this->Content->recursive = -1;
        $category_tree = $this->Content->find('threaded',array('conditions'=>array('Content.lesson_id'=>$id)));

        debug($category_tree);die();

        $this->set('categories', $category_tree);

        if (isset($category_tree[0]['Content']['name'])) {
            $this->set('firstContent',array('Content'=>array('name'=>$category_tree[0]['Content']['name'], 'data'=>$category_tree[0]['Content']['data'])));
        }
    }*/

    public function view($id = null) {
        if (!$this->Lesson->exists($id)) {
			throw new NotFoundException(__('Invalid lesson'));
		}
		$options = array('conditions' => array('Lesson.' . $this->Lesson->primaryKey => $id));
		$this->set('lesson', $this->Lesson->find('first', $options));

		$this->loadModel('Content');
		$this->Content->recursive = -1;
		$category_tree = $this->Content->find('threaded',array('conditions'=>array('Content.lesson_id'=>$id)));
		$this->set('categories', $category_tree);
    }

/**
 * edit_lesson_info method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit_lesson_info($id = null) {
		if (!$this->Lesson->exists($id)) {
			throw new NotFoundException(__('Invalid lesson'));
		}
		if ($this->request->is(array('post', 'put'))) {

/*Image upload START*/
			$image = $this->request->data['Lesson']['image'];			

			if ($image['size']) {

				$name = explode('.', $image['name']);
				$type = end($name);
				$imagePath = 'files/photos/' . String::uuid() . '.' .$type;
				$tmpFile = $image['tmp_name'];

				if(move_uploaded_file($tmpFile, $imagePath)){
					$this->request->data['Lesson']['image'] = $imagePath;
					
				}else{
					$this->Session->setFlash('Image upload failed! Invalid image type or size!');
					return $this->redirect(array('action' => 'add'));
				}
			}else{
				unset($this->request->data['Lesson']['image']);
			}
			
/*Image upload END*/


			if ($this->Lesson->save($this->request->data)) {
				$this->Session->setFlash(__('The lesson has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The lesson could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Lesson.' . $this->Lesson->primaryKey => $id));
			$this->request->data = $this->Lesson->find('first', $options);
		}
		$categories = $this->Lesson->Category->find('list');
		$courses = $this->Lesson->Course->find('list');
		$users = $this->Lesson->User->find('list');
		$usrgroups = $this->Lesson->Usrgroup->find('list');

		/*$this->loadModel('Content');
		$contents = $this->Content->generateTreeList(
			array('Content.lesson_id'=>$id),
			null,
			null,
			'&nbsp;&nbsp;&nbsp;'
		);*/

		#$this->set(compact('categories', 'courses', 'users', 'usrgroups','id','contents'));
		$this->set(compact('categories', 'courses', 'users', 'usrgroups','id'));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {


/*Image upload START*/
			// $image = $this->request->data['Lesson']['image'];
			// $name = explode('.', $image['name']);
			// $type = end($name);
			// $imagePath = 'files/photos/' . String::uuid() . '.' .$type;
			// $tmpFile = $image['tmp_name'];

			// if ($image['error']) {
			// 	$this->Session->setFlash('Invalid image type or empty!');
			// 	return $this->redirect(array('action' => 'add'));
			// }else{
			// 	if(!move_uploaded_file($tmpFile, $imagePath)){
			// 		$this->Session->setFlash('Image upload failed! Invalid image type or size!');
			// 		return $this->redirect(array('action' => 'add'));
			// 	}
			// }
			// $this->request->data['Lesson']['image'] = $imagePath;
/*Image upload END*/		
			#var_dump($this->request->data);

			$this->Lesson->create();
			$this->Lesson->save($this->request->data);

			$this->request->data['CourseLesson']['lesson_id'] = $this->Lesson->getLastInsertId();

			$this->loadModel('CourseLesson');
			$this->CourseLesson->create();
			if ($this->CourseLesson->save($this->request->data)) {

/*Saving data into Forum and Blog [START]*/
				$this->loadModel('Forum');
				$this->loadModel('Blog');

				$lessonName = $this->request->data['Lesson']['name'];
				$lessonDescription = $this->request->data['Lesson']['description'];
				$lessonId = $this->Lesson->getLastInsertId();
				$lessonModel = 'Lesson';

				$fData = array('model_name'=>$lessonModel,'model_foreign_key'=>$lessonId,'title'=>$lessonName);
				$bData = array('model_name'=>$lessonModel,'model_foreign_key'=>$lessonId,'name'=>$lessonName,'description'=>$lessonDescription);

				$this->Forum->save($fData);
				$this->Blog->save($bData);
/*Saving data into Forum and Blog [END]*/

				$this->Session->setFlash(__('The lesson has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The lesson could not be saved. Please, try again.'));
			}
		}
		$categories = $this->Lesson->Category->find('list');
		$courses = $this->Lesson->Course->find('list');
		$users = $this->Lesson->User->find('list');
		$usrgroups = $this->Lesson->Usrgroup->find('list');
		$this->set(compact('categories', 'courses', 'users', 'usrgroups'));
	}
 
/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Lesson->exists($id)) {
			throw new NotFoundException(__('Invalid lesson'));
		}
		if ($this->request->is(array('post', 'put'))) {

/*Image upload START*/
			$image = $this->request->data['Lesson']['image'];			

			if ($image['size']) {

				$name = explode('.', $image['name']);
				$type = end($name);
				$imagePath = 'files/photos/' . String::uuid() . '.' .$type;
				$tmpFile = $image['tmp_name'];

				if(move_uploaded_file($tmpFile, $imagePath)){
					$this->request->data['Lesson']['image'] = $imagePath;
					
				}else{
					$this->Session->setFlash('Image upload failed! Invalid image type or size!');
					return $this->redirect(array('action' => 'add'));
				}
			}else{
				unset($this->request->data['Lesson']['image']);
			}
			
/*Image upload END*/


			if ($this->Lesson->save($this->request->data)) {
				$this->Session->setFlash(__('The lesson has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The lesson could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Lesson.' . $this->Lesson->primaryKey => $id));
			$this->request->data = $this->Lesson->find('first', $options);
		}
		$categories = $this->Lesson->Category->find('list');
		$courses = $this->Lesson->Course->find('list');
		$users = $this->Lesson->User->find('all');
		$usrgroups = $this->Lesson->Usrgroup->find('list');

		/*$this->loadModel('Content');
		$contents = $this->Content->generateTreeList(
			array('Content.lesson_id'=>$id),
			null,
			null,
			'&nbsp;&nbsp;&nbsp;'
		);*/

		#$this->set(compact('categories', 'courses', 'users', 'usrgroups','id','contents'));
		$this->set(compact('categories', 'courses', 'users', 'usrgroups','id'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Lesson->id = $id;
		if (!$this->Lesson->exists()) {
			throw new NotFoundException(__('Invalid lesson'));
		}
		//$this->request->allowMethod('post', 'delete');

		if ($this->request -> isPost()) {

			if ($this->Lesson->delete()) {
					$this->Session->setFlash(__('The lesson has been deleted.'));
			} else {
				$this->Session->setFlash(__('The lesson could not be deleted. Please, try again.'));
			}

		}
		
		return $this->redirect(array('action' => 'index'));
	}

	public function set_lesson_active_inactive($lessonId=null,$onOf=0){
		$this->layout = 'ajax';

		if ($this->request->is('get')) {

			if ($this->Lesson->exists($lessonId)) {

				$this->Lesson->id = $lessonId;
				$result = $this->Lesson->saveField('active',$onOf);

				if ($result) {
					if ($onOf) {
						echo 'yes';
					} else{
						echo 'no';
					}
				}
			}

		}
	}

	public function set_lesson_availability($__lessonId=null,$__onOf=0){

		$this->layout = 'ajax';

		if ($this->request->is('get')) {

			if ($this->Lesson->exists($__lessonId)) {

				$this->Lesson->id = $__lessonId;
				$__result = $this->Lesson->saveField('course_only',$__onOf);

				if ($__result) {
					if ($__onOf) {
						echo 'yes';
					} else{
						echo 'no';
					}
				}
			}

		}

	}

	public function lesson_users($lessonId=null) {

		$this->loadModel('User');
		$this->loadModel('LessonUser');

		$users=$this->User->find('all', array('order'=>'User.id desc'));

		foreach ($users as $key => $user) {
			$isInvolved = $this->LessonUser->find('count',array('conditions'=>array('AND'=>array('LessonUser.lesson_id'=>$lessonId,'LessonUser.user_id'=>$user['User']['id'],'LessonUser.active'=>1))));
			if ($isInvolved) {
				$users[$key]['User']['involvedInLesson'] = 1;
			}
		}

		$this->set(compact('users','lessonId'));

	}

	public function add_to_lesson_users($lessonId=null,$userId=null) {

		$this->layout = 'ajax';

		if ($this->request->is('get')) {

			$this->loadModel('LessonUser');
			
			if($lessonId && $userId){

				$result = $this->LessonUser->find('first',array('conditions'=>array('AND'=>array('LessonUser.lesson_id'=>$lessonId,'LessonUser.user_id'=>$userId))));

				if ($result) {
					$this->LessonUser->id = $result['LessonUser']['id'];

					$activeInactive = ($result['LessonUser']['active']) ? 0 : 1;

					$result = $this->LessonUser->saveField('active',$activeInactive);
					if ($result) {
						echo 'yes';
					}else{
						echo 'no';
					}

				}else{

					$result = $this->LessonUser->save(array('user_id'=>$userId,'lesson_id'=>$lessonId,'active'=>1));
					if ($result) {
						echo 'yes';
					}else{
						echo 'no';
					}

				}
			}

		}

	}


	public function get_content(){
		if ($this->request->is('post')) {
			$this->loadModel('Content');
			$contentID = $this->request->data['contentID'];
			if ($this->Content->exists($contentID)) {
				$content = $this->Content->findById($contentID);
				$this->set('firstContent',$content);
			} else{
				$this->set('firstContent',array('Content'=>array('name'=>'No title found!', 'data'=>'No contents')));
			}
		}
	}
/*
*
*/
	public function set_content_completed($lessonId=null,$contentId=null){
		$this->layout = 'ajax';
		$userId = $this->UserAuth->getUserId();
		$this->loadModel('LessonUser');
		$datas = $this->LessonUser->find('first',array('conditions'=>array('AND'=>array('LessonUser.user_id'=>$userId,'LessonUser.lesson_id'=>$lessonId))));
		$LessonUserId = $datas['LessonUser']['id'];
		$completedIds = $datas['LessonUser']['completed_content_ids'];

		$totalComCont = 0;

		if ($completedIds) {
			$dataArray = unserialize($completedIds);
			
			if (in_array($contentId, $dataArray)) {
				$totalComCont = count($dataArray);
			}else{
				$CIDS = unserialize($completedIds);
				$totalComCont = count($CIDS) + 1;
				$CIDS[] = $contentId;
				$CIDS = serialize($CIDS);
				$this->LessonUser->id = $LessonUserId;
				$this->LessonUser->save(array('total_completed_content'=>$totalComCont,'completed_content_ids'=>$CIDS));
			}
			
		}else{
			$CIDS = array($contentId);
			$totalComCont = 1;
			$CIDS = serialize($CIDS);
			$this->LessonUser->id = $LessonUserId;
			$this->LessonUser->save(array('total_completed_content'=>$totalComCont,'completed_content_ids'=>$CIDS));
		}
		
		echo $totalComCont;
	}



	public function check_content_status($lessonId=null,$contentId=null){
		$this->layout = 'ajax';
		$userId = $this->UserAuth->getUserId();
		$this->loadModel('LessonUser');
		$datas = $this->LessonUser->find('first',array('conditions'=>array('AND'=>array('LessonUser.user_id'=>$userId,'LessonUser.lesson_id'=>$lessonId))));
		
		$completedIds = $datas['LessonUser']['completed_content_ids'];

		if ($completedIds) {
			$completedIds = unserialize($completedIds);
			if (in_array($contentId, $completedIds)) {
				echo 'yes';
			}else{
				echo 'no';
			}
		}else{
			echo 'no';
		}
	}
    public function faq(){
        //Configure::write('debug',0);
        //$this->layout = 'ajax';
        $this->autoRender = false;
        //if(isset($userid) && !empty($userid) && isset($lessonid) && !empty($lessonid)){
        //$progress = $this->Lesson->find('first', array('recursive'=>2,'conditions'=>array('Lesson.id ='=>$lessonid ,'User.id ='=>$userid) ));
//  $this->Lesson->unbindModel(
//   array('hasMany' => array('Content','Condition','Period'), 'hasAndBelongsToMany' => array('Course'))
//  );
//  $total_completed_contents = $this->Lesson->query('SELECT total_completed_content FROM lesson_users AS LessonUser WHERE lesson_id ='.$lessonid .' AND user_id ='.$userid);
        //debug($progress);

        $this->loadModel('Faq');
        $total_question = $this->Faq->find('all',
            array('fields'=>array('question'),
            )
        );
//  var_dump($total_question);
//  $this->loadModel('Content');
//  $total_contents = $this->Faq->find('count',array('conditions'=>array('Faq.id ='=>$lessonid)));
        //}
        echo json_encode(array(
                'question'=>$total_question,

            )
        );

    }


	public function progress($userid, $lessonid){
		Configure::write('debug',0);
		//$this->layout = 'ajax';
		$this->autoRender = false;
		//if(isset($userid) && !empty($userid) && isset($lessonid) && !empty($lessonid)){
		//$progress = $this->Lesson->find('first', array('recursive'=>2,'conditions'=>array('Lesson.id ='=>$lessonid ,'User.id ='=>$userid) ));
//		$this->Lesson->unbindModel(
//			array('hasMany' => array('Content','Condition','Period'), 'hasAndBelongsToMany' => array('Course'))
//		);
//		$total_completed_contents = $this->Lesson->query('SELECT total_completed_content FROM lesson_users AS LessonUser WHERE lesson_id ='.$lessonid .' AND user_id ='.$userid);
		//debug($progress);

		$this->loadModel('LessonUser');
		$total_completed_contents = $this->LessonUser->find('all',
					 	array('fields'=>array('total_completed_content'),
							  'conditions'=>array('user_id ='=>$userid, 'lesson_id'=>$lessonid),
					)
				);
		$this->loadModel('Content');
		$total_contents = $this->Content->find('count',array('conditions'=>array('Content.lesson_id ='=>$lessonid)));
//		}
		echo json_encode(array(	'total_content'=>$total_contents,
				'content_completion'=>$total_completed_contents[0]['LessonUser']['total_completed_content'],
				'percentage'=>ceil(($total_completed_contents[0]['LessonUser']['total_completed_content']/$total_contents)*100).'%'
			)
		);

	}

	public function latest($total = 5){
		Configure::write('debug',0);
//		$this->layout = 'ajax';
		$this->autoRender = false;
		$this->loadModel('Faq');

		$latestFaqs = $this->Faq->find('all', array('conditions'=>array(),'limit'=>$total));

		echo json_encode($latestFaqs);

	}

//	public function faq(){
//		//Configure::write('debug',0);
//		//$this->layout = 'ajax';
//		$this->autoRender = false;
//		//if(isset($userid) && !empty($userid) && isset($lessonid) && !empty($lessonid)){
//		//$progress = $this->Lesson->find('first', array('recursive'=>2,'conditions'=>array('Lesson.id ='=>$lessonid ,'User.id ='=>$userid) ));
////		$this->Lesson->unbindModel(
////			array('hasMany' => array('Content','Condition','Period'), 'hasAndBelongsToMany' => array('Course'))
////		);
////		$total_completed_contents = $this->Lesson->query('SELECT total_completed_content FROM lesson_users AS LessonUser WHERE lesson_id ='.$lessonid .' AND user_id ='.$userid);
//		//debug($progress);
//
//		$this->loadModel('Faq');
//		$total_question = $this->Faq->find('all',
//					 	array('fields'=>array('question'),
//					)
//				);
////		var_dump($total_question);
////		$this->loadModel('Content');
////		$total_contents = $this->Faq->find('count',array('conditions'=>array('Faq.id ='=>$lessonid)));
//		//}
//		echo json_encode(array(
//				'question'=>$total_question,
//
//			)
//		);
//
//	}
	public function lessonmaterials($lessonid){

		$this->autoRender = false;
		$this->loadModel('Content');

		$content_name = $this->Content->find('all',array('conditions'=>array('Content.lesson_id ='=>$lessonid),
				'recursive' => 0,
			'fields'=>array('name')
			)
		);

//		var_dump($content_name);

		echo json_encode(array(
			'contents'=>$content_name
		));

	}


	public function announcement(){
//		Configure::write('debug',0);
//		$this->layout = 'ajax';

		$this->autoRender = false;
		$this->loadModel('Announcement');

		$announcements = $this->Announcement->find('all',array(

				'fields'=>array('title','id'))

		);

//		var_dump($content_name);

		echo json_encode(array(
			'contents'=>$announcements
		));

	}



	public function dashboard(){
		//Configure::write('debug',0);
		//$this->layout = 'ajax';
		$this->autoRender = false;
		//if(isset($userid) && !empty($userid) && isset($lessonid) && !empty($lessonid)){
		//$progress = $this->Lesson->find('first', array('recursive'=>2,'conditions'=>array('Lesson.id ='=>$lessonid ,'User.id ='=>$userid) ));
//		$this->Lesson->unbindModel(
//			array('hasMany' => array('Content','Condition','Period'), 'hasAndBelongsToMany' => array('Course'))
//		);
//		$total_completed_contents = $this->Lesson->query('SELECT total_completed_content FROM lesson_users AS LessonUser WHERE lesson_id ='.$lessonid .' AND user_id ='.$userid);
		//debug($progress);

		//$this->loadModel('LessonUser');
//		$total_completed_contents = $this->LessonUser->find('all',
//					 	array('fields'=>array('total_completed_content'),
//							  'conditions'=>array('user_id ='=>$userid, 'lesson_id'=>$lessonid),
//					)
//				);
		$this->loadModel('Course');
		$total_courses = $this->Course->find('count');

		$this->loadModel('Blog');
		$total_blogs = $this->Blog->find('count');

//		$date = date('Y-m-d');
//		$prev_date = date('Y-m-d', strtotime($date .' -90 day'));

		$recent_blogs = $this->Blog->find('count',array(
			'conditions'=>array("Blog.created >" => date('Y-m-d', strtotime("-1 weeks"))
		)));
//var_dump($recent_blogs);
		$this->loadModel('Forum');
		$total_forums = $this->Forum->find('count');
		$recent_forums = $this->Forum->find('count'
			,array ('conditions'=>array("Forum.created >" => date('Y-m-d', strtotime("-1 weeks"))
		)));


		$this->loadModel('Forum');
		$total_draft_post = $this->Forum->find('count',
			array('conditions'=>array('Forum.status'=>0))
			);


		echo json_encode(array(
				'total_course'=>$total_courses,
				'total_blog'=>$total_blogs,
				'total_forum'=>$total_forums,

				'total_latest_blogs'=>$recent_blogs,
				'total_latest_forums'=>$recent_forums,
				'total_draft_post'=>$total_draft_post,

			)
		);

	}

	public function myTotalCourses($userid){
		//Configure::write('debug',0);
		//$this->layout = 'ajax';
		$this->autoRender = false;
		//if(isset($userid) && !empty($userid) && isset($lessonid) && !empty($lessonid)){
		//$progress = $this->Lesson->find('first', array('recursive'=>2,'conditions'=>array('Lesson.id ='=>$lessonid ,'User.id ='=>$userid) ));
//		$this->Lesson->unbindModel(
//			array('hasMany' => array('Content','Condition','Period'), 'hasAndBelongsToMany' => array('Course'))
//		);
//		$total_completed_contents = $this->Lesson->query('SELECT total_completed_content FROM lesson_users AS LessonUser WHERE lesson_id ='.$lessonid .' AND user_id ='.$userid);
		//debug($progress);

		$this->loadModel('CourseUser');
		$total_my_courses = $this->CourseUser->find('count',
					 	array('conditions'=>array('user_id ='=>$userid,),
					)
				);


		$this->loadModel('Message');
		$total_received_messages = $this->Message->find('count',
			array('conditions'=>array('Message.receiver'=>$userid))

		);
		$total_sent_messages = $this->Message->find('count',
			array('conditions'=>array('Message.sender'=>$userid))

		);


		echo json_encode(array(

				'my_courses'=>$total_my_courses,
				'total_received_message'=>$total_received_messages,
				'total_sent_message'=>$total_sent_messages,


			)
		);

	}

	public function myProjects($lessonid){
		//Configure::write('debug',0);
		//$this->layout = 'ajax';
		$this->autoRender = false;

		$date = date('Y-m-d');
		$today = strtotime($date);
//		var_dump($today);
//		$prev_date = date('Y-m-d', strtotime($date .' -90 day'));

		$this->loadModel('Project');
		$my_projects = $this->Project->find('all',
			array('fields'=>array('id','title','deadline'),
				'conditions'=>array('Project.model_foreign_key'=>$lessonid,'Project.deadline >='=>$date),
//				'recursive'=>0,

			));



		echo json_encode(array(

				'my_projects'=>$my_projects,



			)
		);

	}

	public function adminDashboardOption(){

		$this->autoRender= false;

		$this->loadModel('User');
		$total_users = $this->User->find('count');

		$this->loadModel('Lesson');
		$total_lessons = $this->Lesson->find('count');

		$this->loadModel('Course');
		$total_courses = $this->Course->find('count');

		$this->loadModel('Notification');
		$total_notifications = $this->Notification->find('count');

		$this->loadModel('Message');
		$total_messages = $this->Message->find('count');

		$this->loadModel('Category');
		$total_categories = $this->Category->find('count');

		$this->loadModel('UserGroup');
		$total_user_types = $this->UserGroup->find('count');

		$this->loadModel('Usrgroup');
		$total_user_groups = $this->Usrgroup->find('count');

		$this->loadModel('Forum');
		$total_forums = $this->Forum->find('count');

		$this->loadModel('Faq');
		$total_faqs = $this->Faq->find('count');

		$this->loadModel('Blog');
		$total_blogs = $this->Blog->find('count');


		echo json_encode(array(
			'total_users'=>$total_users,
			'total_lessons'=>$total_lessons,
			'total_courses'=>$total_courses,
			'total_notifications'=>$total_notifications,
			'total_messages'=>$total_messages,
			'total_categories'=>$total_categories,
			'total_user_types'=>$total_user_types,
			'total_user_groups'=>$total_user_groups,
			'total_forums'=>$total_forums,
			'total_faqs'=>$total_faqs,
			'total_blogs'=>$total_blogs



			)
		);

	}

    public function lesson_home($id = null) {
        if (!$this->Lesson->exists($id)) {
            throw new NotFoundException(__('Invalid lesson'));
        }
        $options = array('conditions' => array('Lesson.' . $this->Lesson->primaryKey => $id));
        $this->set('lesson', $this->Lesson->find('first', $options));
    }


}
