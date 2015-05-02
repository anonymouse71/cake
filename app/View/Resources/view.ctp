<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Resource'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Lesson'); ?></td>
		<td>
			<?php echo $this->Html->link($resource['Lesson']['name'], array('controller' => 'lessons', 'action' => 'view', $resource['Lesson']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Path'); ?></td>
		<td>
			<?php echo h($resource['Resource']['path']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($resource['Resource']['created_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified By'); ?></td>
		<td>
			<?php echo h($resource['Resource']['modified_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($resource['Resource']['created']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($resource['Resource']['modified']); ?>
			&nbsp;
		</td>
</tr>	</table>
</div>


