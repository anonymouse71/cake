<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Condition'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Lesson'); ?></td>
		<td>
			<?php echo $this->Html->link($condition['Lesson']['name'], array('controller' => 'lessons', 'action' => 'view', $condition['Lesson']['id'])); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Type'); ?></td>
		<td>
			<?php echo h($condition['Condition']['type']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Options'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($condition['Condition']['options']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Relation'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($condition['Condition']['relation']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Created By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($condition['Condition']['created_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Modified By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($condition['Condition']['modified_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Created'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo $this->Time->niceShort($condition['Condition']['created']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Modified'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo $this->Time->niceShort($condition['Condition']['modified']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>	-->
    </table>
</div>


