<?php

App::uses('AppController', 'Controller');

/**
 * Courses Controller
 *
 * @property Course $Course
 * @property PaginatorComponent $Paginator
 */
class CoursesController extends AppController
{

    /**
     * Components
     *
     * @var array
     */
    public $components = array('Paginator', 'RequestHandler');
    public $paginate = array(
        'limit' => 30
    );

    public function beforeFilter()
    {
//        if ($this->RequestHandler->accepts('html')) {
//
//        }
        parent::beforeFilter();

    }

    /**
     * index method
     *
     * @return void
     */
    public function index()
    {
        $this->Course->recursive = 0;
        $courses = $this->Paginator->paginate();

        $this->loadModel('CourseUser');
        foreach ($courses as $key => $course) {

            $users = $this->CourseUser->find('count', array('conditions' => (array('AND' => array('CourseUser.course_id' => $course['Course']['id'], 'CourseUser.active' => 1)))));
            $courses[$key]['Course']['participation'] = $users;
        }
        $this->set('courses', $courses);

    }

    /**
     * view method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function view($id = null)
    {
        if (!$this->Course->exists($id)) {
            throw new NotFoundException(__('Invalid course'));
        }
        $options = array('conditions' => array('Course.' . $this->Course->primaryKey => $id));
        $this->set('course', $this->Course->find('first', $options));

    }

    /**
     * catalog method
     *
     * @return void
     */
    public function catalog()
    {
        $this->Paginator->settings = array('limit' => 3);
        $this->Course->recursive = 0;
        $courses = $this->Paginator->paginate();

        $this->set('courses', $courses);

        $this->loadModel('Announcement');
        $announcement = $this->Announcement->find('all', array('limit' => 2));
        $this->set('announcement', $announcement);

    }

    /**
     * mycourses method
     *
     * @return void
     */
    public function mycourses()
    {
        $this->loadModel('CourseUser');
        $courses = $this->CourseUser->find('all', array('conditions' => array('CourseUser.user_id ='=>$this->UserAuth->getUserId())));
        $courseids = Set::extract('/Course/id',$courses);


        $this->Paginator->settings = array('limit' => 3);
        $this->Course->recursive = 0;
        $courses = $this->Paginator->paginate(array('conditions'=>array('Course.course_id'=>$courseids)));

        $this->set('courses', $courses);

        $this->loadModel('Announcement');
        $announcement = $this->Announcement->find('all', array('limit' => 2));
        $this->set('announcement', $announcement);

        debug($courses);

    }

    public function running_course()
    {
        $this->layout = 'default';

        $this->Paginator->settings = array('limit' => 3, 'conditions' => array('Course.status' => 'ongoing'));
        $this->Course->recursive = 0;
        $courses = $this->Paginator->paginate();

        $this->set('courses', $courses);

        $this->set('courses', $courses);

        $this->loadModel('Announcement');
        $announcement = $this->Announcement->find('all', array('limit' => 2));
//        var_dump($announcement);die();
        $this->set('announcement', $announcement);

    }

    public function upcoming_course()
    {
        $this->layout = 'default';

        $this->Paginator->settings = array('limit' => 3, 'conditions' => array('Course.status' => 'upcomming'));
        $this->Course->recursive = 0;
        $courses = $this->Paginator->paginate();

        $this->set('courses', $courses);

        $this->set('courses', $courses);

        $this->loadModel('Announcement');
        $announcement = $this->Announcement->find('all', array('limit' => 2));
//        var_dump($announcement);die();
        $this->set('announcement', $announcement);

    }

    public function past_course()
    {
        $this->layout = 'default';

        $this->Paginator->settings = array('limit' => 3, 'conditions' => array('Course.status' => 'past'));
        $this->Course->recursive = 0;
        $courses = $this->Paginator->paginate();

        $this->set('courses', $courses);

        $this->set('courses', $courses);

        $this->loadModel('Announcement');
        $announcement = $this->Announcement->find('all', array('limit' => 2));
//        var_dump($announcement);die();
        $this->set('announcement', $announcement);

    }

    public function chosen()
    {
//        $this->set('random_courses', $this->Course->find('all', array(
//            'conditions' => array('Course.active' => '1'),
//            'order' => 'rand()',
//            'limit' => 2,
//        )));
        $this->Course->recursive = 0;
        $courses = $this->Paginator->paginate();

        $this->set('courses', $courses);

    }

