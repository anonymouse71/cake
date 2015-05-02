<div class="row">
<?php echo $this->Form->create('Poll'); ?>
	<fieldset>
		<legend><?php echo __('Edit Poll'); ?></legend>
	<?php
		echo $this->Form->input('id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control'));
		/*echo $this->Form->input('model_name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('model_foreign_key',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));*/
		echo $this->Form->input('title',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('question',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('option1',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('option2',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('option3',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('option4',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('option5',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('options',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('timestamp_start',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('timestamp_end',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('views',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('sticky',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('comments',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('User',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
	?>
	</fieldset>
<?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Poll.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('Poll.id'))); */?></li>
		<li><?php /*echo $this->Html->link(__('List Polls'), array('action' => 'index')); */?></li>
		<li><?php /*echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); */?> </li>
	</ul>
</div>-->
