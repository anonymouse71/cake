<?php
    if($_user['UserGroup']['name'] == 'Admin'){
?>

        <div class="panel-group" id="accordion-admin">
            <div class="panel panel-info">

                <div class="panel-heading">
                    <h6 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion-admin" href="#colorOne"><?php echo __('Options')?></a>
                    </h6>
                </div>

                <div id="colorOne" class="panel-collapse collapse in">
                    <div class="panel-body">

                        <!-- Grid buttons -->
                        <div class="info-buttons">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="row block-inner">

                                        <div class="col-md-4">
                                            <a href="<?php echo $this->webroot ?>categories"><i class="icon-list"></i> <span><?php echo __('Categories') ?></span> <strong class="label label-info"><span id="admdopt-4"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="<?php echo $this->webroot ?>lessons"><i class="icon-book"></i> <span><?php echo __('Lessons') ?></span> <strong class="label label-danger"><span id="admdopt-2"></span></strong></a>
<!--                                            <i class="icon-cogs"></i>--><?php //echo $this->Html->link(__('Lessons'), array('controller' => 'lessons', 'action' => 'index')); ?>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="<?php echo $this->webroot ?>courses"><i class="icon-file"></i> <span><?php echo __('Courses') ?></span> <strong class="label label-success"><span id="admdopt-3"></span></strong></a>
                                        </div>
                                    </div>

                                    <div class="row block">

                                        <div class="col-md-4">
                                            <a href="<?php echo $this->webroot ?>allUsers"><i class="icon-user"></i> <span><?php echo __('Users') ?></span> <strong class="label label-warning"><span id="admdopt-1"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="<?php echo $this->webroot ?>allGroups"><i class="icon-user-block"></i> <span><?php echo __('User Types') ?></span> <strong class="label label-primary"><span id="admdopt-5"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="<?php echo $this->webroot ?>permissions"><i class="icon-lock"></i> <span><?php echo __('Permissions') ?></span> <strong class="label label-primary"><span id="admdopt-5"></span></strong></a>
                                        </div>

                                        <!-- <div class="col-md-4">
                                            <a href="#"><i class="icon-users"></i> <span><?php echo __('Groups') ?></span> <strong class="label label-success"><span id="admdopt-6"></span></strong></a>
                                        </div> -->
                                    </div>

                                    <!-- <div class="row block">

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-storage"></i> <span><?php echo __('Theme') ?></span> <strong class="label label-info"><span id="admdopt-7"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-exit4"></i> <span><?php echo __('Export-Import') ?></span> <strong class="label label-primary"><span id="admdopt-8"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-cog3"></i> <span><?php echo __('Backup-Restore') ?></span> <strong class="label label-success"><span id="admdopt-9"></span></strong></a>
                                        </div>
                                    </div> -->
                                </div>

                                <!-- <div class="col-md-6">
                                    <div class="row block-inner">

                                        <div class="col-md-4">
                                            <a href="<?php echo $this->webroot ?>notifications"><i class="icon-notification"></i> <span><?php echo __('Notifications') ?></span> <strong class="label label-primary"><span id="admdopt-10"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="<?php echo $this->webroot ?>messages"><i class="icon-mail2"></i> <span><?php echo __('Messages') ?></span> <strong class="label label-warning"><span id="admdopt-11"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="<?php echo $this->webroot ?>forums"><i class="icon-paragraph-justify2"></i> <span><?php echo __('Forum') ?></span> <strong class="label label-primary"><span id="admdopt-14"></span></strong></a>
                                        </div> -->

                                        <!-- <div class="col-md-4">
                                            <a href="#"><i class="icon-cog2"></i> <span><?php echo __('System Settings') ?></span> <strong class="label label-danger"><span id="admdopt-12"></span></strong></a>
                                        </div> -->
                                    <!-- </div> -->

                                    <!-- <div class="row block">

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-stats2"></i> <span><?php echo __('Reports') ?></span> <strong class="label label-success"><span id="admdopt-13"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-paragraph-justify2"></i> <span><?php echo __('Forum') ?></span> <strong class="label label-primary"><span id="admdopt-14"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-people"></i> <span><?php echo __('Connected Users') ?></span> <strong class="label label-info"><span id="admdopt-15"></span></strong></a>
                                        </div>
                                    </div> -->

                                    <!-- <div class="row block"> -->

                                     <!--    <div class="col-md-4">
                                            <a href="<?php echo $this->webroot ?>faqs"><i class="icon-people"></i> <span><?php echo __('FAQ') ?></span> <strong class="label label-info"><span id="admdopt-16"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="<?php echo $this->webroot ?>blogs"><i class="icon-lab"></i> <span><?php echo __('Blog') ?></span> <strong class="label label-success"><span id="admdopt-17"></span></strong></a>
                                        </div> -->

                                        <!-- <div class="col-md-4">
                                            <a href="#"><i class="icon-settings"></i> <span><?php echo __('Maintenance') ?></span> <strong class="label label-success"><span id="admdopt-18"></span></strong></a>
                                        </div> -->

<!--                                        <div class="col-md-4">-->
<!--                                            <a href="#"><i class="icon-paragraph-justify2"></i> <span>Forum</span> <strong class="label label-primary">10</strong></a>-->
<!--                                        </div>-->
<!---->
<!--                                        <div class="col-md-4">-->
<!--                                            <a href="#"><i class="icon-people"></i> <span>Connected Users</span> <strong class="label label-info">30</strong></a>-->
<!--                                        </div>-->
                                    <!-- </div> -->
                                </div>
                            </div>
                        </div>
                        <!-- /grid buttons -->
                    </div>
                </div>

            </div>

            <!-- <div class="panel panel-info">
                <div class="panel-heading">
                    <h6 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion-admin" href="#colorTwo"><?php echo __('Modules');?></a>
                    </h6>
                </div>
                <div id="colorTwo" class="panel-collapse collapse in">
                    <div class="panel-body">
                        <-- Grid buttons --
                        <div class="info-buttons">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="row block-inner">
                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-cogs"></i> <span><?php echo __('Modules') ?></span> <strong class="label label-danger"><span id="admdmod-1"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-wrench"></i> <span><?php echo __('Security Module') ?></span> <strong class="label label-success"><span id="admdmod-2"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-users"></i> <span><?php echo __('Administrator Tools') ?></span> <strong class="label label-warning"><span id="admdmod-3"></span></strong></a>
                                        </div>
                                    </div>
                                    <div class="row block">
                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-people"></i> <span><?php echo __('Idel Users') ?></span> <strong class="label label-info"><span id="admdmod-4"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-lab"></i> <span><?php echo __('Journal') ?></span> <strong class="label label-success"><span id="admdmod-5"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-attachment2"></i> <span><?php echo __('RSS') ?></span> <strong class="label label-success"><span id="admdmod-6"></span></strong></a>
                                        </div>
                                    </div>
                                    <div class="row block">
                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-people"></i> <span><?php echo __('Crossword') ?></span> <strong class="label label-info"><span id="admdmod-7"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-lab"></i> <span><?php echo __('Flashcards') ?></span> <strong class="label label-success"><span id="admdmod-8"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-lab"></i> <span><?php echo __('Links') ?></span> <strong class="label label-success"><span id="admdmod-9"></span></strong></a>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="row block-inner">

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-upload"></i> <span><?php echo __('BBB Conferences') ?></span> <strong class="label label-info"><span id="admdmod-10"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-user4"></i> <span><?php echo __('Chat') ?></span> <strong class="label label-primary"><span id="admdmod-11"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-stack"></i> <span><?php echo __('Grade Book') ?></span> <strong class="label label-warning"><span id="admdmod-12"></span></strong></a>
                                        </div>
                                    </div>

                                    <div class="row block">

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-lab"></i> <span><?php echo __('Outlook Invitation') ?></span> <strong class="label label-success"><span id="admdmod-13"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-info2"></i> <span><?php echo __('Info Kiosk') ?></span> <strong class="label label-info"><span id="admdmod-14"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-balloon"></i> <span><?php echo __('Billboard') ?></span> <strong class="label label-info"><span id="admdmod-15"></span></strong></a>
                                        </div>

                                    </div>

                                    <div class="row block">

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-lab"></i> <span><?php echo __('Quote of the day') ?></span> <strong class="label label-success"><span id="admdmod-16"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-people"></i> <span><?php echo __('Workbook') ?></span> <strong class="label label-info"><span id="admdmod-17"></span></strong></a>
                                        </div>

                                        <div class="col-md-4">
                                            <a href="#"><i class="icon-youtube"></i> <span><?php echo __('Youtube') ?></span> <strong class="label label-info"><span id="admdmod-18"></span></strong></a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <-- /grid buttons --
                    </div>
                </div>
            </div> -->


        </div>


<?php
}
?>

