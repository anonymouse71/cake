<?php //echo $this->Html->css('http://vjs.zencdn.net/4.11/video-js.css',array('inline'=>false)); ?>
<?php //echo $this->Html->script('http://vjs.zencdn.net/4.11/video.js',array('inline'=>false)); ?>
<ul class="list-unstyled list-inline">
    <li class="subject"><a href="<?php echo $this->webroot; ?>contents/add"><?php echo __('Add New Content');?></a></li>
    <li class="subject">
<!--        <a href="--><?php //echo $this->webroot; ?><!--contents/add">--><?php //echo __('Create Sub Unit');?><!--</a>-->
        <?php echo $this->Html->link(__('Create Sub Unit'), array('controller'=>'contents','action' => 'add', $content['Content']['id']), array('escape'=>false,'title'=>'Create Sub Unit')); ?>
    </li>
    <li>
<!--        <a href="--><?php //echo $this->webroot; ?><!--contents/add">--><?php //echo __('Update Unit');?><!--</a>-->
        <?php echo $this->Html->link('<i class="icon-pencil"> Update Unit</i>', array('action' => 'edit', $content['Content']['id']), array('escape'=>false,'title'=>'Update Unit')); ?>
    </li>


</ul>
<br>


<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo h($content['Content']['name']); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Lesson'); ?></td>
		<td>
			<?php echo $this->Html->link($content['Lesson']['name'], array('controller' => 'lessons', 'action' => 'view', $content['Lesson']['id'])); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Name'); ?></td>
		<td>
			<?php echo h($content['Content']['name']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Data'); ?></td>
		<td>
			<?php echo htmlspecialchars_decode(h($content['Content']['data'])); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Ctg Type'); ?></td>
		<td>
			<?php echo h($content['Content']['ctg_type']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Active'); ?></td>
		<td>
			<?php echo h($content['Content']['active']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Previous Content'); ?></td>
		<td>
			<?php echo h($content['Content']['previous_content']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Options'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($content['Content']['options']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Scorm Version'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($content['Content']['scorm_version']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Publish'); ?></td>
		<td>
			<?php echo h($content['Content']['publish']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Identifier'); ?></td>
		<td>
			<?php echo h($content['Content']['identifier']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Linked To'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($content['Content']['linked_to']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Subject'); ?></td>
		<td>
			<?php echo h($content['Content']['subject']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Description'); ?></td>
		<td>
			<?php echo h($content['Content']['description']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Publisher'); ?></td>
		<td>
			<?php echo h($content['Content']['publisher']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Contributor'); ?></td>
		<td>
			<?php echo h($content['Content']['contributor']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Type'); ?></td>
		<td>
			<?php echo h($content['Content']['type']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Format'); ?></td>
		<td>
			<?php echo h($content['Content']['format']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Source'); ?></td>
		<td>
			<?php echo h($content['Content']['source']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Relation'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($content['Content']['relation']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr><tr>		<td>--><?php //echo __('Coverage'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($content['Content']['coverage']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Rights'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($content['Content']['rights']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Parent Content'); ?></td>
		<td>
			<?php echo $this->Html->link($content['ParentContent']['name'], array('controller' => 'contents', 'action' => 'view', $content['ParentContent']['id'])); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Lft'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($content['Content']['lft']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Rght'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($content['Content']['rght']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($content['Content']['created_by']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Modified By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($content['Content']['modified_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>
            <td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($content['Content']['created']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>-->
<!--            <td>--><?php //echo __('Modified'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo $this->Time->niceShort($content['Content']['modified']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
    </table>
</div>


<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Related Contents'); ?> </h2></div>
	<?php if (!empty($content['ChildContent'])): ?>
	<table class="table table-bordered table-hover">
	<thead>
	<tr>
		<th><?php echo __('Name'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	 <tbody>
	<?php foreach ($content['ChildContent'] as $childContent): ?>
		<tr>
			<td><?php echo $childContent['name']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'contents', 'action' => 'view', $childContent['id']), array('escape'=>false)); ?>
				<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'contents', 'action' => 'edit', $childContent['id']),array('escape'=>false)); ?>
				<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'contents', 'action' => 'delete', $childContent['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $childContent['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	 </tbody>
	</table>
<?php endif; ?>
</div>


<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Related Users'); ?> </h2></div>
	<?php if (!empty($content['User'])): ?>
	<table class="table table-bordered table-hover">
	<thead>
	<tr>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	 <tbody>
	<?php foreach ($content['User'] as $user): ?>
		<tr>
			<td class="actions">
				<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'users', 'action' => 'view', $user['id']), array('escape'=>false)); ?>
				<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'users', 'action' => 'edit', $user['id']),array('escape'=>false)); ?>
				<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'users', 'action' => 'delete', $user['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $user['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	 </tbody>
	</table>
<?php endif; ?>
</div>
