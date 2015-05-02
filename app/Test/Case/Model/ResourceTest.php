<?php
App::uses('Resource', 'Model');

/**
 * Resource Test Case
 *
 */
class ResourceTest extends CakeTestCase {

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
 * setUp method
 *
 * @return void
 */
	public function setUp() {
		parent::setUp();
		$this->Resource = ClassRegistry::init('Resource');
	}

/**
 * tearDown method
 *
 * @return void
 */
	public function tearDown() {
		unset($this->Resource);

		parent::tearDown();
	}

}