    public function detail($id = null)
    {

        $this->layout = 'default';
        
        if (!$this->Course->exists($id)) {
            throw new NotFoundException(__('Invalid course'));
        }

        $this->loadModel('CourseUser');
        $currentUser = $this->UserAuth->getUser();
        if (isset($currentUser) && $currentUser) {
            $condition = array('conditions' => array('AND' => array('CourseUser.course_id' => $id, 'CourseUser.user_id' => $currentUser['User']['id'])));
            $userCourse = $this->CourseUser->find('first', $condition);
            $this->set('status', $userCourse);
        }

        $options = array('conditions' => array('Course.' . $this->Course->primaryKey => $id));

        $courseDetail = $this->Course->find('first', $options);

        $createdBy = $courseDetail['Course']['created_by'];

        $professor = null;
        if (isset($createdBy)) {
            $professor = $this->Course->User->find('first', array('conditions' => array('User.username' => $createdBy)));

        }
        $this->set('course', $courseDetail);
        $this->set('professor', $professor);


    }

    public function course_info($id = null)
    {
        if (!$this->Course->exists($id)) {
            throw new NotFoundException(__('Invalid course'));
        }
        $options = array('conditions' => array('Course.' . $this->Course->primaryKey => $id));
        $this->set('course', $this->Course->find('first', $options));

    }

    /**
     * add method
     *
     * @return void
     */
    public function add()
    {
        if ($this->request->is('post')) {
            /* Date formate functions start */

            function changeDateFormate($date)
            {
                $pieces = explode("/", $date);
                $nDate = $pieces[2] . "-" . $pieces[0] . "-" . $pieces[1];
                return $nDate;

            }

            /* Date formate functions end */
//            $this->request->data['Course']['start_date'] = changeDateFormate($this->request->data['Course']['start_date']);
//            $this->request->data['Course']['end_date'] = changeDateFormate($this->request->data['Course']['end_date']);


            /* Image upload START */
           /* $image = $this->request->data['Course']['image'];
            $name = explode('.', $image['name']);
            $type = end($name);
            $imagePath = 'files/photos/' . String::uuid() . '.' . $type;
            $tmpFile = $image['tmp_name'];

            if ($image['error']) {
                $this->Session->setFlash('Invalid image type or empty!');
                return $this->redirect(array('action' => 'add'));
            } else {
                if (!move_uploaded_file($tmpFile, $imagePath)) {
                    $this->Session->setFlash('Image upload failed! Invalid image type or size!');
                    return $this->redirect(array('action' => 'add'));
                }
            }
            $this->request->data['Course']['image'] = $imagePath;*/
            /* Image upload END */


            $this->Course->create();
            if ($this->Course->save($this->request->data)) {
                $this->Session->setFlash(__('The course has been saved.'));
                return $this->redirect(array('action' => 'edit'));
            } else {
                $this->Session->setFlash(__('The course could not be saved. Please, try again.'));
            }
        }
        $categories = $this->Course->Category->find('list');
        $lessons = $this->Course->Lesson->find('list');
        $users = $this->Course->User->find('list');
        $usrgroups = $this->Course->Usrgroup->find('list');
        $this->set(compact('categories', 'lessons', 'users', 'usrgroups'));

    }

    /**
     * edit method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function edit($id = null)
    {


        if (!$this->Course->exists($id)) {
            throw new NotFoundException(__('Invalid course'));
        }
        if ($this->request->is(array('post', 'put'))) {

            /* Date formate functions start */

            function changeDateFormate($date)
            {
                $pieces = explode("/", $date);
                $nDate = $pieces[2] . "-" . $pieces[0] . "-" . $pieces[1];
                return $nDate;

            }

            /* Date formate functions end */
//            $this->request->data['Course']['start_date'] = changeDateFormate($this->request->data['Course']['start_date']);
//            $this->request->data['Course']['end_date'] = changeDateFormate($this->request->data['Course']['end_date']);

            /* Image upload START */
           /* $image = $this->request->data['Course']['image'];

            if ($image['size']) {

                $name = explode('.', $image['name']);
                $type = end($name);
                $imagePath = 'files/photos/' . String::uuid() . '.' . $type;
                $tmpFile = $image['tmp_name'];

                if (move_uploaded_file($tmpFile, $imagePath)) {
                    $this->request->data['Course']['image'] = $imagePath;
                } else {
                    $this->Session->setFlash('Image upload failed! Invalid image type or size!');
                    return $this->redirect(array('action' => 'add'));
                }
            } else {
                unset($this->request->data['Course']['image']);
            }*/

