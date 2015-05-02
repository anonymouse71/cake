<div class="row">
<?php echo $this->Form->create('Configuration'); ?>
	<fieldset>
		<legend><?php echo __('Add Configuration'); ?></legend>
	<?php
		echo $this->Form->input('name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
        $this->TinyMCE->editor(array('theme' => 'advanced', 'mode' => 'textareas'));
		echo $this->Form->input('value',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'textarea','class'=>'form-control'));
	?>
	</fieldset>
<?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Html->link(__('List Configurations'), array('action' => 'index')); */?></li>
	</ul>
</div>-->

