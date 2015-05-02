<div class="row">
<?php echo $this->Form->create('News', array('type'=>'file')); ?>
	<fieldset>
		<legend><?php echo __('Edit News'); ?></legend>
	<?php
		echo $this->Form->input('id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control'));
		/*echo $this->Form->input('model_name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('model_foreign_key',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));*/
		echo $this->Form->input('title',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
/*    echo $this->Form->input('expire', array( 'label' => 'Date',
        'type'=>'date',
        'dateFormat'=> 'DMY',
        'minYear' => date('Y') - 70,
        'maxYear' => date('Y') - 1
    ));*/
    echo $this->Form->input('expire', array( 'label' => false, 'class'=>'form-control',
        'dateFormat' => 'DMY',
        'minYear' => date('Y') - 5,
        'maxYear' => date('Y') + 5,
        'between' => '<div class="col-md-2">',
        'separator' => '</div><div class="col-md-2">',
        'after' => '</div>',

    ));
    echo $this->Form->input('image',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'file','class'=>'form-control','style'=>'padding:0px'));
        $this->TinyMCE->editor(array('theme' => 'advanced', 'mode' => 'textareas'));
		echo $this->Form->input('data',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'textarea','class'=>'form-control'));


//		echo $this->Form->input('expire',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		/*echo $this->Form->input('users_LOGIN',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));*/
	?>
	</fieldset><br/>
<?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('News.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('News.id'))); */?></li>
		<li><?php /*echo $this->Html->link(__('List News'), array('action' => 'index')); */?></li>
	</ul>
</div>
-->