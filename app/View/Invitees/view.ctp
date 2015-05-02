<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Invitee'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Event'); ?></td>
		<td>
			<?php echo $this->Html->link($invitee['Event']['title'], array('controller' => 'events', 'action' => 'view', $invitee['Event']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('User'); ?></td>
		<td>
			<?php echo $this->Html->link($invitee['User']['id'], array('controller' => 'users', 'action' => 'view', $invitee['User']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Email'); ?></td>
		<td>
			<?php echo h($invitee['Invitee']['email']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Going'); ?></td>
		<td>
			<?php echo h($invitee['Invitee']['going']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('May Be'); ?></td>
		<td>
			<?php echo h($invitee['Invitee']['may_be']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Joined'); ?></td>
		<td>
			<?php echo h($invitee['Invitee']['joined']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created At'); ?></td>
		<td>
			<?php echo h($invitee['Invitee']['created_at']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Updated At'); ?></td>
		<td>
			<?php echo h($invitee['Invitee']['updated_at']); ?>
			&nbsp;
		</td>
</tr>	</table>
</div>


