<div class="row">
<?php echo $this->Form->create('News',array('type'=>'file')); ?>
	<fieldset>
		<legend><?php echo __('Add News'); ?></legend>
	<?php
		/*echo $this->Form->input('model_name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('model_foreign_key',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));*/
		echo $this->Form->input('title',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
        echo $this->Form->input('expire',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control datepicker'));
        echo $this->Form->input('image',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'file','class'=>'form-control','style'=>'padding:0px'));

  //       $this->TinyMCE->editor(array('theme' => 'advanced', 'mode' => 'textareas'));

		// echo $this->Form->input('data',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'textarea','class'=>'form-control'));

        echo $this->Form->input('data',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'textarea','class'=>'form-control ckeditor'));








    //		echo $this->Form->input('expire',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		/*echo $this->Form->input('users_LOGIN',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));*/
	?>
	</fieldset><br/>
<?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Html->link(__('List News'), array('action' => 'index')); */?></li>
	</ul>
</div>-->
