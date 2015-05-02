

<legend><?php echo __('Add Category'); ?></legend>

<div class="tabbable page-tabs">

	<ul class="nav nav-tabs">

		<li class="active"><a href="#activity" data-toggle="tab"> Category</a></li>

<!--		<li><a href="#contacts" data-toggle="tab"><i class="icon-accessibility"></i> My contacts <span class="label label-danger">34</span></a></li>-->

<!--		<li><a href="#tasks" data-toggle="tab"><i class="icon-grid"></i> My tasks <span class="label label-primary">31</span></a></li>-->

<!--		<li><a href="#invoices" data-toggle="tab"><i class="icon-cart2"></i> My invoices <span class="label label-primary">9</span></a></li>-->

	</ul>

	<div class="tab-content">
		<div id="activity" class="tab-pane fade active in">
			<?php echo $this->Form->create('Category'); ?>
			<fieldset>

				<div class="row">
					<div class="col-md-11 col-md-offset-1">

					<div class="form-group col-md-12">
						<?php echo $this->Form->input('name',array('div' => array('class' => 'col-md-5'), 'type'=>'text','class'=>'form-control'));?>
					</div>



					<div class="col-md-12 ">
						<?php echo $this->Form->input('parent_id',array('options'=>$parentCategories,  'div' => array('class' => 'col-md-3 form-group'), 'class'=>'form-control')); ?>
					</div>
				</div>
					<div class="col-md-2 pull-left">
						<button type="submit" class="finish btn btn-primary"><i class="glyphicon glyphicon-ok icon-white"></i> Submit</button>

					</div>
				</div>
			</fieldset>

			</div>


		</div>
		<!--<div id="contacts" class="tab-pane fade">Hello</div>
		<div id="task" class="tab-pane fade">Hello</div>
		<div id="invoices" class="tab-pane fade">Hello</div>-->

	</div><br/><br/>













<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Html->link(__('List Categories'), array('action' => 'index')); */?></li>
		<li><?php /*echo $this->Html->link(__('List Categories'), array('controller' => 'categories', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Parent Category'), array('controller' => 'categories', 'action' => 'add')); */?> </li>
		<li><?php /*echo $this->Html->link(__('List Courses'), array('controller' => 'courses', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Course'), array('controller' => 'courses', 'action' => 'add')); */?> </li>
		<li><?php /*echo $this->Html->link(__('List Lessons'), array('controller' => 'lessons', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Lesson'), array('controller' => 'lessons', 'action' => 'add')); */?> </li>
	</ul>
</div>
-->