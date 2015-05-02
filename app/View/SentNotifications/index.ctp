<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Sent Notifications'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('recipient'); ?></th>
			
		<th><?php echo $this->Paginator->sort('subject'); ?></th>
			
		<th><?php echo $this->Paginator->sort('body'); ?></th>
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
		<th><?php echo $this->Paginator->sort('modified'); ?></th>
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($sentNotifications as $sentNotification): ?>
	<tr>
		<td><?php echo h($sentNotification['SentNotification']['recipient']); ?>&nbsp;</td>
		<td><?php echo h($sentNotification['SentNotification']['subject']); ?>&nbsp;</td>
		<td><?php echo h($sentNotification['SentNotification']['body']); ?>&nbsp;</td>
		<td><?php echo h($sentNotification['SentNotification']['created']); ?>&nbsp;</td>
		<td><?php echo h($sentNotification['SentNotification']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $sentNotification['SentNotification']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $sentNotification['SentNotification']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $sentNotification['SentNotification']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $sentNotification['SentNotification']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
