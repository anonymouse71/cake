<ul class="info-blocks">


    <li class="bg-primary">
        <div class="top-info">
            <?php echo $this->Html->link(__('Lesson information'),array('plugin'=>'','controller'=>'lessons','action'=>'view', $lesson['Lesson']['id']))?>
<!--            <a href="--><?php //echo $this->webroot ?><!--courses/my_courses">My Courses</a>-->
            <small><?php echo __("<span id='std-1'></span>"); ?> <?php echo __('courses are taken'); ?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-info2"></i>',array('plugin'=>'','controller'=>'lessons','action'=>'view', $lesson['Lesson']['id']),array('escape'=>false))?>
<!--        <a href="--><?php //echo $this->webroot ?><!--courses/my_courses"><i class="icon-file"></i></a>-->
        <span class="bottom-info bg-danger"><?php echo __("<span id='std-2'></span>") ?> <?php echo __('courses are in progress'); ?></span>
    </li>


    <li class="bg-info">
        <div class="top-info">
            <?php echo $this->Html->link(__('Contents'),array('plugin'=>'','controller'=>'contents','action'=>'catalog', $lesson['Lesson']['id']))?>
<!--            <a href="--><?php //echo $this->webroot ?><!--messages/my_messages">My messages</a>-->
            <small><span id="std-11"></span> <?php echo __('messages history') ; ?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-notebook"></i>',array('plugin'=>'','controller'=>'contents','action'=>'catalog', $lesson['Lesson']['id']),array('escape'=>false))?>
<!--        <a href="--><?php //echo $this->webroot ?><!--messages/my_messages"><i class="icon-mail2"></i></a>-->
        <span class="bottom-info bg-primary"><?php echo __("<span id='std-3'></span>") ?> <?php echo __('new messages') ?></span>
    </li>

    <li class="bg-primary">
        <div class="top-info">
            <?php echo $this->Html->link(__('Projects'),array('plugin'=>'','controller'=>'projects','action'=>'index'))?>
<!--            <a href="#">My Account</a>-->
            <small><?php echo __('Account management') ?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-wrench2"></i>',array('plugin'=>'','controller'=>'projects','action'=>'index'),array('escape'=>false))?>
<!--        <a href="--><?php //echo $this->webroot ?><!--myprofile"><i class="icon-user"></i></a>-->
        <span class="bottom-info bg-danger"><?php echo __("<span id='std-4'></span>") ?> <?php echo __('courses are in progress') ?></span>
    </li>

    <li class="bg-success">
        <div class="top-info">
            <?php echo $this->Html->link(__('Tests'),array('plugin'=>'','controller'=>'exams','action'=>'index'))?>
<!--            <a href="--><?php //echo $this->webroot ?><!--invoices/my_invoices">Invoices stats</a>-->
            <small><?php echo __('invoices archive') ?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-medal2"></i>',array('plugin'=>'','controller'=>'exams','action'=>'index'),array('escape'=>false))?>
<!--        <a href="--><?php //echo $this->webroot ?><!--invoices/my_invoices"><i class="icon-coin"></i></a>-->
        <span class="bottom-info bg-primary"><?php echo __('9') ?> <?php echo __('new invoices') ?></span>
    </li>

    <li class="bg-primary">
        <div class="top-info">
            <?php echo $this->Html->link(__('Content management'),array('plugin'=>'','controller'=>'contents','action'=>'index'))?>
            <!--            <a href="--><?php //echo $this->webroot ?><!--reports/course">Reports</a>-->
            <small><?php echo __('10')?> <?php echo __('Reports')?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-user4"></i>',array('plugin'=>'','controller'=>'reports','action'=>'course'),array('escape'=>false))?>
        <!--        <a href="--><?php //echo $this->webroot ?><!--reports/course"><i class="icon-bars"></i></a>-->
        <span class="bottom-info bg-danger"><?php echo __('3') ?> <?php echo __('new results') ?></span>
    </li>
</ul>

