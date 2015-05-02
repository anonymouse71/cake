<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Configurations'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('name'); ?></th>
			
		<th><?php echo $this->Paginator->sort('value'); ?></th>
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($configurations as $configuration): ?>
	<tr>
		<td><?php echo h($configuration['Configuration']['name']); ?>&nbsp;</td>
		<td><?php echo h($configuration['Configuration']['value']); ?>&nbsp;</td>
		<td><?php echo $this->Time->niceshort( h($configuration['Configuration']['created'])); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($configuration['Configuration']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $configuration['Configuration']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $configuration['Configuration']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $configuration['Configuration']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $configuration['Configuration']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
