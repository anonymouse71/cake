<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Configuration'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Name'); ?></td>
		<td>
			<?php echo h($configuration['Configuration']['name']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Value'); ?></td>
		<td>
			<?php echo h($configuration['Configuration']['value']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Created By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($configuration['Configuration']['created_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Modified By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($configuration['Configuration']['modified_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($configuration['Configuration']['created']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Modified'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($configuration['Configuration']['modified']); ?>
			&nbsp;
		</td>
</tr>	</table>
</div>


