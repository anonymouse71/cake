<div class="row">
<?php echo $this->Form->create('Usrgroup'); ?>
	<fieldset>
		<legend><?php echo __('Edit Usrgroup'); ?></legend>
	<?php
		echo $this->Form->input('id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control'));
		echo $this->Form->input('name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('description',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('active',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('dynamic',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('user_type_id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('users_active',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('assign_profile_to_new',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('unique_key',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('is_default',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('key_max_usage',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('key_current_usage',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('Course',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('Lesson',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('User',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
	?>
	</fieldset>
<?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Usrgroup.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('Usrgroup.id'))); */?></li>
		<li><?php /*echo $this->Html->link(__('List Usrgroups'), array('action' => 'index')); */?></li>
		<li><?php /*echo $this->Html->link(__('List User Types'), array('controller' => 'user_types', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New User Type'), array('controller' => 'user_types', 'action' => 'add')); */?> </li>
		<li><?php /*echo $this->Html->link(__('List Courses'), array('controller' => 'courses', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Course'), array('controller' => 'courses', 'action' => 'add')); */?> </li>
		<li><?php /*echo $this->Html->link(__('List Lessons'), array('controller' => 'lessons', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Lesson'), array('controller' => 'lessons', 'action' => 'add')); */?> </li>
		<li><?php /*echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); */?> </li>
	</ul>
</div>-->
