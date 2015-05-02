<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Usrgroups'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('name'); ?></th>
			
		<th><?php echo $this->Paginator->sort('description'); ?></th>
			
		<th><?php echo $this->Paginator->sort('active'); ?></th>
			
		<th><?php echo $this->Paginator->sort('dynamic'); ?></th>
			
		<th><?php echo $this->Paginator->sort('user_type_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('users_active'); ?></th>
			
		<th><?php echo $this->Paginator->sort('assign_profile_to_new'); ?></th>
			
		<th><?php echo $this->Paginator->sort('unique_key'); ?></th>
			
		<th><?php echo $this->Paginator->sort('is_default'); ?></th>
			
		<th><?php echo $this->Paginator->sort('key_max_usage'); ?></th>
			
		<th><?php echo $this->Paginator->sort('key_current_usage'); ?></th>
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
		<th><?php echo $this->Paginator->sort('modified'); ?></th>
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($usrgroups as $usrgroup): ?>
	<tr>
		<td><?php echo h($usrgroup['Usrgroup']['name']); ?>&nbsp;</td>
		<td><?php echo h($usrgroup['Usrgroup']['description']); ?>&nbsp;</td>

        <td><?php echo $this->Html->link('<i class="glyphicon glyphicon-off"></i>', array('action' => 'view', $usrgroup['Usrgroup']['active']), array('escape'=>false));?>&nbsp;</td>
<!--		<td>--><?php //echo h($usrgroup['Usrgroup']['active']); ?><!--&nbsp;</td>-->
		<td><?php echo h($usrgroup['Usrgroup']['dynamic']); ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($usrgroup['UserType']['name'], array('controller' => 'user_types', 'action' => 'view', $usrgroup['UserType']['id'])); ?>
		</td>
		<td><?php echo h($usrgroup['Usrgroup']['users_active']); ?>&nbsp;</td>
		<td><?php echo h($usrgroup['Usrgroup']['assign_profile_to_new']); ?>&nbsp;</td>
		<td><?php echo h($usrgroup['Usrgroup']['unique_key']); ?>&nbsp;</td>
		<td><?php echo h($usrgroup['Usrgroup']['is_default']); ?>&nbsp;</td>
		<td><?php echo h($usrgroup['Usrgroup']['key_max_usage']); ?>&nbsp;</td>
		<td><?php echo h($usrgroup['Usrgroup']['key_current_usage']); ?>&nbsp;</td>
		<td><?php echo h($usrgroup['Usrgroup']['created']); ?>&nbsp;</td>
		<td><?php echo h($usrgroup['Usrgroup']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $usrgroup['Usrgroup']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $usrgroup['Usrgroup']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $usrgroup['Usrgroup']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $usrgroup['Usrgroup']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
