<?php
/**
 * ExamFixture
 *
 */
class ExamFixture extends CakeTestFixture {

/**
 * Fields
 *
 * @var array
 */
	public $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'length' => 8, 'key' => 'primary'),
		'content_id' => array('type' => 'integer', 'null' => false, 'default' => '0', 'length' => 8),
		'lesson_id' => array('type' => 'integer', 'null' => false, 'default' => '0', 'length' => 8, 'key' => 'index'),
		'name' => array('type' => 'string', 'null' => false, 'collate' => 'utf8_general_ci', 'charset' => 'utf8'),
		'duration_in_minute' => array('type' => 'integer', 'null' => true, 'default' => '0', 'length' => 8),
		'test_repetitions' => array('type' => 'integer', 'null' => true, 'default' => '1', 'length' => 8),
		'maintain_history' => array('type' => 'boolean', 'null' => true, 'default' => '0'),
		'mastery_score' => array('type' => 'integer', 'null' => false, 'default' => '0', 'length' => 4),
		'active' => array('type' => 'boolean', 'null' => false, 'default' => '1'),
		'publish' => array('type' => 'boolean', 'null' => true, 'default' => '1'),
		'show_question_one_by_one' => array('type' => 'boolean', 'null' => true, 'default' => '0'),
		'move_only_forward' => array('type' => 'boolean', 'null' => true, 'default' => '0'),
		'submit_action' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_general_ci', 'charset' => 'utf8'),
		'shuffle_answer' => array('type' => 'boolean', 'null' => true, 'default' => '0'),
		'shuffle_question' => array('type' => 'boolean', 'null' => true, 'default' => '0'),
		'display_ordered_list' => array('type' => 'boolean', 'null' => true, 'default' => '0'),
		'test_can_be_paused' => array('type' => 'boolean', 'null' => true, 'default' => '0'),
		'display_weights_during_test' => array('type' => 'boolean', 'null' => true, 'default' => '0'),
		'force_student_to_answer_all_question' => array('type' => 'boolean', 'null' => true, 'default' => '0'),
		'retain_best_score' => array('type' => 'boolean', 'null' => true, 'default' => '0'),
		'description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_general_ci', 'charset' => 'utf8'),
		'keep_best' => array('type' => 'boolean', 'null' => true, 'default' => '0'),
		'options' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_general_ci', 'charset' => 'utf8'),
		'created_by' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 128, 'collate' => 'utf8_general_ci', 'charset' => 'utf8'),
		'modified_by' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 128, 'collate' => 'utf8_general_ci', 'charset' => 'utf8'),
		'created' => array('type' => 'datetime', 'null' => true, 'default' => null),
		'modified' => array('type' => 'datetime', 'null' => true, 'default' => null),
		'indexes' => array(
			'PRIMARY' => array('column' => 'id', 'unique' => 1),
			'lessons_ID' => array('column' => 'lesson_id', 'unique' => 0)
		),
		'tableParameters' => array('charset' => 'utf8', 'collate' => 'utf8_general_ci', 'engine' => 'InnoDB')
	);

/**
 * Records
 *
 * @var array
 */
	public $records = array(
		array(
			'id' => 1,
			'content_id' => 1,
			'lesson_id' => 1,
			'name' => 'Lorem ipsum dolor sit amet',
			'duration_in_minute' => 1,
			'test_repetitions' => 1,
			'maintain_history' => 1,
			'mastery_score' => 1,
			'active' => 1,
			'publish' => 1,
			'show_question_one_by_one' => 1,
			'move_only_forward' => 1,
			'submit_action' => 'Lorem ipsum dolor sit amet, aliquet feugiat. Convallis morbi fringilla gravida, phasellus feugiat dapibus velit nunc, pulvinar eget sollicitudin venenatis cum nullam, vivamus ut a sed, mollitia lectus. Nulla vestibulum massa neque ut et, id hendrerit sit, feugiat in taciti enim proin nibh, tempor dignissim, rhoncus duis vestibulum nunc mattis convallis.',
			'shuffle_answer' => 1,
			'shuffle_question' => 1,
			'display_ordered_list' => 1,
			'test_can_be_paused' => 1,
			'display_weights_during_test' => 1,
			'force_student_to_answer_all_question' => 1,
			'retain_best_score' => 1,
			'description' => 'Lorem ipsum dolor sit amet, aliquet feugiat. Convallis morbi fringilla gravida, phasellus feugiat dapibus velit nunc, pulvinar eget sollicitudin venenatis cum nullam, vivamus ut a sed, mollitia lectus. Nulla vestibulum massa neque ut et, id hendrerit sit, feugiat in taciti enim proin nibh, tempor dignissim, rhoncus duis vestibulum nunc mattis convallis.',
			'keep_best' => 1,
			'options' => 'Lorem ipsum dolor sit amet, aliquet feugiat. Convallis morbi fringilla gravida, phasellus feugiat dapibus velit nunc, pulvinar eget sollicitudin venenatis cum nullam, vivamus ut a sed, mollitia lectus. Nulla vestibulum massa neque ut et, id hendrerit sit, feugiat in taciti enim proin nibh, tempor dignissim, rhoncus duis vestibulum nunc mattis convallis.',
			'created_by' => 'Lorem ipsum dolor sit amet',
			'modified_by' => 'Lorem ipsum dolor sit amet',
			'created' => '2015-01-28 11:15:00',
			'modified' => '2015-01-28 11:15:00'
		),
	);

}
