<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Modules'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('name'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('model_name'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('active'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('title'); ?></th>
			
		<th><?php echo $this->Paginator->sort('author'); ?></th>
			
		<th><?php echo $this->Paginator->sort('version'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('description'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('position'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('menu'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('mandatory'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('permissions'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('created'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($modules as $module): ?>
	<tr>
		<td><?php echo h($module['Module']['name']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($module['Module']['model_name']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($module['Module']['active']); ?><!--&nbsp;</td>-->
		<td><?php echo h($module['Module']['title']); ?>&nbsp;</td>
		<td><?php echo h($module['Module']['author']); ?>&nbsp;</td>
		<td><?php echo h($module['Module']['version']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($module['Module']['description']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($module['Module']['position']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($module['Module']['menu']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($module['Module']['mandatory']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($module['Module']['permissions']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($module['Module']['created']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($module['Module']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $module['Module']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $module['Module']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $module['Module']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $module['Module']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