            /* Image upload END */


            if ($this->Course->save($this->request->data)) {
                $this->Session->setFlash(__('The course has been saved.'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The course could not be saved. Please, try again.'));
            }
        } else {
            $options = array('conditions' => array('Course.' . $this->Course->primaryKey => $id));
            $this->request->data = $this->Course->find('first', $options);
        }

        $categories = $this->Course->Category->find('list');
        $lessons = $this->Course->Lesson->find('all');
        $this->loadModel('CourseUser');
        $course_users = $this->CourseUser->find('all');
        $users = $this->Course->User->find('all');

//        $_sql = "SELECT  `CourseUser`.id,
//                          `CourseUser`.user_id,
//                          `CourseUser`.course_id,
//                          `CourseUser`.completed,
//                          `CourseUser`.created,
//                          `CourseUser`.score,
//                          `User`.id,
//                          `User`.first_name,
//                          `User`.last_name,
//                          `User`.email,
//                          `User`.status,
//                          `UserGroup`.alias_name
//                  FROM `course_users` AS CourseUser
//                  LEFT JOIN `users` AS User ON CourseUser.user_id = User.id
//                  LEFT JOIN `user_groups` As `UserGroup` ON UserGroup.id = User.user_group_id
//                  WHERE CourseUser.course_id = $id";
        $_sql = "SELECT  `CourseUser`.id,
                          `CourseUser`.user_id,
                          `CourseUser`.course_id,
                          `CourseUser`.completed,
                          `CourseUser`.created,
                          `CourseUser`.score,
                          `User`.id,
                          `User`.first_name,
                          `User`.last_name,
                          `User`.email,
                          `User`.status,
                          `UserGroup`.alias_name
                  FROM `users` AS User
                  LEFT JOIN `course_users` AS CourseUser ON CourseUser.user_id = User.id
                  LEFT JOIN `user_groups` As `UserGroup` ON UserGroup.id = User.user_group_id";
        $users = $this->Course->query($_sql);
//        debug($users);

        $usrgroups = $this->Course->Usrgroup->find('list');
        $this->set(compact('categories', 'lessons', 'users', 'usrgroups', 'id'));

        $this->loadModel('UserGroup');
        $user_types= $this->UserGroup->find('list');
        $this->set(compact('user_types'));
        $this->loadModel('User');
        $__users= $this->UserGroup->find('list');
        $this->set(compact('__users'));
//        debug($user_types);

//        var_dump($lessons[13] ["Category"]);
       // var_dump($course_users);

    }

    public function assignCourse($courseid, $lessonid)
    {

        if ($this->request->is('post')) {
            $this->request->data['CourseLesson']['course_id'] = $courseid;
            $this->request->data['CourseLesson']['lesson_id'] = $lessonid;

            $this->loadModel('CourseLesson');
            $this->CourseLesson->create();
            if ($this->CourseLesson->save($this->request->data)) {

                $this->Session->setFlash(__('The lesson has been saved.'));
                return $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The lesson could not be saved. Please, try again.'));
            }
        }
    }

    /**
     * delete method
     *
     * @throws NotFoundException
     * @param string $id
     * @return void
     */
    public function delete($id = null)
    {
        $this->Course->id = $id;
        if (!$this->Course->exists()) {
            throw new NotFoundException(__('Invalid course'));
        }
        //$this->request->allowMethod('post', 'delete');

        if ($this->request->isPost()) {

            if ($this->Course->delete()) {
                $this->Session->setFlash(__('The course has been deleted.'));
            } else {
                $this->Session->setFlash(__('The course could not be deleted. Please, try again.'));
            }
        }

        return $this->redirect(array('action' => 'index'));

    }

    public function get_course_user_status($courseId = null)
    {
        $this->loadModel('CourseUser');
        // Checked User is loged in
        $UserAuth = $this->Session->read('UserAuth');
        if (empty($UserAuth)) {
            $userId = 0;
        } else {
            $userId = $this->Session->read('UserAuth.User.id');
        }
        $courseUser = $this->CourseUser->find('first', array('conditions' => array('AND' => array('CourseUser.course_id' => $courseId, 'CourseUser.user_id' => $userId))));

        if (!empty($this->request->params['requested'])) {
            return $courseUser;
        }
        $this->set(compact('courseUser'));

    }

