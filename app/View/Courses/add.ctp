<div class="container-fluid">
<div class="row">
	<div class="col-md-12">
		<h3 class="heading"><legend><?php echo __('Add Course'); ?></legend></h3>
		<div class="row">
			<div class="container-fluid">
				<div class="tabbable page-tabs">

					<ul class="nav nav-tabs">

						<li class="active"><a href="#activity" data-toggle="tab"><?php echo __('Course Add') ?></a></li>

					</ul>

					<div class="tab-content">
						<div id="activity" class="tab-pane fade active in">
							<?php echo $this->Form->create('Course',array('type'=>'file', 'class'=>'stepy-wizzard form-horizontal', 'id'=>'simple_wizard')); ?>
							<!--				<form id="simple_wizard" class="stepy-wizzard form-horizontal">-->

								<div class="col-md-11 col-md-offset-1">
									<?php echo $this->Form->input('name',array('div' => array('class' => 'formSep form-group col-md-5'), 'type'=>'text','class'=>'form-control')); ?>
								</div>

								<div class="col-md-11 col-md-offset-1">

									<?php echo $this->Form->input('category_id',array('options'=>$categories,'div' => array('class' => 'formSep form-group col-md-3'),'class'=>'form-control')); ?>
								</div>
								<div class="col-md-11 col-md-offset-1">
									<?php echo $this->Form->input('active',array('type'=>'checkbox','class'=>'')); ?>
								</div>

								<div class="col-md-11 col-md-offset-1">
									<?php echo $this->Form->input('show_catalog',array('type'=>'checkbox','class'=>'')); ?>
								</div>
								<div class="col-md-11 col-md-offset-1">
									<?php echo $this->Form->input('price',array('div' => array('class' => 'form-group col-md-3'), 'type'=>'text','class'=>'form-control')); ?>
								</div>

							<button type="button" class="finish btn btn-primary pull-left col-md-offset-1"><i class="glyphicon glyphicon-ok icon-white"></i> Submit</button>
							<?php $this->Form->end(); ?>
						</div>

					</div>

				</div>


			</div>
		</div>
	</div>
</div>
</div><br/><br/>





<!--<div class="row">
<?php /*echo $this->Form->create('Course',array('type'=>'file')); */?>
	<fieldset>
		<legend><?php /*echo __('Add Course'); */?></legend>
	<?php
/*		echo $this->Form->input('image',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'file','class'=>'form-control','style'=>'padding:0px'));
		echo $this->Form->input('category_id',array('options'=>$categories,'div' => array('class' => 'form-group col-md-12'),'class'=>'form-control'));
		echo $this->Form->input('name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));

		echo $this->Form->input('who_it_is_for',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('usually_asked_question',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('type',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		

		echo $this->Form->input('duration_per_week',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('duration_hour_per_week',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));

		*/?>

		<div class="form-group col-md-4">
			<?php /*echo $this->Form->input('active',array('type'=>'checkbox','class'=>'')); */?>
		</div>
		<div class="form-group col-md-4">
			<?php /*echo $this->Form->input('show_catalog',array('type'=>'checkbox','class'=>'')); */?>
		</div>
		
		<?php
/*
		$status = array('ongoing'=>'Ongoing','upcomming'=>'Upcomming');
		echo $this->Form->input('status',array('div' => array('class' => 'form-group col-md-12'),'class'=>'form-control','options'=>$status));

//		echo $this->Form->input('active',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('archive',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('start_date',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control datepicker'));
		echo $this->Form->input('end_date',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control datepicker'));
//		echo $this->Form->input('options',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('price',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control')); */?>

<?php
/*//		echo $this->Form->input('publish',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('reset',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('certificate_expiration',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('reset_interval',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('max_users',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('rules',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('instance_source',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('depends_on',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('ceu',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('description',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('objectives',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('assessment',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('topics',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('resources',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('info',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('learning_method',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('subject',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('publisher',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('contributor',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('type',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('format',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('identifier',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('source',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('relation',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('coverage',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('rights',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('Lesson',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('User',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('Usrgroup',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
	*/?>
	</fieldset>
<?php /*echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 */?></div>-->

