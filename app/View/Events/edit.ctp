<div class="row">
<?php echo $this->Form->create('Event'); ?>
	<fieldset>
		<legend><?php echo __('Edit Event'); ?></legend>
	<?php
		echo $this->Form->input('id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control'));
//		echo $this->Form->input('model_name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('model_foreign_key',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('username',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('type',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('entityID',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('entity_name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
	?>
	</fieldset>
<?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Event.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('Event.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Events'), array('action' => 'index')); ?></li>
	</ul>
</div>