    public function join_course($courseId = null)
    {
        $this->loadModel('CourseUser');
        // Checked User is loged in
        $UserAuth = $this->Session->read('UserAuth');
        if (empty($UserAuth)) {
            $this->Session->write('SelectedCourse.id', $courseId);
            return $this->redirect('login');
        }
        $userId = $this->Session->read('UserAuth.User.id');
        $courseUser = $this->CourseUser->find('first', array('conditions' => array('AND' => array('CourseUser.course_id' => $courseId, 'CourseUser.user_id' => $userId))));
        $result = '';
        if (empty($courseUser)) {
            $result = $this->add_to_course_users($courseId, $userId);
        }

        if ($result == 'yes') {
            $courseUser = $this->CourseUser->find('first', array('conditions' => array('AND' => array('CourseUser.course_id' => $courseId, 'CourseUser.user_id' => $userId))));
            if ($courseUser['CourseUser']['active']) {
                $this->Session->setFlash(__('The course has been added in your courese list.'));
            } else {
                $this->Session->setFlash(__('The course has been disabled from your courese list.'));
            }

            $this->loadModel('Cart');
            $this->Cart->add_to_cart($courseId, $userId);
        } else {
            $this->Session->setFlash(__('This course already exist in your courese list.'));
        }
        return $this->redirect(array('action' => 'detail', $courseId));

    }

    public function view_user_cart()
    {
        $this->loadModel('Cart');
        // Checked User is loged in
        $UserAuth = $this->Session->read('UserAuth');
        if (empty($UserAuth)) {
            return $this->redirect('login');
        }
        $userId = $this->Session->read('UserAuth.User.id');

        $this->Cart->recursive = 1;
        $this->Paginator->settings['conditions'][]['Cart.user_id'] = $userId;
        $carts = $this->Paginator->paginate('Cart');
//        debug($carts);
        $this->set(compact('carts'));

    }

    public function count_cart_item()
    {
        $this->loadModel('Cart');
        // Checked User is loged in
        $UserAuth = $this->Session->read('UserAuth');
        $return = 0;
        if (!empty($UserAuth)) {
            $userId = $this->Session->read('UserAuth.User.id');
            $total = $this->Cart->find('count');

            $return = $total;
        }
        if (!empty($this->request->params['requested'])) {
            return $return;
        }
        $this->set(compact('return'));

    }

    public function set_course_active_inactive($courseId = null, $onOf = 0)
    {
        $this->layout = 'ajax';

        if ($this->request->is('get')) {

            if ($this->Course->exists($courseId)) {

                $this->Course->id = $courseId;
                $result = $this->Course->saveField('active', $onOf);

                if ($result) {
                    if ($onOf) {
                        echo 'yes';
                    } else {
                        echo 'no';
                    }
                }
            }
        }

    }

    public function course_users($courseId = null)
    {

        $this->loadModel('User');
        $this->loadModel('CourseUser');

        $users = $this->User->find('all', array('order' => 'User.id desc'));

        foreach ($users as $key => $user) {
            $isInvolved = $this->CourseUser->find('count', array('conditions' => array('AND' => array('CourseUser.course_id' => $courseId, 'CourseUser.user_id' => $user['User']['id'], 'CourseUser.active' => 1))));
            if ($isInvolved) {
                $users[$key]['User']['involvedInLesson'] = 1;
            }
        }

        $this->set(compact('users', 'courseId'));

    }

    public function add_to_course_users($courseId = null, $userId = null)
    {

        $return = '';
        $this->loadModel('CourseUser');
        if ($courseId && $userId) {

            $result = $this->CourseUser->find('first', array('conditions' => array('AND' => array('CourseUser.course_id' => $courseId, 'CourseUser.user_id' => $userId))));
            if ($result) {
                $this->CourseUser->id = $result['CourseUser']['id'];
                $activeInactive = ($result['CourseUser']['active']) ? 0 : 1;
                $result = $this->CourseUser->saveField('active', $activeInactive);
                if ($result) {
                    $return = 'yes';
                } else {
                    $return = 'no';
                }
            } else {
                $result = $this->CourseUser->save(array('user_id' => $userId, 'course_id' => $courseId, 'active' => 1));
                if ($result) {
                    $return = 'yes';
                } else {
                    $return = 'no';
                }
            }
        }


        if ($this->request->is('ajax')) {
            $this->layout = 'ajax';
            echo $return;
        } else {
            return $return;
        }

    }

