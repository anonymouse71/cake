<div class="row">
<?php echo $this->Form->create('Period'); ?>
	<fieldset>
		<legend><?php echo __('Edit Period'); ?></legend>
	<?php
		echo $this->Form->input('id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control'));
		echo $this->Form->input('lesson_id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('from_timestamp',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('to_timestamp',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
	?>
	</fieldset>
<?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Period.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('Period.id'))); */?></li>
		<li><?php /*echo $this->Html->link(__('List Periods'), array('action' => 'index')); */?></li>
		<li><?php /*echo $this->Html->link(__('List Lessons'), array('controller' => 'lessons', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Lesson'), array('controller' => 'lessons', 'action' => 'add')); */?> </li>
	</ul>
</div>-->
