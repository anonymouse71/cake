<div class="profile">
<h1 class="page-title"><?php echo __('My Profile') ?></h1>
<div class="row">
<div class="col-md-12">
<?php echo $this->Form->create('User', array('action' => 'updateProfile', 'type' => 'file','role'=>'form')); ?>

<?php echo $this->Form->input("id" ,array('type' => 'hidden', 'label' => false,'div' => false))?>

<div class="row">
    <div class="col-md-2">
        <label><?php echo __('Picture') ?></label>
    </div>
    <div class="col-md-10">
        <div class="form-group">
            <div class="row">
                <div class="col-md-4">
                    <img id="uploadPreview1" src="
<?php
if ($this->data['User']['photo']) {
    echo $this->webroot.'files/user/photo/'.$this->data['User']['photo_dir'].'/'.$this->data['User']['photo'] ?>
<?php }  else
 echo $this->webroot.'img/avatar.png'; ?>" />
                </div>
                <div class="col-md-8">
                    <!-- <input id="uploadImage1" type="file" name="p1" onchange="PreviewImage(1);" /> -->
                    <?php echo $this->Form->input('User.photo', array('type' => 'file','div'=>false,'onchange'=>'PreviewImage(1);','id'=>'uploadImage1')); ?>
                    <?php echo $this->Form->input('User.photo_dir', array('type' => 'hidden')); ?>
                    <p>File size - Maximum 1MB. JPG, GIF or PNG</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2">
        <label><?php echo __('Address') ?></label>
    </div>
    <div class="col-md-10">
        <div class="form-group">
            <!-- <input type="text" class="input form-control" name="address" placeholder="City: Gazipur, Dhaka" /> -->
            <?php echo $this->Form->input('address', array('type'=>'text','class'=>'input form-control','placeholder'=>'City: Gazipur, Dhaka','label'=>false)); ?>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2">
        <label><?php echo __('Birth Date') ?></label>
    </div>
    <div class="col-md-10">
        <div class="row">
            <?php echo $this->Form->input('birthdate', array( 'label' => false, 'class'=>'form-control',
                            'dateFormat' => 'DMY',
                            'minYear' => date('Y') - 70,
                            'maxYear' => date('Y') - 1,
                            'between' => '<div class="col-md-4">',
                            'separator' => '</div><div class="col-md-4">',
                            'after' => '</div>',

                             )); ?>

        </div><br/>
    </div>
</div>

<div class="row">
    <div class="col-md-2">
        <label><?php echo __('About me') ?></label>
    </div>
    <div class="col-md-10">
        <div class="form-group">
            <!-- <textarea class="form-control"></textarea> -->
            <?php echo $this->Form->textarea('aboutme',array('class' =>'form-control')); ?>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2">
        <label><?php echo __('Website') ?></label>
    </div>
    <div class="col-md-10">
        <div class="form-group">
            <div class="input-group">
                <div class="input-group-addon"><i class="fa fa-globe"></i></div>
                <!-- <input type="text" class="form-control" name="personal_web" id="exampleInputEmail2" placeholder="Personal Website"> -->
                <?php echo $this->Form->input('website', array('type'=>'text','class'=>'form-control','placeholder'=>'Personal Website','label'=>false)); ?>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-facebook-square"></i></div>
                        <!-- <input type="text" class="form-control" name="personal_web" id="exampleInputEmail2" placeholder="http://www.facebook.com"> -->
                        <?php echo $this->Form->input('facebook', array('type'=>'text','class'=>'form-control','placeholder'=>'http://www.facebook.com','label'=>false)); ?>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-google-plus-square"></i></div>
                        <!-- <input type="text" class="form-control" name="personal_web" id="exampleInputEmail2" placeholder="http://www.plus.google.com"> -->
                        <?php echo $this->Form->input('gplus', array('type'=>'text','class'=>'form-control','placeholder'=>'http://www.plus.google.com','label'=>false)); ?>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-twitter-square"></i></div>
                        <!-- <input type="text" class="form-control" name="personal_web" id="exampleInputEmail2" placeholder="http://www.twitter.com"> -->
                        <?php echo $this->Form->input('twitter', array('type'=>'text','class'=>'form-control','placeholder'=>'http://www.twitter.com','label'=>false)); ?>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-youtube-square"></i></div>
                        <!-- <input type="text" class="form-control" name="personal_web" id="exampleInputEmail2" placeholder="http://www.youtube.com"> -->
                        <?php echo $this->Form->input('youtube', array('type'=>'text','class'=>'form-control','placeholder'=>'http://www.youtube.com','label'=>false)); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2">
        <label></label>
    </div>
    <div class="col-md-10">
        <button type="submit" class="btn btn-primary"><?php echo __('Save') ?></button>
    </div>
</div>
</form>
</div>
<div class="col-md-offset-5"></div>
</div>
</div>

<script type="text/javascript">
    function PreviewImage(no) {
        var oFReader = new FileReader();
        oFReader.readAsDataURL(document.getElementById("uploadImage"+no).files[0]);

        oFReader.onload = function (oFREvent) {
            document.getElementById("uploadPreview"+no).src = oFREvent.target.result;
        };
    }
</script>