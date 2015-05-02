<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Rating'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Title'); ?></td>
		<td>
			<?php echo h($rating['Rating']['title']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($rating['Rating']['created']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Modified'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo $this->Time->niceShort($rating['Rating']['modified']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>	-->
    </table>
</div>


<div class="related">
<!--	<h3>--><?php //echo __('Related Users'); ?><!--</h3>-->
<!--	--><?php //if (!empty($rating['User'])): ?>
<!--	<table class="table table-bordered table-hover">-->
<!--	<thead>-->
<!--	<tr>-->
<!--		<th class="actions">--><?php //echo __('Actions'); ?><!--</th>-->
<!--	</tr>-->
<!--	</thead>-->
<!--	 <tbody>-->
<!--	--><?php //foreach ($rating['User'] as $user): ?>
<!--		<tr>-->
<!--			<td class="actions">-->
<!--				--><?php //echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'users', 'action' => 'view', $user['id']), array('escape'=>false)); ?>
<!--				--><?php //echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'users', 'action' => 'edit', $user['id']),array('escape'=>false)); ?>
<!--				--><?php //echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'users', 'action' => 'delete', $user['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $user['id'])); ?>
<!--			</td>-->
<!--		</tr>-->
<!--	--><?php //endforeach; ?>
<!--	 </tbody>-->
<!--	</table>-->
<?php //endif; ?>

	<!-- <div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?> </li>
		</ul>
	</div>
	-->
</div>
