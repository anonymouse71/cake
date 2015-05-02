<div class="row">
<?php echo $this->Form->create('Article'); ?>
	<fieldset>
		<legend><?php echo __('Edit Article'); ?></legend>
	<?php
		echo $this->Form->input('id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control'));
		/*echo $this->Form->input('blog_id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));*/
		echo $this->Form->input('title',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		echo $this->Form->input('data',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		/*echo $this->Form->input('active',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));*/
	?>
	</fieldset>
<?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?></div>
<!--<div class="actions">
	<h3><?php /*echo __('Actions'); */?></h3>
	<ul>

		<li><?php /*echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Article.id')), array(), __('Are you sure you want to delete # %s?', $this->Form->value('Article.id'))); */?></li>
		<li><?php /*echo $this->Html->link(__('List Articles'), array('action' => 'index')); */?></li>
		<li><?php /*echo $this->Html->link(__('List Blogs'), array('controller' => 'blogs', 'action' => 'index')); */?> </li>
		<li><?php /*echo $this->Html->link(__('New Blog'), array('controller' => 'blogs', 'action' => 'add')); */?> </li>
	</ul>
</div>
-->