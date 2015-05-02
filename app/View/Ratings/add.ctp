<div class="row">
<?php echo $this->Form->create('Rating'); ?>
	<fieldset>
		<legend><?php echo __('Add Rating'); ?></legend>
	<?php
		echo $this->Form->input('title',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('User',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
	?>
	</fieldset>
<?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Html->link(__('List Ratings'), array('action' => 'index')); */?></li>
		<li><?php /*echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); */?> </li>
	</ul>
</div>-->
