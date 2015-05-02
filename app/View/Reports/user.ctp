<div class="panel panel-default">
	<div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Users Report'); ?></h6></div>

	<div class="panel-body">
		<br/>
		<?php echo $this->Form->input('id',array('id'=>'userId','options'=>$users,'label'=>false,'div' => array('class' => 'form-group col-md-12'), 'class'=>'form-control')); ?>
	</div>
	
</div>