
<ul class="list-unstyled list-inline">
    <li class="subject"><a href="<?php echo $this->webroot; ?>news/add"><?php echo __('Add News')?></a></li><br/><br/>

</ul>
<div></div>
<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('News'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<!--<th><?php /*echo $this->Paginator->sort('model_name'); */?></th>
			
		<th><?php /*echo $this->Paginator->sort('model_foreign_key'); */?></th>-->
			
		<th><?php echo $this->Paginator->sort('title'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('data'); ?><!--</th>-->
			
		<!--<th><?php /*echo $this->Paginator->sort('expire'); */?></th>-->
			
		<!--<th><?php /*echo $this->Paginator->sort('users_LOGIN'); */?></th>-->
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
		<!--<th><?php /*echo $this->Paginator->sort('modified'); */?></th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($news as $news): ?>
	<tr>
		<!--<td><?php /*echo h($news['News']['model_name']); */?>&nbsp;</td>
		<td><?php /*echo h($news['News']['model_foreign_key']); */?>&nbsp;</td>-->
		<td><?php echo $this->Html->link( h($news['News']['title']), array('action' => 'view', $news['News']['id']), array('escape'=>false));  ?>&nbsp;</td>
<!--		<td>--><?php //echo h($news['News']['data']); ?><!--&nbsp;</td>-->
		<!--<td><?php /*echo h($news['News']['expire']); */?>&nbsp;</td>-->
<!--		<td>--><?php //echo h($news['News']['users_LOGIN']); ?><!--&nbsp;</td>-->
		<td><?php echo $this->Time->niceshort(h($news['News']['created'])); ?>&nbsp;</td>
		<!--<td><?php /*echo h($news['News']['modified']); */?>&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $news['News']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $news['News']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $news['News']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $news['News']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
