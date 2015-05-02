<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Articles'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('blog_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('title'); ?></th>
			
		<th><?php echo $this->Paginator->sort('data'); ?></th>
			
		<!--<th><?php /*echo $this->Paginator->sort('active'); */?></th>
			
		<th><?php /*echo $this->Paginator->sort('created'); */?></th>
			
		<th><?php /*echo $this->Paginator->sort('modified'); */?></th>-->

        <th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($articles as $article): ?>
	<tr>
		<td>
			<?php echo $this->Html->link($article['Blog']['name'], array('controller' => 'blogs', 'action' => 'view', $article['Blog']['id'])); ?>
		</td>
		<td><?php echo h($article['Article']['title']); ?>&nbsp;</td>
		<td><?php echo h($article['Article']['data']); ?>&nbsp;</td>
		<!--<td><?php /*echo h($article['Article']['active']); */?>&nbsp;</td>
		<td><?php /*echo h($article['Article']['created']); */?>&nbsp;</td>
		<td><?php /*echo h($article['Article']['modified']); */?>&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $article['Article']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $article['Article']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $article['Article']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $article['Article']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
