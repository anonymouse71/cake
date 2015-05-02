<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Questions'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('content_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('lesson_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('text'); ?></th>
			
		<th><?php echo $this->Paginator->sort('type'); ?></th>
			
		<th><?php echo $this->Paginator->sort('difficulty'); ?></th>
			
		<th><?php echo $this->Paginator->sort('estimated_time_to_complete'); ?></th>
			
		<th><?php echo $this->Paginator->sort('insert_the_multiple_choice'); ?></th>
			
		<th><?php echo $this->Paginator->sort('score_calculation_mode'); ?></th>
			
		<th><?php echo $this->Paginator->sort('insert_matching_pair'); ?></th>
			
		<th><?php echo $this->Paginator->sort('this_question_is'); ?></th>
			
		<th><?php echo $this->Paginator->sort('insert_drag_and_drop_couple'); ?></th>
			
		<th><?php echo $this->Paginator->sort('correct_answer'); ?></th>
			
		<th><?php echo $this->Paginator->sort('question_text'); ?></th>
			
		<th><?php echo $this->Paginator->sort('display_alternative_in_select_box'); ?></th>
			
		<th><?php echo $this->Paginator->sort('options'); ?></th>
			
		<th><?php echo $this->Paginator->sort('answer'); ?></th>
			
		<th><?php echo $this->Paginator->sort('explanation'); ?></th>
			
		<th><?php echo $this->Paginator->sort('answers_explanation'); ?></th>
			
		<th><?php echo $this->Paginator->sort('input_type'); ?></th>
			
		<th><?php echo $this->Paginator->sort('question_correction'); ?></th>
			
		<th><?php echo $this->Paginator->sort('example_answer'); ?></th>
			
		<th><?php echo $this->Paginator->sort('auto_correct_answer'); ?></th>
			
		<th><?php echo $this->Paginator->sort('estimate'); ?></th>
			
		<th><?php echo $this->Paginator->sort('settings'); ?></th>
			
		<th><?php echo $this->Paginator->sort('linked_to'); ?></th>
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
		<th><?php echo $this->Paginator->sort('modified'); ?></th>
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($questions as $question): ?>
	<tr>
		<td>
			<?php echo $this->Html->link($question['Content']['name'], array('controller' => 'contents', 'action' => 'view', $question['Content']['id'])); ?>
		</td>
		<td>
			<?php echo $this->Html->link($question['Lesson']['name'], array('controller' => 'lessons', 'action' => 'view', $question['Lesson']['id'])); ?>
		</td>
		<td><?php echo h($question['Question']['text']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['type']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['difficulty']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['estimated_time_to_complete']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['insert_the_multiple_choice']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['score_calculation_mode']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['insert_matching_pair']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['this_question_is']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['insert_drag_and_drop_couple']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['correct_answer']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['question_text']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['display_alternative_in_select_box']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['options']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['answer']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['explanation']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['answers_explanation']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['input_type']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['question_correction']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['example_answer']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['auto_correct_answer']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['estimate']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['settings']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['linked_to']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['created']); ?>&nbsp;</td>
		<td><?php echo h($question['Question']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $question['Question']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $question['Question']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $question['Question']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $question['Question']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
