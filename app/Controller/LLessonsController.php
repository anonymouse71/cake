<?php
/**
 * Created by PhpStorm.
 * User: Acer
 * Date: 1/19/2015
 * Time: 4:05 PM
 */

class LLessonsController {
    public function progress($userid, $lessonid){
        //Configure::write('debug',0);
        //$this->layout = 'ajax';
        $this->autoRender = false;
        //if(isset($userid) && !empty($userid) && isset($lessonid) && !empty($lessonid)){
        //$progress = $this->Lesson->find('first', array('recursive'=>2,'conditions'=>array('Lesson.id ='=>$lessonid ,'User.id ='=>$userid) ));
//  $this->Lesson->unbindModel(
//   array('hasMany' => array('Content','Condition','Period'), 'hasAndBelongsToMany' => array('Course'))
//  );
        $total_completed_contents = $this->Lesson->query('SELECT total_completed_content FROM lesson_users AS LessonUser WHERE lesson_id ='.$lessonid .' AND user_id ='.$userid);
        //debug($progress);

        //$this->loadModel('LessonUser');
//  $total_completed_contents = $this->LessonUser->find('all',
//       array('fields'=>array('total_completed_content'),
//         'conditions'=>array('user_id ='=>$userid, 'lesson_id'=>$lessonid),
//     )
//    );
        $this->loadModel('Content');
        $total_contents = $this->Content->find('count',array('conditions'=>array('Content.lesson_id ='=>$lessonid)));
        //}
        echo json_encode(array( 'total_content'=>$total_contents,
                'content_completion'=>$total_completed_contents[0]['LessonUser']['total_completed_content'],
                'percentage'=>ceil(($total_completed_contents[0]['LessonUser']['total_completed_content']/$total_contents)*100).'%'
            )
        );

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
}
