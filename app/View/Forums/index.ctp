<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Forums'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
<!--		<th>--><?php //echo $this->Paginator->sort('model_name'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('model_foreign_key'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('title'); ?></th>
			
		<th><?php echo $this->Paginator->sort('status'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('comments'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('rate'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('created'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($forums as $forum): ?>
	<tr>
<!--		<td>--><?php //echo h($forum['Forum']['model_name']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($forum['Forum']['model_foreign_key']); ?><!--&nbsp;</td>-->
		<td><?php echo h($forum['Forum']['title']); ?>&nbsp;</td>

        <td><?php echo $this->Html->link('<i class="fa fa-unlock"></i>', array('action' => 'view', $forum['Forum']['status']), array('escape'=>false));?>&nbsp;</td>
<!--		<td>--><?php //echo h($forum['Forum']['status']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($forum['Forum']['comments']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($forum['Forum']['rate']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($forum['Forum']['created']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($forum['Forum']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $forum['Forum']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $forum['Forum']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $forum['Forum']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $forum['Forum']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
