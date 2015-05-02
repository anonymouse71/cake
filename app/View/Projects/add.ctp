<div class="row">
<?php echo $this->Form->create('Project'); ?>
	<fieldset>
		<legend><?php echo __('Add Project'); ?></legend>
        <div class="tabbable page-tabs">

            <ul class="nav nav-tabs">

                <li class="active"><a href="#activity" data-toggle="tab"> Project</a></li>
            </ul>
	<?php
//		echo $this->Form->input('model_name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('model_foreign_key',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('title',array('div' => array('class' => 'form-group col-md-2'), 'type'=>'text','class'=>'form-control'));

//		echo $this->Form->input('data',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
        echo $this->Form->input('deadline',array('div' => array('class' => 'form-group col-md-3'), 'type'=>'text','class'=>'form-control datepicker'));
    ?>
            <div class="col-md-11">
							<?php echo $this->Form->input('auto_assign',array('type'=>'checkbox','class'=>'')); ?>
        </div><?php
            echo $this->Form->input('htmlized_data',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'textarea','class'=>'form-control ckeditor'));
//		echo $this->Form->input('deadline',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control datepicker'));


//		echo $this->Form->input('auto_assign',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('metadata',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
//		echo $this->Form->input('User',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
	?>
	</fieldset>
<?php echo $this->Form->input( __('Save'), array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!-- <div class="actions">
	<h3><?php //echo __('Actions'); ?></h3>
	<ul>

		<li><?php //echo $this->Html->link(__('List Projects'), array('action' => 'index')); ?></li> -->
<!--		<li>--><?php //echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?><!-- </li>-->
<!--		<li>--><?php //echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?><!-- </li>-->
	<!-- </ul>
</div> -->
