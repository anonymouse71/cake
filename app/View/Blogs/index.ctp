<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Blogs'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<!--<th><?php /*echo $this->Paginator->sort('model_name'); */?></th>
			
		<th><?php /*echo $this->Paginator->sort('model_foreign_key'); */?></th>-->
			
		<th><?php echo $this->Paginator->sort('name'); ?></th>
			
		<th><?php echo $this->Paginator->sort('description'); ?></th>
			
		<!--<th><?php /*echo $this->Paginator->sort('active'); */?></th>-->
			
		<!--<th><?php /*echo $this->Paginator->sort('registered'); */?></th>
			
		<th><?php /*echo $this->Paginator->sort('created'); */?></th>
			
		<th><?php /*echo $this->Paginator->sort('modified'); */?></th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($blogs as $blog): ?>
	<tr>
		<!--<td><?php /*echo h($blog['Blog']['model_name']); */?>&nbsp;</td>
		<td><?php /*echo h($blog['Blog']['model_foreign_key']); */?>&nbsp;</td>-->
		<td><?php echo h($blog['Blog']['name']); ?>&nbsp;</td>
		<td><?php echo h($blog['Blog']['description']); ?>&nbsp;</td>
		<!--<td><?php /*echo h($blog['Blog']['active']); */?>&nbsp;</td>
		<td><?php /*echo h($blog['Blog']['registered']); */?>&nbsp;</td>
		<td><?php /*echo h($blog['Blog']['created']); */?>&nbsp;</td>
		<td><?php /*echo h($blog['Blog']['modified']); */?>&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $blog['Blog']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="glyphicon glyphicon-pencil"></i>', array('action' => 'edit', $blog['Blog']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $blog['Blog']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $blog['Blog']['id'])); ?>

            <?php echo $this->Html->link('<i class="glyphicon glyphicon-off"></i>', array('action' => 'view', $blog['Blog']['id']), array('escape'=>false)); ?>

        </td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
