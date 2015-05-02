<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Glossaries'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<!--<th><?php /*echo $this->Paginator->sort('model_name'); */?></th>
			
		<th><?php /*echo $this->Paginator->sort('model_foreign_key'); */?></th>-->
			
		<th><?php echo $this->Paginator->sort('name'); ?></th>
			
		<th><?php echo $this->Paginator->sort('info'); ?></th>
			
		<!--<th><?php /*echo $this->Paginator->sort('type'); */?></th>
			
		<th><?php /*echo $this->Paginator->sort('active'); */?></th>
			
		<th><?php /*echo $this->Paginator->sort('created'); */?></th>
			
		<th><?php /*echo $this->Paginator->sort('modified'); */?></th>-->
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($glossaries as $glossary): ?>
	<tr>
		<!--<td><?php /*echo h($glossary['Glossary']['model_name']); */?>&nbsp;</td>
		<td><?php /*echo h($glossary['Glossary']['model_foreign_key']); */?>&nbsp;</td>-->
		<td><?php echo h($glossary['Glossary']['name']); ?>&nbsp;</td>
		<td><?php echo h($glossary['Glossary']['info']); ?>&nbsp;</td>
		<!--<td><?php /*echo h($glossary['Glossary']['type']); */?>&nbsp;</td>
		<td><?php /*echo h($glossary['Glossary']['active']); */?>&nbsp;</td>
		<td><?php /*echo h($glossary['Glossary']['created']); */?>&nbsp;</td>
		<td><?php /*echo h($glossary['Glossary']['modified']); */?>&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $glossary['Glossary']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $glossary['Glossary']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $glossary['Glossary']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $glossary['Glossary']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
