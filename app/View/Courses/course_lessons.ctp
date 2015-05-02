<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Lessons'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
	     <thead>
			<tr>
				<th><?php echo $this->Paginator->sort('category_id'); ?></th>
					
				<th><?php echo $this->Paginator->sort('name'); ?></th>
					
				<th><?php echo $this->Paginator->sort('price'); ?></th>
					
				<th><?php echo $this->Paginator->sort('active'); ?></th>
				<th><?php echo $this->Paginator->sort('course_only'); ?></th>
				<th><?php echo $this->Paginator->sort('created'); ?></th>
				<th class="actions"><?php echo __('Actions'); ?></th>
			</tr>
	    </thead>
        <tbody>
			<?php foreach ($lessons as $lesson): ?>
			<tr>
		        <td>
					<?php echo $this->Html->link($lesson['Category']['name'], array('controller' => 'categories', 'action' => 'view', $lesson['Category']['id'])); ?>
				</td>
				<td><?php echo h($lesson['Lesson']['name']); ?>&nbsp;</td>
				<td><?php echo h($lesson['Lesson']['price']); ?>&nbsp;</td>
				<td class="text-center" id="setActiveInactive">
					<?php if ($lesson['Lesson']['active']){ ?>
						<i style="color:green;cursor:pointer" class="glyphicon glyphicon-eye-open setStatus" title="Set Inactive" data-id="<?php echo $lesson['Lesson']['id'] ?>" data-status="1"></i>
					<?php }else{ ?>
						<i style="color:red;cursor:pointer" class="glyphicon glyphicon-eye-close setStatus" title="Set Active" data-id="<?php echo $lesson['Lesson']['id'] ?>" data-status="0"></i>
					<?php } ?>
				</td>
				<td><?php echo h($lesson['Lesson']['course_only']); ?>&nbsp;</td>

				<td><?php echo $this->Time->niceShort(h($lesson['Lesson']['created'])); ?>&nbsp;</td>
				<?php 
					echo "<td class='text-center'>";
						if (isset($lesson['Lesson']['involvedInLesson'])) {
							echo $this->form->input('lesson_id',array('id'=>false,'class'=>'assignToCourse','type'=>'checkbox','label'=>false,'div'=>false,'data-lessonid'=>$lesson['Lesson']['id'],'data-courseId'=>$courseId,'checked'=>true));
						}else{
							echo $this->form->input('lesson_id',array('id'=>false,'class'=>'assignToCourse','type'=>'checkbox','label'=>false,'div'=>false,'data-lessonid'=>$lesson['Lesson']['id'],'data-courseId'=>$courseId));
						}
						echo "<img class='ajaxLoader' src='".$this->webroot."/img/busy.gif' style='display:none;margin-left:5px;margin-top:-7px' />";
					echo "</td>";
				 ?>
			</tr>
		<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>


<script type="text/javascript">

	var obj

	$('.assignToCourse').click(function(){

		obj = $(this);
		var courseId = $(obj).attr('data-courseId');
		var lessonid = $(obj).attr('data-lessonid');
		
		$.get('<?php echo $this->webroot ?>courses/add_to_course_lesson/'+courseId+'/'+lessonid,function(respData){
			//alert(respData);
		})
	});

	$(document).ajaxStart(function(){
		$(obj).parent().find('.ajaxLoader').show();
	});

	$(document).ajaxComplete(function(){
		$(obj).parent().find('.ajaxLoader').hide();
	});

</script>
