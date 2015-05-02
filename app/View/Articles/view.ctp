<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Article'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Blog'); ?></td>
		<td>
			<?php echo $this->Html->link($article['Blog']['name'], array('controller' => 'blogs', 'action' => 'view', $article['Blog']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Title'); ?></td>
		<td>
			<?php echo h($article['Article']['title']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Data'); ?></td>
		<td>
			<?php echo h($article['Article']['data']); ?>
			&nbsp;
		</td>
</tr><!--<tr>		<td><?php /*echo __('Active'); */?></td>
		<td>
			<?php /*echo h($article['Article']['active']); */?>
			&nbsp;
		</td>
</tr>--><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($article['Article']['created_by']); ?>
			&nbsp;
		</td>
</tr><!--<tr>		<td><?php /*echo __('Modified By'); */?></td>
		<td>
			<?php /*echo h($article['Article']['modified_by']); */?>
			&nbsp;
		</td>
</tr><tr>		<td><?php /*echo __('Created'); */?></td>
		<td>
			<?php /*echo $this->Time->niceShort($article['Article']['created']); */?>
			&nbsp;
		</td>
</tr><tr>		<td><?php /*echo __('Modified'); */?></td>
		<td>
			<?php /*echo $this->Time->niceShort($article['Article']['modified']); */?>
			&nbsp;
		</td>
</tr>-->	</table>
</div>


