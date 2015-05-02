<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('User Types'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('name'); ?></th>
			
		<th><?php echo $this->Paginator->sort('basic_user_type'); ?></th>
			
		<th><?php echo $this->Paginator->sort('core_access'); ?></th>
			
		<th><?php echo $this->Paginator->sort('modules_access'); ?></th>
			
		<th><?php echo $this->Paginator->sort('active'); ?></th>
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($userTypes as $userType): ?>
	<tr>
		<td><?php echo h($userType['UserType']['name']); ?>&nbsp;</td>
		<td><?php echo h($userType['UserType']['basic_user_type']); ?>&nbsp;</td>
		<td><?php echo h($userType['UserType']['core_access']); ?>&nbsp;</td>
		<td><?php echo h($userType['UserType']['modules_access']); ?>&nbsp;</td>
		<td><?php echo h($userType['UserType']['active']); ?>&nbsp;</td>
		<td><?php echo $this->Time->niceshort( h($userType['UserType']['created'])); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($userType['UserType']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $userType['UserType']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $userType['UserType']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $userType['UserType']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $userType['UserType']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
