<div class="row">
    <div class="col-md-4 col-md-offset-4">
        <div class="login-box">
            <h3>Login</h3>
            <?php echo $this->Form->create('User', array('action' => 'login')); ?>
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <div class="input-group">

                        <?php echo $this->Form->input("" ,array('label' => null,'Placeholder'=>'Email','div' => false,'class'=>"form-control" ))?>
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <div class="input-group">
                        <?php echo $this->Form->input("" ,array("type"=>"password",'label' => null ,'div' => false,'Placeholder'=>'Password','class'=>"form-control" ))?><i class="icon-lock form-control-feedback"></i>
                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
                <div class="form-group help">
                    <div class="checkbox pull-left">
                        <label>
                            <input type="checkbox"> <span>Stay signed in</span>
                        </label>
                    </div>
                    <div class="need-text pull-right">
                        <a class="need-help-reverse" href="#" id="link-forgot-passwd"> Need help? </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>