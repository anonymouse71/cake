<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Faqs'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<!--<th><?php /*echo $this->Paginator->sort('model_name'); */?></th>
			
		<th><?php /*echo $this->Paginator->sort('model_foreign_key'); */?></th>-->
			
		<th><?php echo $this->Paginator->sort('question'); ?></th>
			
		<th><?php echo $this->Paginator->sort('answer'); ?></th>
			
		<!--<th><?php /*echo $this->Paginator->sort('created'); */?></th>
			
		<th><?php /*echo $this->Paginator->sort('modified'); */?></th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($faqs as $faq): ?>
	<tr>
		<!--<td><?php /*echo h($faq['Faq']['model_name']); */?>&nbsp;</td>
		<td><?php /*echo h($faq['Faq']['model_foreign_key']); */?>&nbsp;</td>-->
		<td><?php echo h($faq['Faq']['question']); ?>&nbsp;</td>
		<td><?php echo h($faq['Faq']['answer']); ?>&nbsp;</td>
		<!--<td><?php /*echo h($faq['Faq']['created']); */?>&nbsp;</td>
		<td><?php /*echo h($faq['Faq']['modified']); */?>&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $faq['Faq']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $faq['Faq']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $faq['Faq']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $faq['Faq']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
