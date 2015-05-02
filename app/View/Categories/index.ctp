<?php #debug($categories); ?>

<ul class="list-unstyled list-inline">
    <li class="subject"><a href="<?php echo $this->webroot; ?>categories/add"><?php echo __('Add New Category');?></a></li>
</ul><br/>
<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Categories'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('name'); ?></th>

        <th><?php echo $this->Paginator->sort('parent_id'); ?></th>

        <th><?php echo $this->Paginator->sort('Lessons'); ?></th>

        <th><?php echo $this->Paginator->sort('courses'); ?></th>
			
		<th><?php echo $this->Paginator->sort('active'); ?></th>
			

			
<!--		<th>--><?php //echo $this->Paginator->sort('lft'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('rght'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('created'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($categories as $category): ?>

	<tr>
		<td><?php echo h($category['Category']['name']); ?>&nbsp;</td>

        <td>
            <?php echo $this->Html->link($category['ParentCategory']['name'], array('controller' => 'categories', 'action' => 'view', $category['ParentCategory']['id'])); ?>
        </td>

        <td><?php echo count($category['Lesson']) ?>&nbsp;</td>

        <td><?php echo count($category['Course']) ?>&nbsp;</td>

        <td><?php echo $this->Html->link('<i class="glyphicon glyphicon-off"></i>', array('action' => 'view', $category['Category']['active']), array('escape'=>false));?>&nbsp;</td>
		<!--<td><?php /*echo h($category['Category']['active']); */?>&nbsp;</td>-->

<!--		<td>--><?php //echo h($category['Category']['lft']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($category['Category']['rght']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($category['Category']['created']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($category['Category']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $category['Category']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $category['Category']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $category['Category']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $category['Category']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
