<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Poll'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Model Name'); ?></td>
		<td>
			<?php echo h($poll['Poll']['model_name']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Model Foreign Key'); ?></td>
		<td>
			<?php echo h($poll['Poll']['model_foreign_key']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Title'); ?></td>
		<td>
			<?php echo h($poll['Poll']['title']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Question'); ?></td>
		<td>
			<?php echo h($poll['Poll']['question']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Option1'); ?></td>
		<td>
			<?php echo h($poll['Poll']['option1']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Option2'); ?></td>
		<td>
			<?php echo h($poll['Poll']['option2']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Option3'); ?></td>
		<td>
			<?php echo h($poll['Poll']['option3']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Option4'); ?></td>
		<td>
			<?php echo h($poll['Poll']['option4']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Option5'); ?></td>
		<td>
			<?php echo h($poll['Poll']['option5']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Options'); ?></td>
		<td>
			<?php echo h($poll['Poll']['options']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Timestamp Start'); ?></td>
		<td>
			<?php echo h($poll['Poll']['timestamp_start']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Timestamp End'); ?></td>
		<td>
			<?php echo h($poll['Poll']['timestamp_end']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Views'); ?></td>
		<td>
			<?php echo h($poll['Poll']['views']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Sticky'); ?></td>
		<td>
			<?php echo h($poll['Poll']['sticky']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Comments'); ?></td>
		<td>
			<?php echo h($poll['Poll']['comments']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($poll['Poll']['created_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified By'); ?></td>
		<td>
			<?php echo h($poll['Poll']['modified_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($poll['Poll']['created']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($poll['Poll']['modified']); ?>
			&nbsp;
		</td>
</tr>	</table>
</div>


<div class="related">
	<h3><?php echo __('Related Users'); ?></h3>
	<?php if (!empty($poll['User'])): ?>
	<table class="table table-bordered table-hover">
	<thead>
	<tr>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	 <tbody>
	<?php foreach ($poll['User'] as $user): ?>
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