<?php
$this->append('jsRegion');
?>

    <script>
        //    var wr = '<?php //echo $this->base;?>//';
        //var userid = '<?php //echo array_key_exists('User',$_user)?$_user['User']['id']:null ?>//';
        //console.log(userid);
        $(document).ready(function(){
            $.ajax({
                'url':wr+'/lessons/adminDashboardOption',
                'dataType':'json'
            }).success(function(data){
            console.log(data);

                $('#admdopt-1').html(data.total_users);
                $('#admdopt-2').html(data.total_lessons);
                $('#admdopt-3').html(data.total_courses);
                $('#admdopt-4').html(data.total_categories);
                $('#admdopt-5').html(data.total_user_types);
                $('#admdopt-6').html(data.total_user_groups);
//                $('#admdopt-7').html(data.total_user_groups);
//                $('#admdopt-8').html(data.total_user_groups);
//                $('#admdopt-9').html(data.total_user_groups);
                $('#admdopt-10').html(data.total_notifications);
                $('#admdopt-11').html(data.total_messages);
//                $('#admdopt-12').html(data.total_user_groups);
//                $('#admdopt-13').html(data.total_messages);
                $('#admdopt-14').html(data.total_forums);
//                $('#admdopt-15').html(data.total_messages);
                $('#admdopt-16').html(data.total_faqs);
                $('#admdopt-17').html(data.total_blogs);
//                $('#admdopt-18').html(data.total_forums);



//            $('#lp-2').html(data.total_content);
//            $('#lp-3').html(data.content_completion);
//            $('#progress-bar-width').css('width',data.percentage);


            })
        });
    </script>





<?php
$this->end();
?>