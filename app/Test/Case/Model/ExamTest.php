<?php
App::uses('Exam', 'Model');

/**
 * Exam Test Case
 *
 */
class ExamTest extends CakeTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.exam',
		'app.content',
		'app.lesson',
		'app.category',
		'app.course',
		'app.course_lesson',
		'app.user',
		'app.user_group',
		'app.user_group_permission',
		'app.login_token',
		'app.course_user',
		'app.usrgroup',
		'app.user_type',
		'app.course_usrgroup',
		'app.usrgroup_lesson',
		'app.usrgroup_user',
		'app.condition',
		'app.period',
		'app.lesson_user',
		'app.content_user',
		'app.question',
		'app.exams_question'
	);

/**
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->Exam = ClassRegistry::init('Exam');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->Exam);

		parent::tearDown();
	}

}
