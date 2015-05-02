<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Topic'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Forum'); ?></td>
		<td>
			<?php echo $this->Html->link($topic['Forum']['title'], array('controller' => 'forums', 'action' => 'view', $topic['Forum']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Title'); ?></td>
		<td>
			<?php echo h($topic['Topic']['title']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Views'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($topic['Topic']['views']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Status'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($topic['Topic']['status']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Sticky'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($topic['Topic']['sticky']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Comments'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($topic['Topic']['comments']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Viewed By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($topic['Topic']['viewed_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($topic['Topic']['created']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Modified'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo $this->Time->niceShort($topic['Topic']['modified']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($topic['Topic']['created_by']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Modified By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($topic['Topic']['modified_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>	-->
    </table>
</div>


<div class="related">
	<h3><?php echo __('Related Posts'); ?></h3>
	<?php if (!empty($topic['Post'])): ?>
	<table class="table table-bordered table-hover">
	<thead>
	<tr>
		<th><?php echo __('Title'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	 <tbody>
	<?php foreach ($topic['Post'] as $post): ?>
		<tr>
			<td><?php echo $post['title']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'posts', 'action' => 'view', $post['id']), array('escape'=>false)); ?>
				<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'posts', 'action' => 'edit', $post['id']),array('escape'=>false)); ?>
				<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'posts', 'action' => 'delete', $post['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $post['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	 </tbody>
	</table>
<?php endif; ?>

	<!-- <div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Post'), array('controller' => 'posts', 'action' => 'add')); ?> </li>
		</ul>
	</div>
	-->
</div>
