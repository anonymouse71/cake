<div class="col-md-6 col-md-offset-3">
    <div class="login-box">
        <h3><?php echo __('Forgot Password');?>?</h3>
        <?php echo $this->Form->create('User', array('action' => 'forgotPassword')); ?>

        <div class="form-group">
            <label for="exampleInputEmail1"><?php echo __('Email address');?></label>
            <div class="input-group">
                <?php echo $this->Form->input("email" ,array('label' => false,'type'=>"email", 'Placeholder'=>__('Email'),'div' => false,'class'=>"form-control" ))?>
                <span class="input-group-addon"><i class="fa fa-inbox"></i></span>
            </div>
        </div>

        <button type="submit" class="btn btn-primary btn-lg btn-block"><?php echo __('Send Password');?></button>

        <div class="form-group help">
            <div class="need-text pull-right">
                <?php echo $this->Html->link( __('Login'), array('plugin'=>'usrmgmt','controller'=>'users','action'=>'login'),array('class'=>'need-help-reverse'));?>
            </div>
        </div>

        </form>
    </div>
</div>


<script>
document.getElementById("UserEmail").focus();
</script>