<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Notification'); ?> </h2></div>
	<table class="table table-striped">
<!--<tr>		<td>--><?php //echo __('Model Name'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($notification['Notification']['model_name']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Model Foreign Key'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($notification['Notification']['model_foreign_key']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Send Interval'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($notification['Notification']['send_interval']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Send Conditions'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($notification['Notification']['send_conditions']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
<!--        <tr>		<td>--><?php //echo __('Id Type Entity'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($notification['Notification']['id_type_entity']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Recipient'); ?></td>
		<td>
			<?php echo h($notification['Notification']['recipient']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Subject'); ?></td>
		<td>
			<?php echo h($notification['Notification']['subject']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Message'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($notification['Notification']['message']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Active'); ?></td>
		<td>
			<?php echo h($notification['Notification']['active']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Html Message'); ?></td>
		<td>
			<?php echo h($notification['Notification']['html_message']); ?>
			&nbsp;
		</td>
</tr>
        <tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($notification['Notification']['created_by']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Modified By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($notification['Notification']['modified_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>-->
        <tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($notification['Notification']['created']); ?>
			&nbsp;
		</td>
</tr>
<!--        <tr>		<td>--><?php //echo __('Modified'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo $this->Time->niceShort($notification['Notification']['modified']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--</tr>	-->
    </table>
</div>


