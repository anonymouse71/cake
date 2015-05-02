<div class="col-md-4 col-md-offset-4">
    <div class="login-box">
        <h3><?php echo __('Login');?></h3>
        <?php echo $this->Form->create('User', array('action' => 'login')); ?>
        <div class="form-group">
            <label for="exampleInputEmail1"><?php echo __('Email address');?></label>
            <div class="input-group">

                <?php echo $this->Form->input("email" ,array('label' => false,'type'=>"email", 'Placeholder'=>__('Email'),'div' => false,'class'=>"form-control" ))?>
                <span class="input-group-addon"><i class="fa fa-user"></i></span>
            </div>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1"><?php echo __('Password');?></label>
            <div class="input-group">
                <?php echo $this->Form->input("password" ,array("type"=>"password",'label' => false ,'div' => false,'Placeholder'=>__('Password'),'class'=>"form-control" ))?>

                <span class="input-group-addon"><i class="fa fa-key"></i></span>
            </div>
        </div>
        <button type="submit" class="btn btn-primary btn-lg btn-block"><?php echo __('Login');?></button>
        <div class="form-group help">
            <div class="checkbox pull-left">
                <label>
                    <input type="checkbox"> <span><?php echo __('Stay Signed In');?></span>
                </label>
            </div>
            <div class="need-text pull-right">
                 <?php echo $this->Html->link( __('Forgot Password'), array('plugin'=>'usrmgmt','controller'=>'users','action'=>'forgotPassword'),array('class'=>'need-help-reverse'));?>
            </div>
        </div>
        </form>
    </div>
</div>


<script>
    document.getElementById("UserEmail").focus();
</script>