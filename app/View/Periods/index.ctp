<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Periods'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('lesson_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('name'); ?></th>
			
		<th><?php echo $this->Paginator->sort('from_timestamp'); ?></th>
			
		<th><?php echo $this->Paginator->sort('to_timestamp'); ?></th>
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
		<th><?php echo $this->Paginator->sort('modified'); ?></th>
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($periods as $period): ?>
	<tr>
		<td>
			<?php echo $this->Html->link($period['Lesson']['name'], array('controller' => 'lessons', 'action' => 'view', $period['Lesson']['id'])); ?>
		</td>
		<td><?php echo h($period['Period']['name']); ?>&nbsp;</td>
		<td><?php echo h($period['Period']['from_timestamp']); ?>&nbsp;</td>
		<td><?php echo h($period['Period']['to_timestamp']); ?>&nbsp;</td>
		<td><?php echo h($period['Period']['created']); ?>&nbsp;</td>
		<td><?php echo h($period['Period']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $period['Period']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $period['Period']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $period['Period']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $period['Period']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
