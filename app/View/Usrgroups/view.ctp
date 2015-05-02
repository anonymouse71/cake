<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Usrgroup'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Name'); ?></td>
		<td>
			<?php echo h($usrgroup['Usrgroup']['name']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Description'); ?></td>
		<td>
			<?php echo h($usrgroup['Usrgroup']['description']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Active'); ?></td>
		<td>
			<?php echo h($usrgroup['Usrgroup']['active']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Dynamic'); ?></td>
		<td>
			<?php echo h($usrgroup['Usrgroup']['dynamic']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('User Type'); ?></td>
		<td>
			<?php echo $this->Html->link($usrgroup['UserType']['name'], array('controller' => 'user_types', 'action' => 'view', $usrgroup['UserType']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Users Active'); ?></td>
		<td>
			<?php echo h($usrgroup['Usrgroup']['users_active']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Assign Profile To New'); ?></td>
		<td>
			<?php echo h($usrgroup['Usrgroup']['assign_profile_to_new']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Unique Key'); ?></td>
		<td>
			<?php echo h($usrgroup['Usrgroup']['unique_key']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Is Default'); ?></td>
		<td>
			<?php echo h($usrgroup['Usrgroup']['is_default']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Key Max Usage'); ?></td>
		<td>
			<?php echo h($usrgroup['Usrgroup']['key_max_usage']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Key Current Usage'); ?></td>
		<td>
			<?php echo h($usrgroup['Usrgroup']['key_current_usage']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($usrgroup['Usrgroup']['created_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified By'); ?></td>
		<td>
			<?php echo h($usrgroup['Usrgroup']['modified_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($usrgroup['Usrgroup']['created']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($usrgroup['Usrgroup']['modified']); ?>
			&nbsp;
		</td>
</tr>	</table>
</div>


<div class="related">
	<h3><?php echo __('Related Courses'); ?></h3>
	<?php if (!empty($usrgroup['Course'])): ?>
	<table class="table table-bordered table-hover">
	<thead>
	<tr>
		<th><?php echo __('Name'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	 <tbody>
	<?php foreach ($usrgroup['Course'] as $course): ?>
		<tr>
			<td><?php echo $course['name']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'courses', 'action' => 'view', $course['id']), array('escape'=>false)); ?>
				<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'courses', 'action' => 'edit', $course['id']),array('escape'=>false)); ?>
				<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'courses', 'action' => 'delete', $course['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $course['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	 </tbody>
	</table>
<?php endif; ?>

	<!-- <div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Course'), array('controller' => 'courses', 'action' => 'add')); ?> </li>
		</ul>
	</div>
	-->
</div>
<div class="related">
	<h3><?php echo __('Related Lessons'); ?></h3>
	<?php if (!empty($usrgroup['Lesson'])): ?>
	<table class="table table-bordered table-hover">
	<thead>
	<tr>
		<th><?php echo __('Name'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	 <tbody>
	<?php foreach ($usrgroup['Lesson'] as $lesson): ?>
		<tr>
			<td><?php echo $lesson['name']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'lessons', 'action' => 'view', $lesson['id']), array('escape'=>false)); ?>
				<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'lessons', 'action' => 'edit', $lesson['id']),array('escape'=>false)); ?>
				<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'lessons', 'action' => 'delete', $lesson['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $lesson['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	 </tbody>
	</table>
<?php endif; ?>

	<!-- <div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Lesson'), array('controller' => 'lessons', 'action' => 'add')); ?> </li>
		</ul>
	</div>
	-->
</div>
<div class="related">
	<h3><?php echo __('Related Users'); ?></h3>
	<?php if (!empty($usrgroup['User'])): ?>
	<table class="table table-bordered table-hover">
	<thead>
	<tr>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	 <tbody>
	<?php foreach ($usrgroup['User'] as $user): ?>
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