<ul class="info-blocks">

    <li class="bg-primary">
        <div class="top-info">
            <?php echo $this->Html->link(__('Feedback'),array('plugin'=>'','controller'=>'blogs','action'=>'index'))?>
            <small><?php echo __("<span id='std-7'></span>")?> <?php echo __('Blogs')?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-clipboard"></i>',array('plugin'=>'','controller'=>'blogs','action'=>'catalog'),array('escape'=>false))?>
        <!--        <a href="--><?php //echo $this->webroot ?><!--blogs/catalog"><i class="icon-notebook"></i></a>-->
        <span class="bottom-info bg-danger"><?php echo __("<span id='std-8'></span>") ?> <?php echo __('new posts') ?></span>
    </li>

    <li class="bg-danger">
        <div class="top-info">
            <?php echo $this->Html->link(__('Lesson rules'),array('plugin'=>'','controller'=>'rules','action'=>'index'))?>
            <small><?php echo __("<span id='std-9'></span>")?> <?php echo __('Forums')?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-balance"></i>',array('plugin'=>'','controller'=>'rules','action'=>'index'),array('escape'=>false))?>
        <!--        <a href="--><?php //echo $this->webroot ?><!--forums/catalog"><i class="icon-paragraph-left2"></i></a>-->
        <span class="bottom-info bg-primary"><?php echo __("<span id='std-10'></span>") ?> <?php echo __('new updates') ?></span>
    </li>

    <li class="bg-danger">
        <div class="top-info">
            <?php echo $this->Html->link(__('Glossary'),array('plugin'=>'','controller'=>'glossaries','action'=>'index'))?>
            <small><?php echo __("<span id='std-9'></span>")?> <?php echo __('Forums')?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-database"></i>',array('plugin'=>'','controller'=>'glossaries','action'=>'index'),array('escape'=>false))?>
        <!--        <a href="--><?php //echo $this->webroot ?><!--forums/catalog"><i class="icon-paragraph-left2"></i></a>-->
        <span class="bottom-info bg-primary"><?php echo __("<span id='std-10'></span>") ?> <?php echo __('new updates') ?></span>
    </li>


    <li class="bg-danger">
        <div class="top-info">
            <?php echo $this->Html->link(__('Users status'),array('plugin'=>'','controller'=>'users','action'=>'index'))?>
            <small><?php echo __("<span id='std-9'></span>")?> <?php echo __('Forums')?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-stats-up"></i>',array('plugin'=>'','controller'=>'users','action'=>'index'),array('escape'=>false))?>
        <!--        <a href="--><?php //echo $this->webroot ?><!--forums/catalog"><i class="icon-paragraph-left2"></i></a>-->
        <span class="bottom-info bg-primary"><?php echo __("<span id='std-10'></span>") ?> <?php echo __('new updates') ?></span>
    </li>

    <li class="bg-success">
        <div class="top-info">
            <?php echo $this->Html->link(__('Scheduling'),array('plugin'=>'','controller'=>'schedules','action'=>'index'))?>
            <small><?php echo __("<span id='std-5'></span>") ?> <?php echo __('Courses') ?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-clock2"></i>',array('plugin'=>'','controller'=>'schedules','action'=>'catalog'),array('escape'=>false))?>
        <!--        <a href="--><?php //echo $this->webroot ?><!--courses/catalog"><i class="icon-books"></i></a>-->
        <span class="bottom-info bg-primary"><?php echo __("<span id='std-6'></span>") ?> <?php echo __('courses are taken') ?></span>
    </li>

    </ul>
    <ul class="info-blocks">


    <li class="bg-primary">
        <div class="top-info">
            <?php echo $this->Html->link(__('Lesson reports'),array('plugin'=>'','controller'=>'reports','action'=>'index'))?>
            <small><?php echo __("<span id='std-7'></span>")?> <?php echo __('Blogs')?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-archive"></i>',array('plugin'=>'','controller'=>'reports','action'=>'catalog'),array('escape'=>false))?>
        <!--        <a href="--><?php //echo $this->webroot ?><!--blogs/catalog"><i class="icon-notebook"></i></a>-->
        <span class="bottom-info bg-danger"><?php echo __("<span id='std-8'></span>") ?> <?php echo __('new posts') ?></span>
    </li>

    <li class="bg-danger">
        <div class="top-info">
            <?php echo $this->Html->link(__('Resources'),array('plugin'=>'','controller'=>'files','action'=>'index'))?>
            <small><?php echo __("<span id='std-9'></span>")?> <?php echo __('Forums')?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-file4"></i>',array('plugin'=>'','controller'=>'files','action'=>'index'),array('escape'=>false))?>
        <!--        <a href="--><?php //echo $this->webroot ?><!--forums/catalog"><i class="icon-paragraph-left2"></i></a>-->
        <span class="bottom-info bg-primary"><?php echo __("<span id='std-10'></span>") ?> <?php echo __('new updates') ?></span>
    </li>

    <li class="bg-danger">
        <div class="top-info">
            <?php echo $this->Html->link(__('Forum'),array('plugin'=>'','controller'=>'forums','action'=>'index'))?>
            <small><?php echo __("<span id='std-9'></span>")?> <?php echo __('Forums')?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-pencil2"></i>',array('plugin'=>'','controller'=>'forums','action'=>'index'),array('escape'=>false))?>
        <!--        <a href="--><?php //echo $this->webroot ?><!--forums/catalog"><i class="icon-paragraph-left2"></i></a>-->
        <span class="bottom-info bg-primary"><?php echo __("<span id='std-10'></span>") ?> <?php echo __('new updates') ?></span>
    </li>


    <li class="bg-danger">
        <div class="top-info">
            <?php echo $this->Html->link(__('Administrator'),array('plugin'=>'','controller'=>'admins','action'=>'index'))?>
            <small><?php echo __("<span id='std-9'></span>")?> <?php echo __('Forums')?></small>
        </div>
        <?php echo $this->Html->link('<i class="icon-king"></i>',array('plugin'=>'','controller'=>'admins','action'=>'index'),array('escape'=>false))?>
        <!--        <a href="--><?php //echo $this->webroot ?><!--forums/catalog"><i class="icon-paragraph-left2"></i></a>-->
        <span class="bottom-info bg-primary"><?php echo __("<span id='std-10'></span>") ?> <?php echo __('new updates') ?></span>
    </li>

