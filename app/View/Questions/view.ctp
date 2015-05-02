<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Question'); ?> </h2></div>
	<table class="table table-striped">
<tr>		<td><?php echo __('Content'); ?></td>
		<td>
			<?php echo $this->Html->link($question['Content']['name'], array('controller' => 'contents', 'action' => 'view', $question['Content']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Lesson'); ?></td>
		<td>
			<?php echo $this->Html->link($question['Lesson']['name'], array('controller' => 'lessons', 'action' => 'view', $question['Lesson']['id'])); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Text'); ?></td>
		<td>
			<?php echo h($question['Question']['text']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Type'); ?></td>
		<td>
			<?php echo h($question['Question']['type']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Difficulty'); ?></td>
		<td>
			<?php echo h($question['Question']['difficulty']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Estimated Time To Complete'); ?></td>
		<td>
			<?php echo h($question['Question']['estimated_time_to_complete']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Insert The Multiple Choice'); ?></td>
		<td>
			<?php echo h($question['Question']['insert_the_multiple_choice']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Score Calculation Mode'); ?></td>
		<td>
			<?php echo h($question['Question']['score_calculation_mode']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Insert Matching Pair'); ?></td>
		<td>
			<?php echo h($question['Question']['insert_matching_pair']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('This Question Is'); ?></td>
		<td>
			<?php echo h($question['Question']['this_question_is']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Insert Drag And Drop Couple'); ?></td>
		<td>
			<?php echo h($question['Question']['insert_drag_and_drop_couple']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Correct Answer'); ?></td>
		<td>
			<?php echo h($question['Question']['correct_answer']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Question Text'); ?></td>
		<td>
			<?php echo h($question['Question']['question_text']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Display Alternative In Select Box'); ?></td>
		<td>
			<?php echo h($question['Question']['display_alternative_in_select_box']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Options'); ?></td>
		<td>
			<?php echo h($question['Question']['options']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Answer'); ?></td>
		<td>
			<?php echo h($question['Question']['answer']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Explanation'); ?></td>
		<td>
			<?php echo h($question['Question']['explanation']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Answers Explanation'); ?></td>
		<td>
			<?php echo h($question['Question']['answers_explanation']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Input Type'); ?></td>
		<td>
			<?php echo h($question['Question']['input_type']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Question Correction'); ?></td>
		<td>
			<?php echo h($question['Question']['question_correction']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Example Answer'); ?></td>
		<td>
			<?php echo h($question['Question']['example_answer']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Auto Correct Answer'); ?></td>
		<td>
			<?php echo h($question['Question']['auto_correct_answer']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Estimate'); ?></td>
		<td>
			<?php echo h($question['Question']['estimate']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Settings'); ?></td>
		<td>
			<?php echo h($question['Question']['settings']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Linked To'); ?></td>
		<td>
			<?php echo h($question['Question']['linked_to']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created By'); ?></td>
		<td>
			<?php echo h($question['Question']['created_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified By'); ?></td>
		<td>
			<?php echo h($question['Question']['modified_by']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Created'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($question['Question']['created']); ?>
			&nbsp;
		</td>
</tr><tr>		<td><?php echo __('Modified'); ?></td>
		<td>
			<?php echo $this->Time->niceShort($question['Question']['modified']); ?>
			&nbsp;
		</td>
</tr>	</table>
</div>


<div class="related">
	<h3><?php echo __('Related Exams'); ?></h3>
	<?php if (!empty($question['Exam'])): ?>
	<table class="table table-bordered table-hover">
	<thead>
	<tr>
		<th><?php echo __('Name'); ?></th>
		<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	</thead>
	 <tbody>
	<?php foreach ($question['Exam'] as $exam): ?>
		<tr>
			<td><?php echo $exam['name']; ?></td>
			<td class="actions">
				<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'exams', 'action' => 'view', $exam['id']), array('escape'=>false)); ?>
				<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'exams', 'action' => 'edit', $exam['id']),array('escape'=>false)); ?>
				<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'exams', 'action' => 'delete', $exam['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $exam['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	 </tbody>
	</table>
<?php endif; ?>

	<!-- <div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Exam'), array('controller' => 'exams', 'action' => 'add')); ?> </li>
		</ul>
	</div>
	-->
</div>
