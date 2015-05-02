<?php

App::uses('AppController', 'Controller');

class OpenUnivercitiesController extends AppController {

	public $uses = array('Course');

    public function home(){

		/* ongoing/upcomming Courses/Lessons logic depend on(active,start_date,end_date,publish) activity*/

		$this->Course->recursive = -1;
		$ongoingCourses = $this->Course->find('all',array('conditions'=>array(
			'AND'=>array(
				'Course.show_catalog'=>1,
				'Course.publish'=>1,
				/*'Course.active'=>1,*/
				'Course.status'=>'ongoing'
				))));

		$this->Course->recursive = -1;
		$upcommingCourses = $this->Course->find('all',array('conditions'=>array(
			'AND'=>array(
				'Course.show_catalog'=>1,
				'Course.publish'=>1,
				/*'Course.active'=>1,*/
				'Course.status'=>'upcomming'
				))));


		$this->set(compact('ongoingCourses','upcommingCourses'));

		#var_dump($ongoingCourses,$upcommingCourses);

    }

    public function contactus(){
$this->layout = 'oneColumn';

    }

    public function aboutus(){
$this->layout = 'oneColumn';

    }

    public function dashboard(){


    }
} 