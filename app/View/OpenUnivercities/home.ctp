<div id="course-content">
    <div class="row">
        <div class="col-md-12">
            <?php echo $this->Html->link( $this->Html->image('banner.jpg',
                                                                array('class'=>'img-responsive','alt'=>__('bou-banner'), 'title'=>__('bou-banner'))
                                                            ),  array('plugin'=>'','controller'=>'courses','action'=>'catalog'),
                                                                array('escape'=>false)

                                        );

            ?>

        </div>
    </div>
    <div class="row">
        <div class="col-md-5">
            <h3 class="arrow-box-bottom"><a href="<?php echo $this->webroot ?>courses/running_course"><?php echo __('Ongoing Courses')?></a></h3>
<!--            <h3 class="arrow-box-bottom"><a href="running course">--><?php //echo __('Ongoing Courses')?><!--</a></h3>-->
			<div class="row">
            <?php if(isset($ongoingCourses)){ ?>
                <?php for($i=0; $i<count($ongoingCourses); $i++){ ?>
                
                    <div class="col-md-6">
                        <div class="content-box">
                            <figure>
                                <img src="<?php echo $this->webroot . $ongoingCourses[$i]['Course']['image'] ?>" alt="<?php echo $ongoingCourses[$i]['Course']['name'] ?>" class="img-responsive img-thumbnail">
                            </figure>
                            <h1 class="text-center course-title"><?php echo $ongoingCourses[$i]['Course']['name'] ?></h1>
                            <div class="course-info">
                                <a href="#"><p class="course-sedule"><?php echo __('Course Start')?> <span class="course-time"><?php echo $this->Bangladatenumber->convert_to_bangla_number(floor((time()-strtotime($upcommingCourses[$i]['Course']['start_date']))/(60*60*24))); ?> <?php echo __('Day')?></span></p>
                                    <p class="course-sedule"><?php echo __('Course Fee')?> <span class="course-time"><?php echo  $this->Bangladatenumber->convert_to_bangla_number($ongoingCourses[$i]['Course']['price'] )?> <?php echo __('Taka') ?></span></p></a>
                                <div class="course-deatils">
                                    <p><?php echo $this->Html->link(__('Join Now'),array('controller'=>'courses','action'=>'detail',$ongoingCourses[$i]['Course']['id']),array('class'=>'btn btn-default')) ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                
                <?php } ?>
            <?php } ?>
            </div>
        </div>


        <div class="col-md-7">
<!--            <h3 class="arrow-box-bottom-two"><a href="--><?php //echo $this-> webroot ?><!--/upcoming_course">--><?php //echo __('Upcoming Courses')?><!--</a></h3>-->
            <h3 class="arrow-box-bottom-two"><a href="<?php echo $this->webroot ?>courses/upcoming_course"><?php echo __('Upcoming Courses')?></a></h3>
				<div class="row">
                <?php if(isset($upcommingCourses)){ ?>
                    <?php for($i=0; $i<count($upcommingCourses)+2; $i+=2){ ?>
                        
                            <div class="col-md-4">

                                <?php if(isset($upcommingCourses[$i]['Course']['image'])){ ?>
                                    <div class="content-box">
                                        <figure>
                                            <img src="<?php echo $this->webroot . $upcommingCourses[$i]['Course']['image'] ?>" alt="<?php echo $upcommingCourses[$i]['Course']['name'] ?>" class="img-responsive img-thumbnail">
                                        </figure>
                                        <h1 class="text-center course-title"><?php echo $upcommingCourses[$i]['Course']['name'] ?></h1>
                                        <div class="course-info">
                                            <a href="#"><p class="course-sedule"><?php echo __('Course Start')?> <span class="course-time"><?php echo $this->Bangladatenumber->convert_to_bangla_number(floor((time()-strtotime($upcommingCourses[$i]['Course']['start_date']))/(60*60*24))); ?>  <?php echo __('Day')?></span></p>
                                                <p class="course-sedule"><?php echo __('Course Fee')?><span class="course-time"><?php echo  $this->Bangladatenumber->convert_to_bangla_number($upcommingCourses[$i]['Course']['price']) ?> <?php echo __('Taka') ?></span></p></a>
                                            <div class="course-deatils">
                                                <p><?php echo $this->Html->link(__('Join Now'),array('controller'=>'courses','action'=>'detail',$upcommingCourses[$i]['Course']['id']),array('class'=>'btn btn-default')) ?></p>
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>

                            </div>
                            <div class="col-md-4">

                                <?php if(isset($upcommingCourses[$i+1]['Course']['image'])){ ?>
                                    <div class="content-box">
                                        <figure>
                                            <img src="<?php echo $this->webroot .  $upcommingCourses[$i+1]['Course']['image'] ?>" alt="<?php echo $upcommingCourses[$i+1]['Course']['name'] ?>" class="img-responsive img-thumbnail">
                                        </figure>
                                        <h1 class="text-center course-title"><?php echo $upcommingCourses[$i+1]['Course']['name'] ?></h1>
                                        <div class="course-info">
                                            <a href="#"><p class="course-sedule"><?php echo __('Course Start')?> <span class="course-time"><?php echo $this->Bangladatenumber->convert_to_bangla_number(floor((time()-strtotime($upcommingCourses[$i]['Course']['start_date']))/(60*60*24))); ?> <?php echo __('Day')?></span></p>
                                                <p class="course-sedule"><?php echo __('Course Fee')?><span class="course-time"><?php echo  $this->Bangladatenumber->convert_to_bangla_number($upcommingCourses[$i+1]['Course']['price']) ?> <?php echo __('Taka') ?></span></p></a>
                                            <div class="course-deatils">
                                                <p><?php echo $this->Html->link(__('Join Now'),array('controller'=>'courses','action'=>'detail',$upcommingCourses[$i+1]['Course']['id']),array('class'=>'btn btn-default')) ?></p>
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>

                            </div>
                        
                    <?php } ?>
                <?php } ?>
			</div>
        </div>


    </div>
</div>