<div class="row">
<?php echo $this->Form->create('Forum'); ?>
	<fieldset>
		<legend><?php echo __('Add Forum'); ?></legend>
	<?php
		/*echo $this->Form->input('model_name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('model_foreign_key',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));*/
		echo $this->Form->input('title',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('status',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('comments',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('rate',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
	?>
	</fieldset>
<?php echo $this->Form->input( __('Save'), array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Html->link(__('List Forums'), array('action' => 'index')); */?></li>
		<li><?php /*echo $this->Html->link(__('List Topics'), array('controller' => 'topics', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Topic'), array('controller' => 'topics', 'action' => 'add')); */?> </li>
	</ul>
</div>-->
