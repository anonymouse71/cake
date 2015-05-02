<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('User Type'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Name'); ?></td>
		<td>
			<?php echo h($userType['UserType']['name']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Basic User Type'); ?></td>
		<td>
			<?php echo h($userType['UserType']['basic_user_type']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Core Access'); ?></td>
		<td>
			<?php echo h($userType['UserType']['core_access']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modules Access'); ?></td>
		<td>
			<?php echo h($userType['UserType']['modules_access']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Active'); ?></td>
		<td>
			<?php echo h($userType['UserType']['active']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Created By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($userType['UserType']['created_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Modified By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($userType['UserType']['modified_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($userType['UserType']['created']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Modified'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo $this->Time->niceShort($userType['UserType']['modified']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>	-->
    </table>
</div>


<div class="related">
<!--	<h3>--><?php //echo __('Related Usrgroups'); ?><!--</h3>-->
<!--	--><?php //if (!empty($userType['Usrgroup'])): ?>
<!--	<table class="table table-bordered table-hover">-->
<!--	<thead>-->
<!--	<tr>-->
<!--		<th>--><?php //echo __('Name'); ?><!--</th>-->
<!--		<th class="actions">--><?php //echo __('Actions'); ?><!--</th>-->
<!--	</tr>-->
<!--	</thead>-->
<!--	 <tbody>-->
<!--	--><?php //foreach ($userType['Usrgroup'] as $usrgroup): ?>
<!--		<tr>-->
<!--			<td>--><?php //echo $usrgroup['name']; ?><!--</td>-->
<!--			<td class="actions">-->
<!--				--><?php //echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'usrgroups', 'action' => 'view', $usrgroup['id']), array('escape'=>false)); ?>
<!--				--><?php //echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'usrgroups', 'action' => 'edit', $usrgroup['id']),array('escape'=>false)); ?>
<!--				--><?php //echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'usrgroups', 'action' => 'delete', $usrgroup['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $usrgroup['id'])); ?>
<!--			</td>-->
<!--		</tr>-->
<!--	--><?php //endforeach; ?>
<!--	 </tbody>-->
<!--	</table>-->
<?php //endif; ?>

	<!-- <div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Usrgroup'), array('controller' => 'usrgroups', 'action' => 'add')); ?> </li>
		</ul>
	</div>
	-->
</div>
