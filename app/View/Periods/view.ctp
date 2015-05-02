<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Period'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Lesson'); ?></td>
		<td>
			<?php echo $this->Html->link($period['Lesson']['name'], array('controller' => 'lessons', 'action' => 'view', $period['Lesson']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Name'); ?></td>
		<td>
			<?php echo h($period['Period']['name']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('From Timestamp'); ?></td>
		<td>
			<?php echo h($period['Period']['from_timestamp']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('To Timestamp'); ?></td>
		<td>
			<?php echo h($period['Period']['to_timestamp']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($period['Period']['created_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified By'); ?></td>
		<td>
			<?php echo h($period['Period']['modified_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($period['Period']['created']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($period['Period']['modified']); ?>
			&nbsp;
		</td>
</tr>	</table>
</div>


