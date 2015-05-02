<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Test'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Content'); ?></td>
		<td>
			<?php echo $this->Html->link($test['Content']['name'], array('controller' => 'contents', 'action' => 'view', $test['Content']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Lesson'); ?></td>
		<td>
			<?php echo $this->Html->link($test['Lesson']['name'], array('controller' => 'lessons', 'action' => 'view', $test['Lesson']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Name'); ?></td>
		<td>
			<?php echo h($test['Test']['name']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Duration In Minute'); ?></td>
		<td>
			<?php echo h($test['Test']['duration_in_minute']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Test Repetitions'); ?></td>
		<td>
			<?php echo h($test['Test']['test_repetitions']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Maintain History'); ?></td>
		<td>
			<?php echo h($test['Test']['maintain_history']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Mastery Score'); ?></td>
		<td>
			<?php echo h($test['Test']['mastery_score']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Active'); ?></td>
		<td>
			<?php echo h($test['Test']['active']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Publish'); ?></td>
		<td>
			<?php echo h($test['Test']['publish']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Show Question One By One'); ?></td>
		<td>
			<?php echo h($test['Test']['show_question_one_by_one']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Move Only Forward'); ?></td>
		<td>
			<?php echo h($test['Test']['move_only_forward']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Submit Action'); ?></td>
		<td>
			<?php echo h($test['Test']['submit_action']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Shuffle Answer'); ?></td>
		<td>
			<?php echo h($test['Test']['shuffle_answer']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Shuffle Question'); ?></td>
		<td>
			<?php echo h($test['Test']['shuffle_question']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Display Ordered List'); ?></td>
		<td>
			<?php echo h($test['Test']['display_ordered_list']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Test Can Be Paused'); ?></td>
		<td>
			<?php echo h($test['Test']['test_can_be_paused']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Display Weights During Test'); ?></td>
		<td>
			<?php echo h($test['Test']['display_weights_during_test']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Force Student To Answer All Question'); ?></td>
		<td>
			<?php echo h($test['Test']['force_student_to_answer_all_question']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Retain Best Score'); ?></td>
		<td>
			<?php echo h($test['Test']['retain_best_score']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Description'); ?></td>
		<td>
			<?php echo h($test['Test']['description']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Keep Best'); ?></td>
		<td>
			<?php echo h($test['Test']['keep_best']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Options'); ?></td>
		<td>
			<?php echo h($test['Test']['options']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($test['Test']['created_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified By'); ?></td>
		<td>
			<?php echo h($test['Test']['modified_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($test['Test']['created']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($test['Test']['modified']); ?>
			&nbsp;
		</td>
</tr>	</table>
</div>


