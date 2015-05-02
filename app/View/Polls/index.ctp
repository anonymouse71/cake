<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Polls'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('model_name'); ?></th>
			
		<th><?php echo $this->Paginator->sort('model_foreign_key'); ?></th>
			
		<th><?php echo $this->Paginator->sort('title'); ?></th>
			
		<th><?php echo $this->Paginator->sort('question'); ?></th>
			
		<th><?php echo $this->Paginator->sort('option1'); ?></th>
			
		<th><?php echo $this->Paginator->sort('option2'); ?></th>
			
		<th><?php echo $this->Paginator->sort('option3'); ?></th>
			
		<th><?php echo $this->Paginator->sort('option4'); ?></th>
			
		<th><?php echo $this->Paginator->sort('option5'); ?></th>
			
		<th><?php echo $this->Paginator->sort('options'); ?></th>
			
		<th><?php echo $this->Paginator->sort('timestamp_start'); ?></th>
			
		<th><?php echo $this->Paginator->sort('timestamp_end'); ?></th>
			
		<th><?php echo $this->Paginator->sort('views'); ?></th>
			
		<th><?php echo $this->Paginator->sort('sticky'); ?></th>
			
		<th><?php echo $this->Paginator->sort('comments'); ?></th>
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
		<th><?php echo $this->Paginator->sort('modified'); ?></th>
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($polls as $poll): ?>
	<tr>
		<td><?php echo h($poll['Poll']['model_name']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['model_foreign_key']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['title']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['question']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['option1']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['option2']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['option3']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['option4']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['option5']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['options']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['timestamp_start']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['timestamp_end']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['views']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['sticky']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['comments']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['created']); ?>&nbsp;</td>
		<td><?php echo h($poll['Poll']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $poll['Poll']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $poll['Poll']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $poll['Poll']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $poll['Poll']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