</ul>

<!--
<div class="panel-group" id="accordion-color">
    <div class="panel panel-info">

        <div class="panel-heading">
            <h6 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion-color" href="#colorCommon"><?php echo __('Tools');?></a>
            </h6>
        </div>

        <div id="colorCommon" class="panel-collapse collapse in">
            <div class="panel-body">

  -->
                <!-- Default info blocks -->

                <!-- /default info blocks -->
<!--            </div>
        </div>

    </div>
</div>
-->

<?php
$this->append('jsRegion');
?>

<script>
//    var wr = '<?php //echo $this->base;?>//';
//var userid = '<?php //echo array_key_exists('User',$_user)?$_user['User']['id']:null ?>//';
//console.log(userid);
    $(document).ready(function(){
        $.ajax({
            'url':wr+'/lessons/myTotalCourses/'+userid,
            'dataType':'json'
        }).success(function(data){
            console.log(data);
            $('#std-1').html(data.my_courses);
            $('#std-3').html(data.total_received_message);
            $('#std-4').html(data.my_courses);
            $('#std-6').html(data.my_courses);
            $('#std-11').html(data.total_sent_message);
//            $('#lp-2').html(data.total_content);
//            $('#lp-3').html(data.content_completion);
//            $('#progress-bar-width').css('width',data.percentage);


        })
    });
</script>

<script>

    $(document).ready(function(){
        $.ajax({
            'url':wr+'/lessons/dashboard',
            'dataType':'json'
        }).success(function(data){
//            console.log(data);
            $('#std-2').html(data.total_course);


            $('#std-5').html(data.total_course);

            $('#std-7').html(data.total_blog);
            $('#std-8').html(data.total_latest_blogs);
            $('#std-9').html(data.total_forum);
            $('#std-10').html(data.total_latest_forums);


//            $('#progress-bar-width').css('width',data.percentage);


        })
    });
</script>




<?php
$this->end();
?>