<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Announcement'); ?> </h2></div>
	<table class="table table-striped">
<!-- <tr>		<td><?php //echo __('Model Name'); ?></td> -->
		<!-- <td> -->
			<?php //echo h($announcement['Announcement']['model_name']); ?>
			<!-- &nbsp; -->
		<!-- </td> -->
<!-- </tr> -->
<!-- <tr>		<td><?php //echo __('Model Foreign Key'); ?></td> -->
		<!-- <td> -->
			<?php //echo h($announcement['Announcement']['model_foreign_key']); ?>
			<!-- &nbsp; -->
		<!-- </td> -->
<!-- </tr> -->
<tr>		<td><?php echo __('Title'); ?></td>
		<td>
			<?php echo h($announcement['Announcement']['title']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Data'); ?></td>
		<td>
			<?php echo h($announcement['Announcement']['data']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Expire'); ?></td>
		<td>
			<?php echo $this->Time->niceShort(h($announcement['Announcement']['expire'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo  h($announcement['Announcement']['created_by']); ?>
			&nbsp;
		</td>
</tr>
<!-- <tr>		<td><?php //echo __('Modified By'); ?></td> -->
		<!-- <td> -->
			<?php //echo h($announcement['Announcement']['modified_by']); ?>
			<!-- &nbsp; -->
		<!-- </td> -->
<!-- </tr><tr>		<td><?php //echo __('Created'); ?></td> -->
		<!-- <td> -->
			<?php //echo $this->Time->niceShort($announcement['Announcement']['created']); ?>
			<!-- &nbsp; -->
		<!-- </td> -->
<!-- </tr><tr>		<td><?php //echo __('Modified'); ?></td> -->
		<!-- <td> -->
			<?php //echo $this->Time->niceShort($announcement['Announcement']['modified']); ?>
			<!-- &nbsp; -->
		<!-- </td> -->
<!-- </tr> -->
</table>
</div>


