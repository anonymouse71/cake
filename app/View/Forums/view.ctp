<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Forum'); ?> </h2></div>
	<table class="table table-striped">
<!--<tr>		<td>--><?php //echo __('Model Name'); ?><!--</td>-->
		<td>
<!--			--><?php //echo h($forum['Forum']['model_name']); ?>
			&nbsp;
		</td>
<!--</tr><tr>		<td>--><?php //echo __('Model Foreign Key'); ?><!--</td>-->
		<td>
<!--			--><?php //echo h($forum['Forum']['model_foreign_key']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Title'); ?></td>
		<td>
			<?php echo h($forum['Forum']['title']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Status'); ?></td>
		<td>
			<?php echo h($forum['Forum']['status']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Comments'); ?></td>
		<td>
			<?php echo h($forum['Forum']['comments']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Rate'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($forum['Forum']['rate']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr><tr>		<td>--><?php //echo __('Created'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo $this->Time->niceShort($forum['Forum']['created']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr><tr>		<td>--><?php //echo __('Modified'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo $this->Time->niceShort($forum['Forum']['modified']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr><tr>		<td>--><?php //echo __('Created By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($forum['Forum']['created_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr><tr>		<td>--><?php //echo __('Modified By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($forum['Forum']['modified_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>	-->
    </table>
</div>


<!--<div class="related">-->
<!--	<h3>--><?php //echo __('Related Topics'); ?><!--</h3>-->
<!--	--><?php //if (!empty($forum['Topic'])): ?>
<!--	<table class="table table-bordered table-hover">-->
<!--	<thead>-->
<!--	<tr>-->
<!--		<th>--><?php //echo __('Title'); ?><!--</th>-->
<!--		<th class="actions">--><?php //echo __('Actions'); ?><!--</th>-->
<!--	</tr>-->
<!--	</thead>-->
<!--	 <tbody>-->
<!--	--><?php //foreach ($forum['Topic'] as $topic): ?>
<!--		<tr>-->
<!--			<td>--><?php //echo $topic['title']; ?><!--</td>-->
<!--			<td class="actions">-->
<!--				--><?php //echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'topics', 'action' => 'view', $topic['id']), array('escape'=>false)); ?>
<!--				--><?php //echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'topics', 'action' => 'edit', $topic['id']),array('escape'=>false)); ?>
<!--				--><?php //echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'topics', 'action' => 'delete', $topic['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $topic['id'])); ?>
<!--			</td>-->
<!--		</tr>-->
<!--	--><?php //endforeach; ?>
<!--	 </tbody>-->
<!--	</table>-->
<?php //endif; ?>
<!---->
<!--	 <div class="actions">-->
<!--		<ul>-->
<!--			<li>--><?php //echo $this->Html->link(__('New Topic'), array('controller' => 'topics', 'action' => 'add')); ?><!-- </li>-->
<!--		</ul>-->
<!--	</div>-->
<!--</div>-->
