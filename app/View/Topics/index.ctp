<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Topics'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('forum_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('title'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('views'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('status'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('sticky'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('comments'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('viewed_by'); ?><!--</th>-->
			
<!--		<th>--><?php //echo  $this->Paginator->sort('created'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($topics as $topic): ?>
	<tr>
		<td>
			<?php echo $this->Html->link($topic['Forum']['title'], array('controller' => 'forums', 'action' => 'view', $topic['Forum']['id'])); ?>
		</td>
		<td><?php echo h($topic['Topic']['title']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($topic['Topic']['views']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($topic['Topic']['status']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($topic['Topic']['sticky']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($topic['Topic']['comments']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($topic['Topic']['viewed_by']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo $this->Time->niceshort(h($topic['Topic']['created'])); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($topic['Topic']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $topic['Topic']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $topic['Topic']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $topic['Topic']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $topic['Topic']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
