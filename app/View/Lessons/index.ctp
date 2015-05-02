<ul class="list-unstyled list-inline">
    <li class="subject"><a href="<?php echo $this->webroot; ?>lessons/add"><?php echo __('Add New Lesson');?></a></li>
</ul><br/>
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
			
<!--		<th>--><?php //echo $this->Paginator->sort('show_catalog'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('duration'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('access_limit'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('options'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('course_only'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('certificate'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('from_timestamp'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('to_timestamp'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('shift'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('publish'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('share_folder'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('max_users'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('archive'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('instance_source'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('originating_course'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('description'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('objectives'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('assessment'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('topics'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('resources'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('info'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('learning_method'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('subject'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('publisher'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('contributor'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('type'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('format'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('identifier'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('source'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('relation'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('coverage'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('rights'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('created'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
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
<!--		<td>--><?php //echo h($lesson['Lesson']['active']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['show_catalog']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['duration']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['access_limit']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['options']); ?><!--&nbsp;</td>-->
		<td><?php echo h($lesson['Lesson']['course_only']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($lesson['Lesson']['certificate']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['from_timestamp']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['to_timestamp']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['shift']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['publish']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['share_folder']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['max_users']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['archive']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['instance_source']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['originating_course']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['description']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['objectives']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['assessment']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['topics']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['resources']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['info']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['learning_method']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['subject']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['publisher']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['contributor']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['type']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['format']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['identifier']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['source']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['relation']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['coverage']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($lesson['Lesson']['rights']); ?><!--&nbsp;</td>-->
		<td><?php echo $this->Time->niceShort(h($lesson['Lesson']['created'])); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($lesson['Lesson']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
            <?php echo $this->Html->link('<i class="icon-eye"></i>', array('action' => 'preview', $lesson['Lesson']['id']), array('escape'=>false)); ?>
            <?php echo $this->Html->link('<i class="icon-info"></i>', array('action' => 'view', $lesson['Lesson']['id']), array('escape'=>false)); ?>
            <?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $lesson['Lesson']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $lesson['Lesson']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $lesson['Lesson']['id'])); ?>

			<?php echo $this->Html->link('<i class="icon-plus"></i>', array('controller'=>'contents','action' => 'add', $lesson['Lesson']['id']), array('escape'=>false,'title'=>'Add Content Unit')); ?>
		</td>
	</tr>
<?php endforeach; ?>
    </tbody>
	</table>
	
</div>
</div>


<script type="text/javascript">
	$('.setStatus').click(function(){
		var obj = $(this);

		var lessonId = $(obj).attr('data-id');
		var lessonStatus = $(obj).attr('data-status');

		if (lessonStatus==1) {
			lessonStatus = 0;
		}else{
			lessonStatus = 1;
		}

		$.get('<?php echo $this->webroot ?>lessons/set_lesson_active_inactive/'+lessonId+'/'+lessonStatus,function(respData){

			if (respData=='yes') {
				$(obj).attr('data-status','1');
				$(obj).removeClass('glyphicon-eye-close').addClass('glyphicon-eye-open');
				$(obj).css({'color' : 'green'});
			}else{
				$(obj).attr('data-status','0');
				$(obj).removeClass('glyphicon-eye-open').addClass('glyphicon-eye-close');
				$(obj).css({'color' : 'red'});
			}

		});

	});
</script>