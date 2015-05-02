<div class="row">
    <div class="col-md-12">
        <h4 class="heading"><?php echo __('Basic Adobe Photoshop') ?></h4>
        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p>
    </div>
    <div class="col-md-9">
        <div class="blog-view">
            <div class="course-info-list">
                <h4 class="heading"><?php echo __('Course Syllabus:') ?></h4>
                <ol class="syllabus">
                    <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
                    <li>Vivamus consequat urna sit amet enim ullamcorper, ac volutpat arcu molestie.</li>
                    <li>Sed sit amet metus euismod, imperdiet dui facilisis, dapibus nibh.</li>
                    <li>Aliquam maximus nunc eu metus consequat commodo.</li>
                    <li>Nullam vel justo at lorem tincidunt accumsan ac quis justo.</li>
                    <li>Nam vitae dui in velit faucibus gravida.</li>
                    <li>In vitae nulla sed augue eleifend semper sit amet non purus.</li>
                    <li>Sed mattis odio non enim fermentum, sit amet aliquet felis pellentesque.</li>
                    <li>Sed cursus orci vitae facilisis sodales.</li>
                    <li>Nulla viverra nisi ut justo fringilla vehicula.</li>
                    <li>Suspendisse porta nibh ac semper varius.</li>
                    <li>Donec ac mi et sem viverra commodo eget non dolor.</li>
                    <li>Aenean fringilla elit in sem sodales, ac hendrerit arcu pretium.</li>
                </ol>
            </div>
            <div class="course-info-list">
                <h4 class="heading"><?php echo __('Who It Is For:') ?></h4>
                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
            </div>
            <div class="course-info-list">
                <h4 class="heading"><?php echo __('Course Type:') ?></h4>
                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
            </div>
            <div class="course-info-list">
                <h4 class="heading"><?php echo __('Usually Asked Question:') ?></h4>
                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
            </div>
        </div>
    </div>
    <div class="col-md-3 sidebar">
        <div class="side-title"><?php echo __('Course Session') ?></div>
        <div class="side-content">
            <form class="form-horizontal" role="form">
                <select class="form-control">
                    <option>30th Nov - 4th Dec 2014</option>
                    <option>14th Dec - 20th Dec 2014</option>
                </select>
                <?php echo $this->element('join_course_button', array('courseId' => $course['Course']['id']));?>
                <!--<button type="button" class="btn btn-primary full">Join for free</button>-->
            </form>
            </form>
        </div>
        <div class="side-title"><?php echo __('Course Duration') ?></div>
        <div class="side-content">
            <ul class="list-unstyled">
                <li><p><i class="fa fa-calendar"></i> <?php echo $course['Course']['duration_per_week'] ?> 4 Weeks</p></li>
                <li><p><i class="fa fa-clock-o"></i><?php echo $course['Course']['duration_hour_per_week'] ?> 3-4 Hours per week</p></li>
                <li><p><i class="fa fa-globe"></i> <?php echo __('Bengali') ?></p></li>
            </ul>
        </div>
        <div class="side-title"><?php echo __('Course Teacher') ?></div>
        <div class="side-content">
            <div class="teacher-pic">
                <a class="logo" href="#">
                    <?php echo $this->Html->image('tech.jpg',array('class'=>'image-responsive','alt'=>__('bou-logo'), 'title'=>__('bou-logo')));?>
                </a>
            </div>
            <div class="teacher-desc">
                <p class="name">Mr. Abdus Salam</p>
                <p class="education">BUET</p>
            </div>
        </div>
        <div class="side-title"><?php echo __('Calendar') ?></div>
        <div class="side-content">
            <div class="responsive-calendar">
                <div class="controls">
                    <h4><span data-head-year></span> <span data-head-month></span></h4>
                </div>
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
        </div>
    </div>
</div>
<?php echo $this->Html->script('/bou/js/responsive-calendar') ?>

<?php
/* $date = explode('/',$course['Course']['start_date']);
  $startDate = $date[2] .'-'. $date[0] .'-'. $date[1];

  $date = explode('/',$course['Course']['end_date']);
  $endDate = $date[2] .'-'. $date[0] .'-'. $date[1]; */
?>

<script type="text/javascript">
    $(document).ready(function() {
        $(".responsive-calendar").responsiveCalendar({
            events: {
                "<?php echo $course['Course']['start_date'] ?>": {"number": 5, "url": "<?php echo $this->webroot . 'courses/detail/' . $course['Course']['id'] ?>"},
                "<?php echo $course['Course']['end_date'] ?>": {"number": 1, "url": "<?php echo $this->webroot . 'courses/detail/' . $course['Course']['id'] ?>"},
            }
        });
    });
</script>
