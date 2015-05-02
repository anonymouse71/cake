
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<h3 class="heading"><legend><?php echo __('Edit Course'); ?></legend></h3>
			<div class="row">
				<div class="container-fluid">
					<?php echo $this->Form->create('Course',array('type'=>'file', 'class'=>'stepy-wizzard form-horizontal', 'id'=>'simple_wizard')); ?>
					<!--				<form id="simple_wizard" class="stepy-wizzard form-horizontal">-->
					<?php echo $this->Form->input('id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control')); ?>
					<div class="tabbable page-tabs">

						<ul class="nav nav-tabs">

							<li class="active"><a href="#activity" data-toggle="tab"> Edit Course</a></li>

							<li><a href="#contacts" data-toggle="tab"> Course Lessons</a></li>

							<li><a href="#tasks" data-toggle="tab"> Course Users</a></li>


						</ul>

						<div class="tab-content">
							<div id="activity" class="tab-pane fade active in">
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

								<?php echo $this->Form->input(__('Save'), array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success')); ?>
							</div>
							<div id="contacts" class="tab-pane fade">
								<div class="datatable">
									<table class="table table-bordered table-hover">
										<thead>
										<tr>

											<!--		<th>--><?php //echo $this->Paginator->sort('category_id'); ?><!--</th>-->

											<th><?php echo __('Lesson Name'); ?></th>
											<th><?php echo __('Categories'); ?></th>
											<th><?php echo __('Active'); ?></th>
											<th><?php echo __('Created'); ?></th>
											<th><?php echo __('Select'); ?></th>


											<!--								<th class="actions">--><?php //echo __('Actions'); ?><!--</th>-->
										</tr>
										</thead>
										<tbody>
										<?php foreach ($lessons as $lesson): ?>
											<tr>
												<!--		<td>-->
												<!--			--><?php //echo $this->Html->link($course['Category']['name'], array('controller' => 'categories', 'action' => 'view', $course['Category']['id'])); ?>
												<!--		</td>-->
												<td><?php echo h($lesson['Lesson']['name']); ?>&nbsp;</td>
												<td><?php echo h($lesson['Category']['name']); ?>&nbsp;</td>

												<td class="text-center" id="setActiveInactive">
													<?php if ($lesson['Lesson']['active']){ ?>
														<i style="color:green;cursor:pointer" class="glyphicon glyphicon-eye-open setStatus" title="Set Inactive" data-id="<?php echo $lesson['Lesson']['id'] ?>" data-status="1"></i>
													<?php }else{ ?>
														<i style="color:red;cursor:pointer" class="glyphicon glyphicon-eye-close setStatus" title="Set Active" data-id="<?php echo $lesson['Lesson']['id'] ?>" data-status="0"></i>
													<?php } ?>

												</td>

												<td><?php echo $this->Time->niceShort(h($lesson['Lesson']['created'])); ?>&nbsp;</td>
												<td><input type="checkbox" id="chkLesson_<?=$lesson['Lesson']['id']?>" name="data['CourseLesson']['lesson_id']" value="<?=$lesson['Lesson']['id']?>"></td>

											</tr>
										<?php endforeach; ?>
										</tbody>
									</table>
								</div>
							</div>
							<div id="tasks" class="tab-pane fade">
								<div class="datatable">
									<table class="table table-bordered table-hover">
										<thead>
										<tr>
											<th><?php echo __('User'); ?></th>
											<th><?php echo __('User Role'); ?></th>
											<th><?php echo __('Enrolled on'); ?></th>
											<th><?php echo __('Completed on'); ?></th>
											<th><?php echo __('Status'); ?></th>
											<th><?php echo __('Completed'); ?></th>
											<th><?php echo __('Score'); ?></th>
											<th><?php echo __('Operations'); ?></th>
											<th><?php echo __('Check'); ?></th>
										</tr>
										</thead>
										<tbody>
										<?php foreach ($users as $user): ?>
											<tr>

												<td><?php echo h($user['User']['first_name'].' '.$user['User']['last_name'].'('.$user['User']['email']).')'; ?>&nbsp;</td>
												<td><?php echo $this->Form->input('',array('options'=>$user_types,'div' => array('class' => 'col-md-12 form-group'), 'class'=>'form-control')); ?>&nbsp;</td>
												<td><?php echo $this->Time->niceShort(h($user['CourseUser']['created'])); ?>&nbsp;</td>
												<td></td>
												<td class="text-center" id="setActiveInactive">
													<?php if ($user['User']['status']){ ?>
														<i style="color:green;cursor:pointer" class="glyphicon glyphicon-eye-open setStatus" title="Set Inactive" data-id="<?php echo $user['User']['id'] ?>" data-status="1"></i>
													<?php }else{ ?>
														<i style="color:red;cursor:pointer" class="glyphicon glyphicon-eye-close setStatus" title="Set Active" data-id="<?php echo $user['User']['id'] ?>" data-status="0"></i>
													<?php } ?>

												</td>

												<td class="text-center" id="setActiveInactive">
													<?php if ($user['CourseUser']['completed']){ ?>
														<i style="color:green;cursor:pointer" class="glyphicon glyphicon-eye-open setStatus" title="Set Inactive" data-id="<?php echo $user['CourseUser']['id'] ?>" data-status="1"></i>
													<?php }else{ ?>
														<i style="color:red;cursor:pointer" class="glyphicon glyphicon-eye-close setStatus" title="Set Active" data-id="<?php echo $user['CourseUser']['id'] ?>" data-status="0"></i>
													<?php } ?>

												</td>




												<td><?php echo h($user['CourseUser']['score']); ?>&nbsp;</td>


												<td></td>

												<td><input type="checkbox" id="chkUser_<?=$user['CourseUser']['user_id']?>" name="data['CourseUser']['user_id']" value="<?=$user['CourseUser']['user_id']?>"></td>

											</tr>
										<?php endforeach; ?>
										</tbody>
									</table>
								</div>
							</div>

						</div>

					</div>


					<?php $this->Form->end(); ?>
				</div>
			</div>
		</div>
	</div>
</div><br/><br/>




<!--<div class="row">
<?php /*echo $this->Form->create('Course',array('type'=>'file')); */?>
	<fieldset>
		<legend><?php /*echo __('Edit Course'); */?> <a href="<?php /*echo $this->webroot . 'courses/course_users/' .$id */?>">Course Users</a> <a href="<?php /*echo $this->webroot . 'courses/course_lessons/' .$id */?>">Course Lessons</a></legend>
	<?php
/*		echo $this->Form->input('image',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'file','class'=>'form-control','style'=>'padding:0px'));
		echo $this->Form->input('id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control'));
		echo $this->Form->input('category_id',array('div' => array('class' => 'form-group col-md-12'),'class'=>'form-control'));
		echo $this->Form->input('name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		
		echo $this->Form->input('who_it_is_for',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('usually_asked_question',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('type',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));

		echo $this->Form->input('duration_per_week',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('duration_hour_per_week',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		*/?>

		<div class="form-group col-md-12"><?php /*echo $this->Form->input('active',array('div' => false, 'type'=>'checkbox')); */?></div>

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

        <div class="form-group col-md-12">&nbsp;<?php /*echo $this->Form->input('show_catalog',array('div' => false, 'type'=>'checkbox')); */?></div>

        <?php
/*//		echo $this->Form->input('show_catalog',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('publish',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
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
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Course.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('Course.id'))); */?></li>
		<li><?php /*echo $this->Html->link(__('List Courses'), array('action' => 'index')); */?></li>
		<li><?php /*echo $this->Html->link(__('List Categories'), array('controller' => 'categories', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Category'), array('controller' => 'categories', 'action' => 'add')); */?> </li>
		<li><?php /*echo $this->Html->link(__('List Lessons'), array('controller' => 'lessons', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Lesson'), array('controller' => 'lessons', 'action' => 'add')); */?> </li>
		<li><?php /*echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); */?> </li>
		<li><?php /*echo $this->Html->link(__('List Usrgroups'), array('controller' => 'usrgroups', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Usrgroup'), array('controller' => 'usrgroups', 'action' => 'add')); */?> </li>
	</ul>
</div>
-->

<?php
$this->append('jsRegion');
?>
<script>
	var wr = '<?php echo $this->base;?>';

	$(document).ready(function(){


		$("input[id ^='chkLesson_']").bind('toggle',function(){
			alert('hello');
		});


		//$('#chkLesson')

	});
</script>
<?php
$this->end();
?>