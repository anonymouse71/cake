<div class="viewprofile">
<?php #var_dump($_user['User']) ?>
    <h1 class="page-title"><?php echo __('My Profile'); ?></h1>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="row">
                    <div class="col-md-3 v-center">
                        <img class="thumbnail img-responsive" src="<?php
                        if (!empty($_user['User']['photo_dir'])) {
                        echo $this->webroot.'files/user/photo/'.$_user['User']['photo_dir'].'/'.$_user['User']['photo'];
                        }  else {
                         echo $this->webroot.'img/avatar.png';} ?>" alt="My Pic">
                    </div>
                    <div class="col-md-6 v-center"><h3 class="name"><?php echo $_user['User']['first_name']." ".$_user['User']['last_name'] ?></h3></div>
                    <div class="col-md-3 text-right v-center">
                        <a href="<?php echo $this->webroot."updateProfile/".$_user['User']['id'] ?>" class="btn btn-default btn-lg"><?php echo __('Edit Profile'); ?></a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <h4 class="heading"><?php echo __('My Courses');?></h4>
    <ul class="row list-unstyled course-list">
        <?php foreach($mycourses as $mycourse){ if(is_null($mycourse['Course']['name'])){;continue;}else{ ?>
        <li class="col-md-6">
            <div class="details">
                <?php echo $this->Html->image("../".$mycourse['Course']['image']);?>
                <div class="left">
                    <h4 class="heading"><?php echo $this->Html->link($mycourse['Course']['name'],array('plugin'=>'','controller'=>'courses','action'=>'detail',$mycourse['Course']['id']));?></h4>
                    <span><?php echo __('Start Date').':'.$this->Bangladatenumber->covert_to_bangla_date($mycourse['Course']['start_date']);?></span>
                </div>
            </div>
        </li>
        <?php }} ?>
    </ul>
</div>