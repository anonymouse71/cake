<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Resources'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('lesson_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('path'); ?></th>
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
		<th><?php echo $this->Paginator->sort('modified'); ?></th>
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($resources as $resource): ?>
	<tr>
		<td>
			<?php echo $this->Html->link($resource['Lesson']['name'], array('controller' => 'lessons', 'action' => 'view', $resource['Lesson']['id'])); ?>
		</td>
		<td><?php echo h($resource['Resource']['path']); ?>&nbsp;</td>
		<td><?php echo h($resource['Resource']['created']); ?>&nbsp;</td>
		<td><?php echo h($resource['Resource']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $resource['Resource']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $resource['Resource']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $resource['Resource']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $resource['Resource']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
