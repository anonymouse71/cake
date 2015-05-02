<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Announcements'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
<!--		<th>--><?php //echo $this->Paginator->sort('model_name'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('model_foreign_key'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('title'); ?></th>
			
		<th><?php echo $this->Paginator->sort('data'); ?></th>
			
		<th><?php echo $this->Paginator->sort('expire'); ?></th>
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($announcements as $announcement): ?>
	<tr>
<!--		<td>--><?php //echo h($announcement['Announcement']['model_name']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($announcement['Announcement']['model_foreign_key']); ?><!--&nbsp;</td>-->
		<td><?php echo h($announcement['Announcement']['title']); ?>&nbsp;</td>
		<td><?php echo h($announcement['Announcement']['data']); ?>&nbsp;</td>
		<td><?php echo $this->Time->niceShort(h($announcement['Announcement']['expire'])); ?>&nbsp;</td>
		<td><?php echo $this->Time->niceShort(h($announcement['Announcement']['created'])); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($announcement['Announcement']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $announcement['Announcement']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $announcement['Announcement']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $announcement['Announcement']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $announcement['Announcement']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
