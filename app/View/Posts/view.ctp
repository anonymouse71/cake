<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Post'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Topic'); ?></td>
		<td>
			<?php echo $this->Html->link($post['Topic']['title'], array('controller' => 'topics', 'action' => 'view', $post['Topic']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Title'); ?></td>
		<td>
			<?php echo h($post['Post']['title']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Body'); ?></td>
		<td>
			<?php echo h($post['Post']['body']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Replyto'); ?></td>
		<td>
			<?php echo h($post['Post']['replyto']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Rank'); ?></td>
		<td>
			<?php echo h($post['Post']['rank']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($post['Post']['created_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified By'); ?></td>
		<td>
			<?php echo h($post['Post']['modified_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($post['Post']['created']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($post['Post']['modified']); ?>
			&nbsp;
		</td>
</tr>	</table>
</div>


