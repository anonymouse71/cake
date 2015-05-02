<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Exams'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
		<th><?php echo $this->Paginator->sort('content_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('lesson_id'); ?></th>
			
		<th><?php echo $this->Paginator->sort('name'); ?></th>
			
		<th><?php echo $this->Paginator->sort('duration_in_minute'); ?></th>
			
		<th><?php echo $this->Paginator->sort('test_repetitions'); ?></th>
			
		<th><?php echo $this->Paginator->sort('maintain_history'); ?></th>
			
		<th><?php echo $this->Paginator->sort('mastery_score'); ?></th>
			
		<th><?php echo $this->Paginator->sort('active'); ?></th>
			
		<th><?php echo $this->Paginator->sort('publish'); ?></th>
			
		<th><?php echo $this->Paginator->sort('show_question_one_by_one'); ?></th>
			
		<th><?php echo $this->Paginator->sort('move_only_forward'); ?></th>
			
		<th><?php echo $this->Paginator->sort('submit_action'); ?></th>
			
		<th><?php echo $this->Paginator->sort('shuffle_answer'); ?></th>
			
		<th><?php echo $this->Paginator->sort('shuffle_question'); ?></th>
			
		<th><?php echo $this->Paginator->sort('display_ordered_list'); ?></th>
			
		<th><?php echo $this->Paginator->sort('test_can_be_paused'); ?></th>
			
		<th><?php echo $this->Paginator->sort('display_weights_during_test'); ?></th>
			
		<th><?php echo $this->Paginator->sort('force_student_to_answer_all_question'); ?></th>
			
		<th><?php echo $this->Paginator->sort('retain_best_score'); ?></th>
			
		<th><?php echo $this->Paginator->sort('description'); ?></th>
			
		<th><?php echo $this->Paginator->sort('keep_best'); ?></th>
			
		<th><?php echo $this->Paginator->sort('options'); ?></th>
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
		<th><?php echo $this->Paginator->sort('modified'); ?></th>
					<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
     </thead>
            <tbody>
	<?php foreach ($exams as $exam): ?>
	<tr>
		<td>
			<?php echo $this->Html->link($exam['Content']['name'], array('controller' => 'contents', 'action' => 'view', $exam['Content']['id'])); ?>
		</td>
		<td>
			<?php echo $this->Html->link($exam['Lesson']['name'], array('controller' => 'lessons', 'action' => 'view', $exam['Lesson']['id'])); ?>
		</td>
		<td><?php echo h($exam['Exam']['name']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['duration_in_minute']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['test_repetitions']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['maintain_history']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['mastery_score']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['active']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['publish']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['show_question_one_by_one']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['move_only_forward']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['submit_action']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['shuffle_answer']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['shuffle_question']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['display_ordered_list']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['test_can_be_paused']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['display_weights_during_test']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['force_student_to_answer_all_question']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['retain_best_score']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['description']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['keep_best']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['options']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['created']); ?>&nbsp;</td>
		<td><?php echo h($exam['Exam']['modified']); ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $exam['Exam']['id']), array('escape'=>false)); ?>
			<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $exam['Exam']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $exam['Exam']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $exam['Exam']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>
