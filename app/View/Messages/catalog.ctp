<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Messages'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('sender'); ?></th>
			
		<th><?php echo $this->Paginator->sort('receiver'); ?></th>
			
		<th><?php echo $this->Paginator->sort('title'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('description'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('attachments'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('bcc'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('is_read'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('is_important'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('is_draft'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('is_trash'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('created'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($messages as $message): ?>
	<tr>
		<td><?php echo h($message['Message']['sender']); ?>&nbsp;</td>
		<td><?php echo h($message['Message']['receiver']); ?>&nbsp;</td>
		<td><?php echo h($message['Message']['title']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($message['Message']['description']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($message['Message']['attachments']); ?><!--&nbsp;</td>-->
		<td><?php echo h($message['Message']['bcc']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($message['Message']['is_read']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($message['Message']['is_important']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($message['Message']['is_draft']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($message['Message']['is_trash']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($message['Message']['created']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($message['Message']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'detail', $message['Message']['id']), array('escape'=>false)); ?>
			<?php //echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $message['Message']['id']), array('escape'=>false)); ?>
			<?php //echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $message['Message']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $message['Message']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
