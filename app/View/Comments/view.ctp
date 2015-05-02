<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Comment'); ?> </h2></div>
	<table class="table table-striped">
<<!--tr>		<td><?php /*echo __('Model Name'); */?></td>
		<td>
			<?php /*echo h($comment['Comment']['model_name']); */?>
			&nbsp;
		</td>
</tr><tr>		<td><?php /*echo __('Model Foreign Key'); */?></td>
		<td>
			<?php /*echo h($comment['Comment']['model_foreign_key']); */?>
			&nbsp;
		</td>
</tr>--><tr>		<td><?php echo __('Data'); ?></td>
		<td>
			<?php echo h($comment['Comment']['data']); ?>
			&nbsp;
		</td>
</tr><!--<tr>		<td><?php /*echo __('Active'); */?></td>
		<td>
			<?php /*echo h($comment['Comment']['active']); */?>
			&nbsp;
		</td>
</tr><tr>		<td><?php /*echo __('Private'); */?></td>
		<td>
			<?php /*echo h($comment['Comment']['private']); */?>
			&nbsp;
		</td>
</tr>--><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($comment['Comment']['created_by']); ?>
			&nbsp;
		</td>
</tr><!--<tr>		<td><?php /*echo __('Modified By'); */?></td>
		<td>
			<?php /*echo h($comment['Comment']['modified_by']); */?>
			&nbsp;
		</td>
</tr>--><!--<tr>		<td><?php /*echo __('Created'); */?></td>
		<td>
			<?php /*echo $this->Time->niceShort($comment['Comment']['created']); */?>
			&nbsp;
		</td>
</tr>--><tr>		<td><?php echo __('Modified'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($comment['Comment']['modified']); ?>
			&nbsp;
		</td>
</tr>	</table>
</div>


