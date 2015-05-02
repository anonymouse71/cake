<div class="row">
    <div class="col-md-3">
            <div class="form-group">
                <label for="exampleInputEmail1">Account Settings</label>
            </div>
<!--             <div class="form-group">
                <label for="exampleInputEmail1">Time Zone</label>
                <select class="form-control">
                    <option>Dhaka</option>
                    <option>Khulna</option>
                    <option>Comilla</option>
                </select>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-default">Time Change</button>
            </div> -->
            <div class="form-group">
                <label for="exampleInputEmail">Email address Change</label><br>
                <?php echo $this->Form->create('User', array('action' => 'changeEmail')); ?>
                <?php echo $this->Form->input("email" ,array("type"=>"email",'label' => 'Password','div' => false,'class'=>"form-control",'label'=>false ))?>
                <?php echo $this->Form->input("id" ,array("type"=>"hidden",'label' => 'Password','div' => false,'class'=>"form-control",'label'=>false,'value'=>$_user['User']['id'] ))?>
            </div>
            <div class="form-group">
                <!-- <button type="submit" class="btn btn-default">Email Change</button> -->
                <?php echo $this->Form->input( ' Submit ', array( 'label' =>false,
                                                    'div'=>array('class'=>'control-group'),
                                                    'type'=>'submit',
                                                    'class'=>'btn btn-default',
                                                    )); ?>
                <?php echo $this->Form->end(); ?>
            </div>
            <?php echo $this->Form->create('User', array('action' => 'setting')); ?>
            <div class="form-group">
                <label for="UserOldpass">Password Change</label><br>
                <!-- <label for="exampleInputPassword1">Old Password</label>
                <?php echo $this->Form->input("oldpass" ,array("type"=>"password",'label' => 'Confirm Password','div' => false,'class'=>"form-control",'label'=>false ))?> -->
            </div>
            <div class="form-group">
                <label for="UserPassword">New Password</label>
                <?php echo $this->Form->input("password" ,array("type"=>"password",'label' => 'Password','div' => false,'class'=>"form-control",'label'=>false ))?>
            </div>
            <div class="form-group">
                <label for="UserCpassword">confirm Password</label>
                <?php echo $this->Form->input("cpassword" ,array("type"=>"password",'label' => 'Confirm Password','div' => false,'class'=>"form-control",'label'=>false ))?>
            </div>
            <div class="form-group">
                <!-- <button type="submit" class="btn btn-default">Password Change</button> -->

                <?php echo $this->Form->input( ' Submit ', array( 'label' =>false,
                                                    'div'=>array('class'=>'control-group'),
                                                    'type'=>'submit',
                                                    'class'=>'btn btn-default',
                                                    ));
            ?>
            <?php echo $this->Form->end(); ?>
            </div>
    </div>
    <div class="col-md-6 col-md-offset-3"></div>
</div>