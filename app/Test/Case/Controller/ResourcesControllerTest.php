<?php
App::uses('ResourcesController', 'Controller');

/**
 * ResourcesController Test Case
 *
 */
class ResourcesControllerTest extends ControllerTestCase {

/**
 * Fixtures
 *
 * @var array
 */
	public $fixtures = array(
		'app.resource',
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
		'app.content',
		'app.content_user',
		'app.period',
		'app.lesson_user'
	);

/**
 * testIndex method
 *
 * @return void
 */
	public function testIndex() {
		$this->markTestIncomplete('testIndex not implemented.');
	}

/**
 * testView method
 *
 * @return void
 */
	public function testView() {
		$this->markTestIncomplete('testView not implemented.');
	}

/**
 * testAdd method
 *
 * @return void
 */
	public function testAdd() {
		$this->markTestIncomplete('testAdd not implemented.');
	}

/**
 * testEdit method
 *
 * @return void
 */
	public function testEdit() {
		$this->markTestIncomplete('testEdit not implemented.');
	}

/**
 * testDelete method
 *
 * @return void
 */
	public function testDelete() {
		$this->markTestIncomplete('testDelete not implemented.');
	}

}