    public function course_lessons($courseId = null)
    {

        $this->loadModel('Lesson');
        $this->loadModel('CourseLesson');

        $this->Paginator->settings = array('order' => 'Lesson.id desc');
        $lessons = $this->Paginator->paginate('Lesson');

        foreach ($lessons as $key => $user) {
            $isInvolved = $this->CourseLesson->find('count', array('conditions' => array('AND' => array('CourseLesson.course_id' => $courseId, 'CourseLesson.lesson_id' => $user['Lesson']['id']))));
            if ($isInvolved) {
                $lessons[$key]['Lesson']['involvedInLesson'] = 1;
            }
        }

        $this->set(compact('lessons', 'courseId'));

    }

    public function add_to_course_lesson($courseId = null, $lessonId = null)
    {

        $this->layout = 'ajax';

        if ($this->request->is('get')) {

            $this->loadModel('CourseLesson');
            if ($courseId && $lessonId) {

                $result = $this->CourseLesson->find('first', array('conditions' => array('AND' => array('CourseLesson.course_id' => $courseId, 'CourseLesson.lesson_id' => $lessonId))));

                if ($result) {

                    $result = $this->CourseLesson->delete($result['CourseLesson']['id']);
                    if ($result) {
                        echo 'yes';
                    } else {
                        echo 'no';
                    }
                } else {

                    $result = $this->CourseLesson->save(array('lesson_id' => $lessonId, 'course_id' => $courseId));
                    if ($result) {
                        echo 'yes';
                    } else {
                        echo 'no';
                    }
                }
            }
        }

    }

    public function announcement()
    {
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

        $this->loadModel('Announcement');
        $total_announcement = $this->Announcement->find('all',
            array('fields' => array('id','title'),
            )
        );
//  var_dump($total_question);
//  $this->loadModel('Content');
//  $total_contents = $this->Faq->find('count',array('conditions'=>array('Faq.id ='=>$lessonid)));
        //}
        echo json_encode(array(
                'title' => $total_announcement,

            )
        );

    }
    public function chosen_for_you($course_id)
    {
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

        $this->loadModel('Course');
        $chosen_for_you = $this->Course->find('all',
            array(
                'conditions'=>array('Course.id'=>$course_id),
                'recursive'=>0,
                'fields' => array('id','image','name'),
            )
        );
//  var_dump($total_question);
//  $this->loadModel('Content');
//  $total_contents = $this->Faq->find('count',array('conditions'=>array('Faq.id ='=>$lessonid)));
        //}
        echo json_encode(array(
                'chosen_for_you'=>$chosen_for_you



            )
        );

    }



public function course_duration($courseid){

    // var_dump($this->params['pass'][0]);
  //Configure::write('debug',0);
  //$this->layout = 'ajax';
            $this->autoRender = false;
  //if(isset($userid) && !empty($userid) && isset($lessonid) && !empty($lessonid)){
   //$progress = $this->Lesson->find('first', array('recursive'=>2,'conditions'=>array('Lesson.id ='=>$lessonid ,'User.id ='=>$userid) ));
//  $this->Lesson->unbindModel(
//   array('hasMany' => array('Content','Condition','Period'), 'hasAndBelongsToMany' => array('Course'))
//  );
  // $course_session_duration = $this->Course->query('SELECT start_date, end_date, duration_per_week, duration_hour_per_week FROM courses WHERE id ='.$courseid);
  //debug($progress);
  // var_dump($course_session_duration);

            $this->loadModel('Course');
            $total_completed_contents = $this->Course->find('all',
                array('fields'=>array('start_date','end_date','duration_per_week','duration_hour_per_week'),
                    'conditions'=>array('Course.id ='=>$courseid),
                    'recursive'=>0,
                )
               );


 // var_dump($total_completed_contents);
  // $this->loadModel('Course');
  // $course_session_duration = $this->Content->find('count',array('conditions'=>array('Courses.id ='=>$courseid)));
  //}
          echo json_encode(array( 

            // 'course_duration'=>$total_completed_contents,
            // 'duration_per_week'=>$total_completed_contents[0]['Course'][$total_completed_contents],
            // 'duration_per_week'=>$total_completed_contents[0]['Course'][$duration_hour_per_week],
            // 'duration_per_week'=>$total_completed_contents[0]['Course'][$total_completed_contents]
            'start_date' => $total_completed_contents[0]['Course']['start_date'],
             'end_date' => $total_completed_contents[0]['Course']['end_date'],
             'duration_per_week'=> $total_completed_contents[0]['Course']['duration_per_week'],
             'duration_hour_per_week'=>$total_completed_contents[0]['Course']['duration_hour_per_week']
             )
          );
     }
}