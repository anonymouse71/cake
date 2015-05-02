<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Notices'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('user_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('title'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('description'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('htmlized_description'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('user_role'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('is_seen'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($notices as $notice): ?>
	<tr>
		<td>
			<?php echo $this->Html->link($notice['User']['id'], array('controller' => 'users', 'action' => 'view', $notice['User']['id'])); ?>
		</td>
		<td><?php echo h($notice['Notice']['title']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($notice['Notice']['description']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($notice['Notice']['htmlized_description']); ?><!--&nbsp;</td>-->
		<td><?php echo h($notice['Notice']['user_role']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($notice['Notice']['is_seen']); ?><!--&nbsp;</td>-->
		<td><?php echo $this->Time->niceShort( h($notice['Notice']['created'])); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($notice['Notice']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $notice['Notice']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $notice['Notice']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $notice['Notice']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $notice['Notice']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
