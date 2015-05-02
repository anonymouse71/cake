    <div class="login-wrapper col-md-8">
        <h1>User Registration</h1>
	    	<?php echo $this->Form->create('User', array('action' => 'register')); ?>
	    	<?php #echo $this->Form->input("user_group_id" ,array('type' => 'hidden', 'label' => false,'div' => false,'value'=>"2" ))?>

	    	<!-- User only -->
	    	<div class="row">
			  <div class="col-md-6">
			    <div class="input-group">
			      <span class="input-group-addon">
			        <input type="radio" id="radioEmail" name="radioUser">
			      </span>
			      <?php echo $this->Form->input("loginEmail" ,array("type"=>"email",'label' => false,'Placeholder' => "Email",'readonly'=>true,'div' => false,'class'=>"form-control" ))?>
			    </div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
			  <div class="col-md-1 text-center">Or</div>
			  <div class="col-md-5">
			    <div class="input-group">
			      <span class="input-group-addon">
			        <input type="radio" id="radionPhone" name="radioUser">
			      </span>
			      <?php echo $this->Form->input("loginPhone" ,array("type"=>"tel",'label' => false,'Placeholder' => "Number",'readonly'=>true,'div' => false,'class'=>"form-control" ))?>
			    </div><!-- /input-group -->
			  </div><!-- /.col-lg-6 -->
			</div><!-- /.row --><br/>		
	    	<div class="form-group">
						<?php echo $this->Form->input("username" ,array('label' => false,'Placeholder'=>'Login Id you email or Phone','readonly'=>true,'div' => false,'class'=>"form-control" ))?>
			</div>
		<div class="row">
			<div class="form-group col-md-6">
				<?php echo $this->Form->input("password" ,array("type"=>"password",'label' => false,'Placeholder' => "Password",'div' => false,'class'=>"form-control" ))?>
			</div>
	            
	        <div class="form-group col-md-6">
				<?php echo $this->Form->input("cpassword" ,array("type"=>"password",'label' => false,'Placeholder' => 'Confirm Password','div' => false,'class'=>"form-control" ))?>
			</div>
		</div>
		<div class="row">
			<div class="form-group col-md-6">
					<?php echo $this->Form->input("first_name" ,array('Placeholder' => 'First Name','label' => false,'div' => false,'class'=>"form-control" ))?>
				</div>
                
                <div class="form-group col-md-6">
					<?php echo $this->Form->input("last_name" ,array('Placeholder' => 'Last Name','label' => false,'div' => false,'class'=>"form-control" ))?>
				</div>
		</div>
			<div class="form-group"><strong>Gender: </strong>
				<input type="radio" name="data[User][gender]" value="male"><span>  Male</span>
				<input type="radio" name="data[User][gender]" value="female"><span>  Female</span>
			</div>
			<div class="form-group">
				<?php echo $this->Form->input("email" ,array("type"=>"email",'label' => false,'Placeholder' => "Email",'div' => false,'class'=>"form-control" ))?>
			</div>
			<div class="form-group">
				<?php echo $this->Form->input("cell_phone" ,array("type"=>"tel",'label' => false,'Placeholder' => "Number",'div' => false,'class'=>"form-control" ))?>
			</div>

			<div class="col-xs-6">
					<button type="submit" class="btn btn-primary pull-right">Create Account</button>
			</div><br/>

	</div>


<script type="text/javascript">
	$('#radioEmail')
</script>
    

<script>
document.getElementById("UserUsername").focus();
</script>


<script type="text/javascript">

	$('#radioEmail').click(function(){
		$('#UserLoginEmail').removeAttr('readonly');
		$('#UserLoginPhone').val('').attr('readonly','readonly');
		$('#UserCellPhone').val('');
	});

	$('#radionPhone').click(function(){
		$('#UserLoginPhone').removeAttr('readonly');
		$('#UserLoginEmail').val('').attr('readonly','readonly');
		$('#UserEmail').val('');
	});

	$('#UserLoginEmail').keyup(function(){
		$('#UserUsername').val($(this).val());
		$('#UserEmail').val($(this).val());

		$('#UserEmail').attr('readonly','readonly');
		$('#UserCellPhone').removeAttr('readonly');
	});

	$('#UserLoginPhone').keyup(function(){
		$('#UserUsername').val($(this).val());
		$('#UserCellPhone').val($(this).val());

		$('#UserCellPhone').attr('readonly','readonly');
		$('#UserEmail').removeAttr('readonly');
	});

</script>