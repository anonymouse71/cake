<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Module'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Name'); ?></td>
		<td>
			<?php echo h($module['Module']['name']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Model Name'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($module['Module']['model_name']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Active'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($module['Module']['active']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Title'); ?></td>
		<td>
			<?php echo h($module['Module']['title']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Author'); ?></td>
		<td>
			<?php echo h($module['Module']['author']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Version'); ?></td>
		<td>
			<?php echo h($module['Module']['version']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Description'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($module['Module']['description']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Position'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($module['Module']['position']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr><tr>		<td>--><?php //echo __('Menu'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($module['Module']['menu']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Mandatory'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($module['Module']['mandatory']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Permissions'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($module['Module']['permissions']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($module['Module']['created_by']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Modified By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($module['Module']['modified_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($module['Module']['created']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Modified'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo $this->Time->niceShort($module['Module']['modified']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>	-->
    </table>
</div>


