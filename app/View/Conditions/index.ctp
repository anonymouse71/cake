<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Conditions'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('lesson_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('type'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('options'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('relation'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($conditions as $condition): ?>
	<tr>
		<td>
			<?php echo $this->Html->link($condition['Lesson']['name'], array('controller' => 'lessons', 'action' => 'view', $condition['Lesson']['id'])); ?>
		</td>
		<td><?php echo h($condition['Condition']['type']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($condition['Condition']['options']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($condition['Condition']['relation']); ?><!--&nbsp;</td>-->
		<td><?php echo h($condition['Condition']['created']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($condition['Condition']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $condition['Condition']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $condition['Condition']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $condition['Condition']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $condition['Condition']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
