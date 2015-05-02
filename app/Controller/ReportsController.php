<?php
/**
* 
*/
class ReportsController extends AppController{

	public $uses = array('Course','Lesson','User');
	
	public function index(){
		
	}

	public function user(){
		$this->User->displayField = 'first_name';
		$users = $this->User->find('list');
		$this->set(compact('users'));
	}

	public function lesson(){
		$lessons = $this->Lesson->find('list');
		$this->set(compact('lessons'));
	}

	public function course(){
		$courses = $this->Course->find('list');
		$this->set(compact('courses'));
	}

}

?>