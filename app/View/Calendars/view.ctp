<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Calendar'); ?> </h2></div>
	<table class="table table-striped">
<!--<tr>-->
<!--    <td>--><?php //echo __('Model Name'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($calendar['Calendar']['model_name']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>-->
<!--            <td>--><?php //echo __('Model Foreign Key'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($calendar['Calendar']['model_foreign_key']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>
            <td><?php echo __('Data'); ?></td>
		<td>
			<?php echo h($calendar['Calendar']['data']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Active'); ?></td>
		<td>
			<?php echo h($calendar['Calendar']['active']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Type'); ?></td>
		<td>
			<?php echo h($calendar['Calendar']['type']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($calendar['Calendar']['created_by']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Modified By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($calendar['Calendar']['modified_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($calendar['Calendar']['created']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Modified'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo $this->Time->niceShort($calendar['Calendar']['modified']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
    </table>
</div>


