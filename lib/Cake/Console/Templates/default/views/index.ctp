<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo "<?php echo __('{$pluralHumanName}'); ?>"; ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	<?php foreach ($fields as $field): 
		if ($field === 'id' || $field === 'created_by' ||$field === 'modified_by') {
						continue;
					}
				else {?>

		<th><?php echo "<?php echo \$this->Paginator->sort('{$field}'); ?>"; ?></th>
		<?php } ?>
	<?php endforeach; ?>
		<th class="actions"><?php echo "<?php echo __('Actions'); ?>"; ?></th>
	</tr>
     </thead>
            <tbody>
	<?php
	echo "<?php foreach (\${$pluralVar} as \${$singularVar}): ?>\n";
	echo "\t<tr>\n";
		foreach ($fields as $field) {
			$isKey = false;
			if (!empty($associations['belongsTo'])) {
				foreach ($associations['belongsTo'] as $alias => $details) {
					if ($field === $details['foreignKey']) {
						$isKey = true;
						echo "\t\t<td>\n\t\t\t<?php echo \$this->Html->link(\${$singularVar}['{$alias}']['{$details['displayField']}'], array('controller' => '{$details['controller']}', 'action' => 'view', \${$singularVar}['{$alias}']['{$details['primaryKey']}'])); ?>\n\t\t</td>\n";
						break;
					}
				}
			}
			if ($isKey !== true) {
				if ($field === 'id' || $field === 'created_by' ||$field === 'modified_by') {
						continue;
					}
				else echo "\t\t<td><?php echo h(\${$singularVar}['{$modelClass}']['{$field}']); ?>&nbsp;</td>\n";
			}
		}

		echo "\t\t<td class=\"actions\">\n";
		echo "\t\t\t<?php echo \$this->Html->link('<i class=\"icon-eye3\"></i>', array('action' => 'view', \${$singularVar}['{$modelClass}']['{$primaryKey}']), array('escape'=>false)); ?>\n";
		echo "\t\t\t<?php echo \$this->Html->link('<i class=\"icon-pencil\"></i>', array('action' => 'edit', \${$singularVar}['{$modelClass}']['{$primaryKey}']), array('escape'=>false)); ?>\n";
		echo "\t\t\t<?php echo \$this->Form->postLink('<i class=\"icon-cancel\"></i>', array('action' => 'delete', \${$singularVar}['{$modelClass}']['{$primaryKey}']), array('escape'=>false), __('Are you sure you want to delete # %s?', \${$singularVar}['{$modelClass}']['{$primaryKey}'])); ?>\n";
		echo "\t\t</td>\n";
	echo "\t</tr>\n";

	echo "<?php endforeach; ?>\n";
	?>
    </tbody>
	</table>
	
</div>
</div>
