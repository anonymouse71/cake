<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Notifications'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
<!--		<th>--><?php //echo $this->Paginator->sort('model_name'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('model_foreign_key'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('send_interval'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('send_conditions'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('id_type_entity'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('recipient'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('subject'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('message'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('active'); ?></th>
			
		<th><?php echo $this->Paginator->sort('html_message'); ?></th>
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($notifications as $notification): ?>
	<tr>
<!--		<td>--><?php //echo h($notification['Notification']['model_name']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($notification['Notification']['model_foreign_key']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($notification['Notification']['send_interval']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($notification['Notification']['send_conditions']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($notification['Notification']['id_type_entity']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($notification['Notification']['recipient']); ?><!--&nbsp;</td>-->
		<td><?php echo h($notification['Notification']['subject']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($notification['Notification']['message']); ?><!--&nbsp;</td>-->
		<td><?php echo h($notification['Notification']['active']); ?>&nbsp;</td>
		<td><?php echo h($notification['Notification']['html_message']); ?>&nbsp;</td>
		<td><?php echo $this->time->niceshort( h($notification['Notification']['created'])); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($notification['Notification']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $notification['Notification']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $notification['Notification']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $notification['Notification']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $notification['Notification']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
