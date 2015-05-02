<?php
//$this->Html->addCrumb(__('Courses'), '/courses/catalog');
//$this->Html->addCrumb(__('Course Detail'), array ('plugin' => '', 'controller' => 'courses', 'action' => 'detail', $course['Course']['id']));

// var_dump($this->layout);
?>
<div class="row">

    <div class="col-md-12">
        <h4 class="heading"><?php echo h($course['Course']['name']); ?></h4>
        <p><?php echo h($course['Course']['description']); ?></p>
    </div>
    <div class="col-md-9">
        <div class="blog-view">
            <div class="course-info-list">
                <h4 class="heading"><?php echo __('Course Syllabus:') ?></h4>
                <ol class="syllabus">
                    <?php foreach ($course['Lesson'] as $lesson): ?>
                        <li>
                            <?php
                            if (isset($status['CourseUser']['active'])&&$status['CourseUser']['active']) {
                              echo $this->Html->link($lesson['name'],array('controller'=>'lessons','action'=>'detail',$lesson['id'])); 
                            }else{
                                echo $lesson['name'];
                            }                              
                             ?>
                        </li>
                    <?php endforeach; ?>
                </ol>
            </div>
            <div class="course-info-list">
                <h4 class="heading"><?php echo __('Who It Is For:') ?></h4>
                <?php echo ($course['Course']['who_it_is_for']); ?>
            </div>
            <div class="course-info-list">
                <h4 class="heading"><?php echo __('Course Type:') ?></h4>
                <p><?php echo h($course['Course']['type']); ?></p>
            </div>
            <div class="course-info-list">
                <h4 class="heading"><?php echo __('Usually Asked Question:') ?></h4>
                <?php echo ($course['Course']['usually_asked_question']); ?>
            </div>
        </div>
    </div>

    <div class="col-md-3 sidebar">
        <?php echo $this->element('course/session'); ?>
        <?php echo $this->element('course/duration'); ?>
        <?php echo $this->element('course/teacher'); ?>
        <?php echo $this->element('course/calendar'); ?>
    </div>
</div>



