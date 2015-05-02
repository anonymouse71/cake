<div class="list-group" id="session">
    <a href="#" class="list-group-item active side-title">
        <i class="glyphicon glyphicon-user"></i><?php echo __('Course Teacher') ?>
    </a>
</div>

        <div class="list-group-item">
            <div class="teacher-pic">
                <a class="logo" href="#">
                    <img style="width:50px;height:50px" src="<?php echo $this->webroot .'files/user/photo/'. $professor['User']['photo_dir'] .'/' . $professor['User']['photo'] ?>" alt="Professor" />
                </a>
            </div>
            <div class="teacher-desc">
                <p class="name"><?php  echo $professor['User']['first_name'] .' '. $professor['User']['last_name'] ?></p>
                <p class="education"><?php echo $professor['User']['city'] .', '. $professor['User']['country'] ?></p>
            </div>
        </div><br>