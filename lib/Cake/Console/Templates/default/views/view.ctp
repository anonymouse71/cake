<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo "<?php echo __('{$singularHumanName}'); ?>"; ?> </h2></div>
	<table class="table table-striped">
<?php
foreach ($fields as $field) {
	
	$isKey = false;
	if (!empty($associations['belongsTo'])) {
		foreach ($associations['belongsTo'] as $alias => $details) {
			if ($field === $details['foreignKey']) {
				$isKey = true;
				echo '<tr>';
				echo "\t\t<td><?php echo __('" . Inflector::humanize(Inflector::underscore($alias)) . "'); ?></td>\n";
				echo "\t\t<td>\n\t\t\t<?php echo \$this->Html->link(\${$singularVar}['{$alias}']['{$details['displayField']}'], array('controller' => '{$details['controller']}', 'action' => 'view', \${$singularVar}['{$alias}']['{$details['primaryKey']}'])); ?>\n\t\t\t&nbsp;\n\t\t</td>\n";
				echo '</tr>';
				break;
			}
		}
	}
	if ($isKey !== true) {
		if ($field === 'id') {
			continue;
		}

		if ($field === 'created' || $field === 'modified') {
			echo '<tr>';
			echo "\t\t<td><?php echo __('" . Inflector::humanize($field) . "'); ?></td>\n";
			echo "\t\t<td>\n\t\t\t<?php echo \$this->Time->niceShort(\${$singularVar}['{$modelClass}']['{$field}']); ?>\n\t\t\t&nbsp;\n\t\t</td>\n";
			echo '</tr>';

			continue;
		}

		echo '<tr>';
		echo "\t\t<td><?php echo __('" . Inflector::humanize($field) . "'); ?></td>\n";
		echo "\t\t<td>\n\t\t\t<?php echo h(\${$singularVar}['{$modelClass}']['{$field}']); ?>\n\t\t\t&nbsp;\n\t\t</td>\n";
		echo '</tr>';
	}
	
}
?>
	</table>
</div>


<?php
if (!empty($associations['hasOne'])) :
	foreach ($associations['hasOne'] as $alias => $details): ?>
	<div class="related">
		<h3><?php echo "<?php echo __('Related " . Inflector::humanize($details['controller']) . "'); ?>"; ?></h3>
	<?php echo "<?php if (!empty(\${$singularVar}['{$alias}'])): ?>\n"; ?>
		<table class="table table-striped">
	<?php
			foreach ($details['fields'] as $field) {
				echo '<tr>';
				echo "\t\t<td><?php echo __('" . Inflector::humanize($field) . "'); ?></td>\n";
				echo "\t\t<td>\n\t<?php echo \${$singularVar}['{$alias}']['{$field}']; ?>\n&nbsp;</td>\n";
				echo '</tr>';
			}
	?>
		</table>
	<?php echo "<?php endif; ?>\n"; ?>
		<!-- <div class="actions">
			<ul>
				<li><?php echo "<?php echo \$this->Html->link(__('Edit " . Inflector::humanize(Inflector::underscore($alias)) . "'), array('controller' => '{$details['controller']}', 'action' => 'edit', \${$singularVar}['{$alias}']['{$details['primaryKey']}'])); ?></li>\n"; ?>
			</ul>
		</div>
		-->
	</div>
	<?php
	endforeach;
endif;



if (empty($associations['hasMany'])) {
	$associations['hasMany'] = array();
}
if (empty($associations['hasAndBelongsToMany'])) {
	$associations['hasAndBelongsToMany'] = array();
}
$relations = array_merge($associations['hasMany'], $associations['hasAndBelongsToMany']);
foreach ($relations as $alias => $details):
	$otherSingularVar = Inflector::variable($alias);
	$otherPluralHumanName = Inflector::humanize($details['controller']);
	?>
<div class="related">
	<h3><?php echo "<?php echo __('Related " . $otherPluralHumanName . "'); ?>"; ?></h3>
	<?php echo "<?php if (!empty(\${$singularVar}['{$alias}'])): ?>\n"; ?>
	<table class="table table-bordered table-hover">
	<thead>
	<tr>
<?php
			foreach ($details['fields'] as $field) {
				if($field == 'name' || $field == 'title'){
					echo "\t\t<th><?php echo __('" . Inflector::humanize($field) . "'); ?></th>\n";
				}
			}
?>
		<th class="actions"><?php echo "<?php echo __('Actions'); ?>"; ?></th>
	</tr>
	</thead>
	 <tbody>
<?php
echo "\t<?php foreach (\${$singularVar}['{$alias}'] as \${$otherSingularVar}): ?>\n";
		echo "\t\t<tr>\n";
			foreach ($details['fields'] as $field) {
				if($field == 'name' || $field == 'title' ){
					echo "\t\t\t<td><?php echo \${$otherSingularVar}['{$field}']; ?></td>\n";
				}
			}

			echo "\t\t\t<td class=\"actions\">\n";
			echo "\t\t\t\t<?php echo \$this->Html->link('<i class=\"icon-eye3\"></i>', array('controller' => '{$details['controller']}', 'action' => 'view', \${$otherSingularVar}['{$details['primaryKey']}']), array('escape'=>false)); ?>\n";
			echo "\t\t\t\t<?php echo \$this->Html->link('<i class=\"icon-pencil\"></i>', array('controller' => '{$details['controller']}', 'action' => 'edit', \${$otherSingularVar}['{$details['primaryKey']}']),array('escape'=>false)); ?>\n";
			echo "\t\t\t\t<?php echo \$this->Form->postLink('<i class=\"icon-cancel\"></i>', array('controller' => '{$details['controller']}', 'action' => 'delete', \${$otherSingularVar}['{$details['primaryKey']}']), array('escape'=>false), __('Are you sure you want to delete # %s?', \${$otherSingularVar}['{$details['primaryKey']}'])); ?>\n";
			echo "\t\t\t</td>\n";
		echo "\t\t</tr>\n";

echo "\t<?php endforeach; ?>\n";
?>
	 </tbody>
	</table>
<?php echo "<?php endif; ?>\n\n"; ?>
	<!-- <div class="actions">
		<ul>
			<li><?php echo "<?php echo \$this->Html->link(__('New " . Inflector::humanize(Inflector::underscore($alias)) . "'), array('controller' => '{$details['controller']}', 'action' => 'add')); ?>"; ?> </li>
		</ul>
	</div>
	-->
</div>
<?php endforeach; ?>
