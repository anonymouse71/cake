
<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="container-fluid">
					<?php echo $this->Form->create('Lesson',array('type'=>'file', 'class'=>'stepy-wizzard form-horizontal','id'=>'simple_wizard')); ?>

					<div class="tabbable page-tabs">

						<ul class="nav nav-tabs">

							<li class="active"><a href="#activity" data-toggle="tab"><i class="icon-file"></i> <strong><?php echo __('Edit Lesson'); ?></a></strong></li>

								</ul>

						<div class="tab-content">
							<div id="activity" class="tab-pane fade active in">
								<fieldset title="Basic">

									<legend class="hide">Lorem ipsum dolor&hellip;</legend>
										<?php echo $this->Form->input('id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control'));?>
									<div class="col-md-11 col-md-offset-1">
										<?php echo $this->Form->input('name',array('div' => array('class' => 'form-group col-md-10'), 'type'=>'text','class'=>'form-control','placeholder'=>'Enter lesson name')); ?>
									</div>

									<div class="col-md-10 col-md-offset-1">
										<div class="col-md-4 ">
											<?php echo $this->Form->input('category_id',array('options'=>$categories,'div' => array('class' => 'form-group'), 'class'=>'form-control')); ?>
										</div>
										<!--<div class="col-md-4 col-md-offset-1">
									<?php /*echo $this->Form->input('CourseLesson.course_id',array('options'=>$courses,'div' => array('class' => 'form-group'), 'class'=>'form-control')); */?>
								</div>-->
									</div>
									<div class="col-md-11 col-md-offset-1">
										<?php echo $this->Form->input('active',array('type'=>'checkbox','class'=>'', 'checked')); ?>
									</div>
									<div class="col-md-11 col-md-offset-1">
										<?php	echo $this->Form->input('course_only',array('type'=>'checkbox','class'=>''));?>
									</div>
									<div class="col-md-11 col-md-offset-1">
										<?php echo $this->Form->input('show_catalog',array('type'=>'checkbox','class'=>'', 'checked')); ?>
									</div>
									<div class="col-md-11 col-md-offset-1">
										<?php
										echo $this->Form->input('price',array('div' => array('class' => 'form-group col-md-4'), 'type'=>'text','class'=>'form-control'));
										?>
									</div>
									<div class="col-md-2 pull-left">
										<button type="submit" class="finish btn btn-primary"><i class="glyphicon glyphicon-ok icon-white"></i> Submit</button>

									</div>
								</fieldset>
							</div>

						</div>

					</div>

					<?php echo $this->Form->end(); ?>
				</div>
			</div>
		</div>
	</div>
</div>
<br/><br/>










