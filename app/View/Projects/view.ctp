<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Project'); ?> </h2></div>
	<table class="table table-striped">
<!--<tr>		<td>--><?php //echo __('Model Name'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($project['Project']['model_name']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Model Foreign Key'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($project['Project']['model_foreign_key']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Title'); ?></td>
		<td>
			<?php echo h($project['Project']['title']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Data'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($project['Project']['data']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>
            <td><?php echo __('Htmlized Data'); ?></td>
		<td>
			<?php echo h($project['Project']['htmlized_data']); ?>
			&nbsp;
		</td>
</tr>
        <tr>
            <td><?php echo __('Deadline'); ?></td>
		<td>
			<?php echo h($project['Project']['deadline']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Auto Assign'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($project['Project']['auto_assign']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Metadata'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($project['Project']['metadata']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($project['Project']['created_by']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Modified By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($project['Project']['modified_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($project['Project']['created']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Modified'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo $this->Time->niceShort($project['Project']['modified']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
    </table>
</div>


<div class="related">
	<h3><?php echo __('Related Users'); ?></h3>
	<?php if (!empty($project['User'])): ?>
	<table class="table table-bordered table-hover">
	<thead>
	<tr>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	 <tbody>
	<?php foreach ($project['User'] as $user): ?>
		<tr>
			<td class="actions">
				<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'users', 'action' => 'view', $user['id']), array('escape'=>false)); ?>
				<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'users', 'action' => 'edit', $user['id']),array('escape'=>false)); ?>
				<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'users', 'action' => 'delete', $user['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $user['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	 </tbody>
	</table>
<?php endif; ?>

	<!-- <div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?> </li>
		</ul>
	</div>
	-->
</div>
