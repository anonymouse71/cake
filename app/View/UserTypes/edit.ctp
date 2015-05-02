<div class="row">
<?php echo $this->Form->create('UserType'); ?>
	<fieldset>
		<legend><?php echo __('Edit User Type'); ?></legend>
	<?php
		echo $this->Form->input('id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control'));
		echo $this->Form->input('name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('basic_user_type',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('core_access',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('modules_access',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('active',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
	?>
	</fieldset>
<?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('UserType.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('UserType.id'))); */?></li>
		<li><?php /*echo $this->Html->link(__('List User Types'), array('action' => 'index')); */?></li>
		<li><?php /*echo $this->Html->link(__('List Usrgroups'), array('controller' => 'usrgroups', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Usrgroup'), array('controller' => 'usrgroups', 'action' => 'add')); */?> </li>
	</ul>
</div>-->
