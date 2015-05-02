
<div class="row">
<?php echo $this->Form->create('Topic'); ?>
	<fieldset>
		<legend><?php echo __('Add Topic'); ?></legend>
	<?php
		echo $this->Form->input('forum_id',array('div' => array('class' => 'form-group col-md-12'),'class'=>'form-control'));
		echo $this->Form->input('title',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('views',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('status',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('sticky',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('comments',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('viewed_by',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
	?>
	</fieldset>
<?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Html->link(__('List Topics'), array('action' => 'index')); */?></li>
		<li><?php /*echo $this->Html->link(__('List Forums'), array('controller' => 'forums', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Forum'), array('controller' => 'forums', 'action' => 'add')); */?> </li>
		<li><?php /*echo $this->Html->link(__('List Posts'), array('controller' => 'posts', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Post'), array('controller' => 'posts', 'action' => 'add')); */?> </li>
	</ul>
</div>-->
