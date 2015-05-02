<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Sent Notification'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Recipient'); ?></td>
		<td>
			<?php echo h($sentNotification['SentNotification']['recipient']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Subject'); ?></td>
		<td>
			<?php echo h($sentNotification['SentNotification']['subject']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Body'); ?></td>
		<td>
			<?php echo h($sentNotification['SentNotification']['body']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($sentNotification['SentNotification']['created_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified By'); ?></td>
		<td>
			<?php echo h($sentNotification['SentNotification']['modified_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($sentNotification['SentNotification']['created']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($sentNotification['SentNotification']['modified']); ?>
			&nbsp;
		</td>
</tr>	</table>
</div>


