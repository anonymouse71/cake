<!--<h1 class="page-title">--><?php //echo __('Courses');?><!--</h1>-->
<?php
//    foreach($courses as $course):
//        //debug($course);
//?>

<!--<div class="blog-list">-->
<!--    <h4 class="blog-title"><a href="#" title="Basic Adobe Photoshop">--><?php //echo $course['Course']['name']?><!--</a></h4>-->
<!--    <div class="date-time">--><?php //echo __('By');?>
<!--        <a href="#" title="Mr. Abdus Salam" class="author">-->
<!--                --><?php //echo $course['Course']['created_by']?><!--</a>, --><?php //echo $this->Time->nice($course['Course']['modified']);?><!--</div>-->
<!--    <div class="blog-short-content">-->
<!--        <p> --><?php //echo $course['Course']['description']?><!--</p>-->
<!--    </div>-->
<!--    <div class="comment"><span class="badge">2</span> enrolled <button class="btn btn-success">Add to cart</button></div>-->
<!--</div>-->
<div class="row">
    <div class="col-md-9">
        <div class="row">
            <div class="col-md-5">
                <h1 class="page-title"><?php echo __('Courses Dashboard');?></h1>
            </div>
            <div class="col-md-7">
                <div class="btn-group pull-right" role="group" aria-label="Basic example">
                    <ul class="nav navbar-nav">
                        <li><a href="<?php echo $this->webroot ?>courses/running_course"><?php echo __('Running'); ?></a></li>
                        <li><a class="btn btn-success disabled" href="#"><?php echo __('Past'); ?></a></li>
                        <li><a href="<?php echo $this->webroot ?>courses/upcoming_course"><?php echo __('Upcoming'); ?></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div>&nbsp;</div>
        <div class="row">
            <div class="col-md-12">
                <div id="running">
                    <?php
                        foreach($courses as $course):
                        //debug($course);
                    ?>
                    <div class="well course-dashboard">
                        <div class="row">
                            <div class="col-md-3">
                                <img class="img-responsive" src="<?php echo $this->webroot.$course['Course']['image']; ?>" alt="c_pro">
                            </div>
                            <div class="col-md-9">
                                <div class="course-detail">
                                    <h3 class="page-title"><?php echo $course['Course']['name']; ?></h3>
                                    <div class="date-time"><?php echo $course['Course']['created_by']?></div>
                                    <div class="blog-short-content">
                                        <p><?php echo $course['Course']['description']?></p>
                                    </div>
                                    <div class="pull-right" style="padding-right: 15px">
                                        <a href="<?php echo $this->webroot.'courses/detail/'.$course['Course']['id'] ?>"><button type="button" class="btn btn-default btn-sm"><?php echo __('Detail')?></button></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                        endforeach;
                    ?>
                </div>
                <nav class="text-center">
                    <ul class="pagination">
                        <?php
                        echo $this->Paginator->prev('< ' . __('Previous'), array('tag' => 'li'), null, array('class' => 'disabled', 'tag' => 'li', 'disabledTag' => 'a'));
                        echo $this->Paginator->numbers(array('separator' => '', 'currentTag' => 'a', 'tag' => 'li', 'currentClass' => 'disabled'));
                        echo $this->Paginator->next(__('Next') . ' >', array('tag' => 'li'), null, array('class' => 'disabled', 'tag' => 'li', 'disabledTag' => 'a'));

                        ?>
                    </ul>
                </nav>
            </div>
        </div>
    </div>

    <div class="col-md-3 sidebar">
       <?php echo $this->element('course/announcement'); ?>
       <?php echo $this->element('course/chosen_for_you'); ?>
    </div>





