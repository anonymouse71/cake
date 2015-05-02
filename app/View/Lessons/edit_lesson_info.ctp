<h3 class="heading">
	<legend><?php echo __('Edit Lesson Information'); ?></legend>
</h3>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">

			<?php echo $this->Form->create('Lesson',array('type'=>'file', 'class'=>'stepy-wizzard form-horizontal','id'=>'simple_wizard')); ?>
			<div class="tabbable page-tabs">

				<ul class="nav nav-tabs">

					<li class="active"><a href="#activity" data-toggle="tab"><i class="icon-file"></i> Basic</a></li>

					<li><a href="#contacts" data-toggle="tab"><i class="icon-accessibility"></i> Details</a></li>


				</ul>

				<div class="tab-content">

					<div id="activity" class="tab-pane fade active in">

						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('id',array('div' => array('class' => 'form-group col-md-11'), 'type'=>'hidden','class'=>'form-control')); ?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('image',array('div' => array('class' => 'form-group col-md-11'), 'type'=>'file','class'=>'form-control','style'=>'padding:0px'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('description',array('div' => array('class' => 'form-group col-md-11'), 'type'=>'textarea','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('objectives',array('div' => array('class' => 'form-group col-md-11'), 'type'=>'textarea','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('assessment',array('div' => array('class' => 'form-group col-md-11'), 'type'=>'textarea','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('topics',array('div' => array('class' => 'form-group col-md-11'), 'type'=>'textarea','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('resources',array('div' => array('class' => 'form-group col-md-11'), 'type'=>'textarea','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('info',array('div' => array('class' => 'form-group col-md-11'), 'type'=>'textarea','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('learning_method',array('div' => array('class' => 'form-group col-md-11'), 'type'=>'textarea','class'=>'form-control'));?>
						</div>


					</div>
					<div id="contacts" class="tab-pane fade">

						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('created_by',array('div' => array('class' => 'form-group col-md-9'), 'type'=>'text','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('subject',array('div' => array('class' => 'form-group col-md-9'), 'type'=>'text','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('publisher',array('div' => array('class' => 'form-group col-md-9'), 'type'=>'text','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('contributor',array('div' => array('class' => 'form-group col-md-9'), 'type'=>'text','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('type',array('div' => array('class' => 'form-group col-md-9'), 'type'=>'text','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('format',array('div' => array('class' => 'form-group col-md-9'), 'type'=>'text','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('identifier',array('div' => array('class' => 'form-group col-md-9'), 'type'=>'text','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('source',array('div' => array('class' => 'form-group col-md-9'), 'type'=>'text','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('relation',array('div' => array('class' => 'form-group col-md-9'), 'type'=>'text','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('coverage',array('div' => array('class' => 'form-group col-md-9'), 'type'=>'text','class'=>'form-control'));?>
						</div>
						<div class="col-md-5 col-md-offset-1">
							<?php echo $this->Form->input('rights',array('div' => array('class' => 'form-group col-md-9'), 'type'=>'text','class'=>'form-control'));?>
						</div>
						<div class="col-md-1 col-md-offset-1">
							<button type="submit" class="finish btn btn-primary"><i class="icon-ok icon-white"></i> Submit</button>
						</div>

					</div>



				</div>


			</div>
			<?php echo $this->Form->end(); ?>

		</div>
	</div>
</div>
<br/><br/>