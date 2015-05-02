
    <div class="col-md-3 sidebar">
        <div class="side-title"><?php echo __('Course Session') ?></div>
        <div class="side-content">
            <form class="form-horizontal" role="form">
                <select class="form-control">
                    <option><?php echo $this->Bangladatenumber->covert_to_bangla_date($course['Course']['start_date']) . ' -- ' . $this->Bangladatenumber->covert_to_bangla_date($course['Course']['end_date']) ?></option>
                </select>
                <?php echo $this->element('join_course_button', array('courseId' => $course['Course']['id']));?>

                <!--<button type="button" class="btn btn-primary full"></button>-->
            </form>
        </div>
        <div class="side-title"><?php echo __('Course Duration') ?></div>
        <div class="side-content">
            <ul class="list-unstyled">
                <li><p><i class="fa fa-calendar"></i> <span id="duration_per_week"></span><?php //echo $course['Course']['duration_per_week'] ?> Weeks</p></li>
                <li><p><i class="fa fa-clock-o"></i> <span id="duration_hour_per_week"></span><?php //echo $course['Course']['duration_hour_per_week'] ?> Hours per week</p></li>
                <li><p><i class="fa fa-globe"></i> <?php echo __('Bengali') ?></p></li>
            </ul>
        </div> 
        <div class="side-title"><?php echo __('Course Teacher') ?></div>
        <div class="side-content">
            <div class="teacher-pic">
                <a class="logo" href="#">
                    <?php echo $this->layout; ?>
                    <img style="width:50px;height:50px" src="<?php echo $this->webroot .'files/user/photo/'. $professor['User']['photo_dir'] .'/' . $professor['User']['photo'] ?>" alt="Professor" />
                </a>
            </div>
            <div class="teacher-desc">
                <p class="name"><?php echo $professor['User']['first_name'] .' '. $professor['User']['last_name'] ?></p>
                <p class="education"><?php echo $professor['User']['city'] .', '. $professor['User']['country'] ?></p>
            </div>
        </div>
        <div class="side-title"><?php echo __('Calendar') ?></div>
        <div class="side-content">
            <!-- Responsive calendar - START -->
            <div class="responsive-calendar">
                <div class="controls">
                    <a class="pull-left" data-go="prev"><div class="btn btn-primary">Prev</div></a>
                    <h4><span data-head-year></span> <span data-head-month></span></h4>
                    <a class="pull-right" data-go="next"><div class="btn btn-primary">Next</div></a>
                </div><hr/>
                <div class="day-headers">
                    <div class="day header">Mon</div>
                    <div class="day header">Tue</div>
                    <div class="day header">Wed</div>
                    <div class="day header">Thu</div>
                    <div class="day header">Fri</div>
                    <div class="day header">Sat</div>
                    <div class="day header">Sun</div>
                </div>
                <div class="days" data-group="days">
                </div>
            </div>
            <!-- Responsive calendar - END -->
        </div>
    </div>