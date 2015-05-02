<div class="row">
<?php echo $this->Form->create('Condition'); ?>
	<fieldset>
		<legend><?php echo __('Add Condition'); ?></legend>
	<?php
		echo $this->Form->input('lesson_id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('type',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('options',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('relation',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
	?>
	</fieldset>
<?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Html->link(__('List Conditions'), array('action' => 'index')); */?></li>
		<li><?php /*echo $this->Html->link(__('List Lessons'), array('controller' => 'lessons', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Lesson'), array('controller' => 'lessons', 'action' => 'add')); */?> </li>
	</ul>
</div>
-->