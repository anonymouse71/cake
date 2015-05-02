<div class="panel panel-default">
	<div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i> Users List</h6></div>
	<div class="datatable">
	    <table cellspacing="0" cellpadding="0" width="100%" border="0"  class="table table-striped">
			<thead>
				<tr>
					<th><?php echo __('SL');?></th>
					<th><?php echo __('Email');?></th>
					<th><?php echo __('Status');?></th>
					<th><?php echo __('Created');?></th>
					<th class="text-center"><?php echo __('Active');?></th>
				</tr>
			</thead>
			<tbody>
				<?php if (!empty($users)) {
					$sl=0;
					foreach ($users as $row) {
						#var_dump($users); die();
						$sl++;
						echo "<tr>";
						echo "<td>".$sl."</td>";
						echo "<td>".h($row['User']['email'])."</td>";
						echo "<td>";
						if ($row['User']['active']==1) {
							echo "Active";
						} else {
							echo "Inactive";
						}
						echo"</td>";
						echo "<td>".date('d-M-Y',strtotime($row['User']['created']))."</td>";
						echo "<td class='text-center'>";
							if (isset($row['User']['involvedInLesson'])) {
								echo $this->form->input('lesson_id',array('id'=>false,'class'=>'assignToCourse','type'=>'checkbox','label'=>false,'div'=>false,'data-userid'=>$row['User']['id'],'data-courseId'=>$courseId,'checked'=>true));
							}else{
								echo $this->form->input('lesson_id',array('id'=>false,'class'=>'assignToCourse','type'=>'checkbox','label'=>false,'div'=>false,'data-userid'=>$row['User']['id'],'data-courseId'=>$courseId));
							}
							echo "<img class='ajaxLoader' src='".$this->webroot."/img/busy.gif' style='display:none;margin-left:5px;margin-top:-7px' />";
						echo "</td>";
						echo "</tr>";
					}
				} else {
					echo "<tr><td colspan=10><br/><br/>No Data</td></tr>";
				} ?>
			</tbody>
		</table>
	    
	</div>
</div>


<script type="text/javascript">

	var obj

	$('.assignToCourse').click(function(){

		obj = $(this);
		var courseId = $(obj).attr('data-courseId');
		var userId = $(obj).attr('data-userid');
		
		$.get('<?php echo $this->webroot ?>courses/add_to_course_users/'+courseId+'/'+userId,function(respData){
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