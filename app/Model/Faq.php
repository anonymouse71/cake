<?php
App::uses('AppModel', 'Model');
/**
 * Faq Model
 *
 */
class Faq extends AppModel {

/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'id';
    public $actsAs = array('WhoDidIt');
/**
 * Validation rules
 *
 * @var array
 */
	public $validate = array(
//		'model_foreign_key' => array(
//			'numeric' => array(
//				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
//			),
//		),
	);
}
