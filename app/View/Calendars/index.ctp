<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Calendars'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
<!--		<th>--><?php //echo $this->Paginator->sort('model_name'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('model_foreign_key'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('data'); ?></th>
			
		<th><?php echo $this->Paginator->sort('active'); ?></th>
			
		<th><?php echo $this->Paginator->sort('type'); ?></th>
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($calendars as $calendar): ?>
	<tr>
<!--		<td>--><?php //echo h($calendar['Calendar']['model_name']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($calendar['Calendar']['model_foreign_key']); ?><!--&nbsp;</td>-->
		<td><?php echo h($calendar['Calendar']['data']); ?>&nbsp;</td>
		<td><?php echo h($calendar['Calendar']['active']); ?>&nbsp;</td>
		<td><?php echo h($calendar['Calendar']['type']); ?>&nbsp;</td>
		<td><?php echo h($calendar['Calendar']['created']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($calendar['Calendar']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $calendar['Calendar']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $calendar['Calendar']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $calendar['Calendar']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $calendar['Calendar']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
