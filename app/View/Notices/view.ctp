<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Notice'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('User'); ?></td>
		<td>
			<?php echo $this->Html->link($notice['User']['id'], array('controller' => 'users', 'action' => 'view', $notice['User']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Title'); ?></td>
		<td>
			<?php echo h($notice['Notice']['title']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Description'); ?></td>
		<td>
			<?php echo h($notice['Notice']['description']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Htmlized Description'); ?></td>
		<td>
			<?php echo h($notice['Notice']['htmlized_description']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('User Role'); ?></td>
		<td>
			<?php echo h($notice['Notice']['user_role']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Is Seen'); ?></td>
		<td>
			<?php echo h($notice['Notice']['is_seen']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($notice['Notice']['created_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified By'); ?></td>
		<td>
			<?php echo h($notice['Notice']['modified_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($notice['Notice']['created']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($notice['Notice']['modified']); ?>
			&nbsp;
		</td>
</tr>	</table>
</div>


