<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Invitees'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('event_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('user_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('email'); ?></th>
			
		<th><?php echo $this->Paginator->sort('going'); ?></th>
			
		<th><?php echo $this->Paginator->sort('may_be'); ?></th>
			
		<th><?php echo $this->Paginator->sort('joined'); ?></th>
			
		<th><?php echo $this->Paginator->sort('created_at'); ?></th>
			
		<th><?php echo $this->Paginator->sort('updated_at'); ?></th>
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($invitees as $invitee): ?>
	<tr>
		<td>
			<?php echo $this->Html->link($invitee['Event']['title'], array('controller' => 'events', 'action' => 'view', $invitee['Event']['id'])); ?>
		</td>
		<td>
			<?php echo $this->Html->link($invitee['User']['id'], array('controller' => 'users', 'action' => 'view', $invitee['User']['id'])); ?>
		</td>
		<td><?php echo h($invitee['Invitee']['email']); ?>&nbsp;</td>
		<td><?php echo h($invitee['Invitee']['going']); ?>&nbsp;</td>
		<td><?php echo h($invitee['Invitee']['may_be']); ?>&nbsp;</td>
		<td><?php echo h($invitee['Invitee']['joined']); ?>&nbsp;</td>
		<td><?php echo h($invitee['Invitee']['created_at']); ?>&nbsp;</td>
		<td><?php echo h($invitee['Invitee']['updated_at']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $invitee['Invitee']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $invitee['Invitee']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $invitee['Invitee']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $invitee['Invitee']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
