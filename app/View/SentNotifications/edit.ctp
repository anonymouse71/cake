<div class="row">
<?php echo $this->Form->create('SentNotification'); ?>
	<fieldset>
		<legend><?php echo __('Edit Sent Notification'); ?></legend>
	<?php
		echo $this->Form->input('id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control'));
		echo $this->Form->input('recipient',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('subject',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('body',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
	?>
	</fieldset>
<?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('SentNotification.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('SentNotification.id'))); */?></li>
		<li><?php /*echo $this->Html->link(__('List Sent Notifications'), array('action' => 'index')); */?></li>
	</ul>
</div>-->
