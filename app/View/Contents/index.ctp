<ul class="list-unstyled list-inline">
    <li class="subject"><a href="<?php echo $this->webroot; ?>contents/add"><?php echo __('Add New Content');?></a></li>
</ul><br/>
<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Contents'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('lesson_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('name'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('data'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('ctg_type'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('active'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('previous_content'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('options'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('scorm_version'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('publish'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('identifier'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('linked_to'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('subject'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('description'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('publisher'); ?></th>
			
		<th><?php echo $this->Paginator->sort('contributor'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('type'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('format'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('source'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('relation'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('coverage'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('rights'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('parent_id'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('lft'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('rght'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('created'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('modified'); ?></th>
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php

    foreach ($contents as $content): ?>
	<tr>
		<td>
			<?php echo $this->Html->link($content['Lesson']['name'], array('controller' => 'lessons', 'action' => 'view', $content['Lesson']['id'])); ?>
		</td>
		<td><?php echo h($content['Content']['name']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($content['Content']['data']); ?><!--&nbsp;</td>-->
		<td><?php echo h($content['Content']['ctg_type']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($content['Content']['active']); ?><!--&nbsp;</td>-->
		<td><?php echo h($content['Content']['previous_content']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($content['Content']['options']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($content['Content']['scorm_version']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($content['Content']['publish']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($content['Content']['identifier']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($content['Content']['linked_to']); ?><!--&nbsp;</td>-->
		<td><?php echo h($content['Content']['subject']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($content['Content']['description']); ?><!--&nbsp;</td>-->
		<td><?php echo h($content['Content']['publisher']); ?>&nbsp;</td>
		<td><?php echo h($content['Content']['contributor']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($content['Content']['type']); ?><!--&nbsp;</td>-->
		<td><?php echo h($content['Content']['format']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($content['Content']['source']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($content['Content']['relation']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($content['Content']['coverage']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($content['Content']['rights']); ?><!--&nbsp;</td>-->
<!--		<td>-->
<!--			--><?php //echo $this->Html->link($content['ParentContent']['name'], array('controller' => 'contents', 'action' => 'view', $content['ParentContent']['id'])); ?>
<!--		</td>-->
<!--		<td>--><?php //echo h($content['Content']['lft']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($content['Content']['rght']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo $this->Time->niceShort(h($content['Content']['created'])); ?><!--&nbsp;</td>-->
		<td><?php echo $this->Time->niceShort(h($content['Content']['modified'])); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $content['Content']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $content['Content']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $content['Content']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $content['Content']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
