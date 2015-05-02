<?php
$text = 'Join for free';
if (isset($_user) && !empty($_user)) {
    $url        = Router::url(array (
                'controller' => 'courses',
                'action'     => 'get_course_user_status',
                $courseId
    ));

    $courseUser = $this->requestAction($url);
    if (!empty($courseUser)) {
        if($courseUser['CourseUser']['active']){
            $text = __('Already Joined. Disable Now?');
        }else{
            $text = __('Already Joined. Active Now?');
        }
    }
}
echo $this->Html->link(__($text), array ('plugin' => '', 'controller' => 'Courses', 'action' => 'join_course', $course['Course']['id']), array ('class' => 'btn btn-success full text-center'));
