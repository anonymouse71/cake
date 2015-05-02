<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Exam'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Content'); ?></td>
		<td>
			<?php echo $this->Html->link($exam['Content']['name'], array('controller' => 'contents', 'action' => 'view', $exam['Content']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Lesson'); ?></td>
		<td>
			<?php echo $this->Html->link($exam['Lesson']['name'], array('controller' => 'lessons', 'action' => 'view', $exam['Lesson']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Name'); ?></td>
		<td>
			<?php echo h($exam['Exam']['name']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Duration In Minute'); ?></td>
		<td>
			<?php echo h($exam['Exam']['duration_in_minute']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Test Repetitions'); ?></td>
		<td>
			<?php echo h($exam['Exam']['test_repetitions']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Maintain History'); ?></td>
		<td>
			<?php echo h($exam['Exam']['maintain_history']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Mastery Score'); ?></td>
		<td>
			<?php echo h($exam['Exam']['mastery_score']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Active'); ?></td>
		<td>
			<?php echo h($exam['Exam']['active']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Publish'); ?></td>
		<td>
			<?php echo h($exam['Exam']['publish']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Show Question One By One'); ?></td>
		<td>
			<?php echo h($exam['Exam']['show_question_one_by_one']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Move Only Forward'); ?></td>
		<td>
			<?php echo h($exam['Exam']['move_only_forward']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Submit Action'); ?></td>
		<td>
			<?php echo h($exam['Exam']['submit_action']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Shuffle Answer'); ?></td>
		<td>
			<?php echo h($exam['Exam']['shuffle_answer']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Shuffle Question'); ?></td>
		<td>
			<?php echo h($exam['Exam']['shuffle_question']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Display Ordered List'); ?></td>
		<td>
			<?php echo h($exam['Exam']['display_ordered_list']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Test Can Be Paused'); ?></td>
		<td>
			<?php echo h($exam['Exam']['test_can_be_paused']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Display Weights During Test'); ?></td>
		<td>
			<?php echo h($exam['Exam']['display_weights_during_test']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Force Student To Answer All Question'); ?></td>
		<td>
			<?php echo h($exam['Exam']['force_student_to_answer_all_question']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Retain Best Score'); ?></td>
		<td>
			<?php echo h($exam['Exam']['retain_best_score']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Description'); ?></td>
		<td>
			<?php echo h($exam['Exam']['description']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Keep Best'); ?></td>
		<td>
			<?php echo h($exam['Exam']['keep_best']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Options'); ?></td>
		<td>
			<?php echo h($exam['Exam']['options']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($exam['Exam']['created_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified By'); ?></td>
		<td>
			<?php echo h($exam['Exam']['modified_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($exam['Exam']['created']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($exam['Exam']['modified']); ?>
			&nbsp;
		</td>
</tr>	</table>
</div>


<div class="related">
	<h3><?php echo __('Related Questions'); ?></h3>
	<?php if (!empty($exam['Question'])): ?>
	<table class="table table-bordered table-hover">
	<thead>
	<tr>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	 <tbody>
	<?php foreach ($exam['Question'] as $question): ?>
		<tr>
			<td class="actions">
				<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'questions', 'action' => 'view', $question['id']), array('escape'=>false)); ?>
				<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'questions', 'action' => 'edit', $question['id']),array('escape'=>false)); ?>
				<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'questions', 'action' => 'delete', $question['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $question['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	 </tbody>
	</table>
<?php endif; ?>

	<!-- <div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Question'), array('controller' => 'questions', 'action' => 'add')); ?> </li>
		</ul>
	</div>
	-->
</div>
