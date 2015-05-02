<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Blog'); ?> </h2></div>
	<table class="table table-striped">
<!--<tr>		<td><?php /*echo __('Model Name'); */?></td>
		<td>
			<?php /*echo h($blog['Blog']['model_name']); */?>
			&nbsp;
		</td>
</tr><tr>		<td><?php /*echo __('Model Foreign Key'); */?></td>
		<td>
			<?php /*echo h($blog['Blog']['model_foreign_key']); */?>
			&nbsp;
		</td>
</tr><tr>		<td><?php /*echo __('Name'); */?></td>
		<td>
			<?php /*echo h($blog['Blog']['name']); */?>
			&nbsp;
		</td>
</tr>--><tr>		<td><?php echo __('Description'); ?></td>
		<td>
			<?php echo h($blog['Blog']['description']); ?>
			&nbsp;
		</td>
</tr><!--<tr>		<td><?php /*echo __('Active'); */?></td>
		<td>
			<?php /*echo h($blog['Blog']['active']); */?>
			&nbsp;
		</td>
</tr><tr>		<td><?php /*echo __('Registered'); */?></td>
		<td>
			<?php /*echo h($blog['Blog']['registered']); */?>
			&nbsp;
		</td>
</tr><tr>		<td><?php /*echo __('Created By'); */?></td>
		<td>
			<?php /*echo h($blog['Blog']['created_by']); */?>
			&nbsp;
		</td>
</tr><tr>		<td><?php /*echo __('Modified By'); */?></td>
		<td>
			<?php /*echo h($blog['Blog']['modified_by']); */?>
			&nbsp;
		</td>
</tr><tr>		<td><?php /*echo __('Created'); */?></td>
		<td>
			<?php /*echo $this->Time->niceShort($blog['Blog']['created']); */?>
			&nbsp;
		</td>
</tr><tr>		<td><?php /*echo __('Modified'); */?></td>
		<td>
			<?php /*echo $this->Time->niceShort($blog['Blog']['modified']); */?>
			&nbsp;
		</td>
</tr>-->	</table>
</div>


<div class="related">
	<h3><?php echo __('Related Articles'); ?></h3>
	<?php if (!empty($blog['Article'])): ?>
	<table class="table table-bordered table-hover">
	<thead>
	<tr>
		<th><?php echo __('Title'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	 <tbody>
	<?php foreach ($blog['Article'] as $article): ?>
		<tr>
			<td><?php echo $article['title']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'articles', 'action' => 'view', $article['id']), array('escape'=>false)); ?>
				<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'articles', 'action' => 'edit', $article['id']),array('escape'=>false)); ?>
				<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'articles', 'action' => 'delete', $article['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $article['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	 </tbody>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Article'), array('controller' => 'articles', 'action' => 'add')); ?> </li>
		</ul>
	</div>

</div>
