<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Events'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
<!--		<th>--><?php //echo $this->Paginator->sort('model_name'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('model_foreign_key'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('username'); ?></th>
			
		<th><?php echo $this->Paginator->sort('type'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('entityID'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('entity_name'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($events as $event): ?>
	<tr>
<!--		<td>--><?php //echo h($event['Event']['model_name']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($event['Event']['model_foreign_key']); ?><!--&nbsp;</td>-->
		<td><?php echo h($event['Event']['username']); ?>&nbsp;</td>
		<td><?php echo h($event['Event']['type']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($event['Event']['entityID']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($event['Event']['entity_name']); ?><!--&nbsp;</td>-->
		<td><?php echo $this->Time->niceshort(h($event['Event']['created'])); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($event['Event']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $event['Event']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $event['Event']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $event['Event']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $event['Event']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
