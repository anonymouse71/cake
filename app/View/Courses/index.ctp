<ul class="list-unstyled list-inline">
        <li class="subject"><a href="<?php echo $this->webroot; ?>courses/add"><?php echo __('Add New Course');?></a></li>
</ul><br/>
<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __('Courses'); ?></h6></div>
    <div class="datatable">
	
	 <table class="table table-bordered table-hover">
     <thead>
	<tr>
	
<!--		<th>--><?php //echo $this->Paginator->sort('category_id'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('name'); ?></th>

        <th><?php echo $this->Paginator->sort('participation'); ?></th>
			
		<th><?php echo $this->Paginator->sort('active'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('archive'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('start_date'); ?></th>
			
		<th><?php echo $this->Paginator->sort('end_date'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('options'); ?><!--</th>-->
			
		<th><?php echo $this->Paginator->sort('price'); ?></th>
			
<!--		<th>--><?php //echo $this->Paginator->sort('show_catalog'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('publish'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('reset'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('certificate_expiration'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('reset_interval'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('max_users'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('rules'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('instance_source'); ?><!--</th>-->

<!--		<th>--><?php //echo $this->Paginator->sort('depends_on'); ?><!--</th>-->
			
<!--		<th>--><?php //echo $this->Paginator->sort('ceu'); ?><!--</th>-->
			
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
	<?php foreach ($courses as $course): ?>
	<tr>
<!--		<td>-->
<!--			--><?php //echo $this->Html->link($course['Category']['name'], array('controller' => 'categories', 'action' => 'view', $course['Category']['id'])); ?>
<!--		</td>-->
		<td><?php echo h($course['Course']['name']); ?>&nbsp;</td>
        <td class="text-center"><?php echo h($course['Course']['participation']); ?>&nbsp;</td>
        <td class="text-center" id="setActiveInactive">
			<?php if ($course['Course']['active']){ ?>
				<i style="color:green;cursor:pointer" class="glyphicon glyphicon-eye-open setStatus" title="Set Inactive" data-id="<?php echo $course['Course']['id'] ?>" data-status="1"></i>
			<?php }else{ ?>
				<i style="color:red;cursor:pointer" class="glyphicon glyphicon-eye-close setStatus" title="Set Active" data-id="<?php echo $course['Course']['id'] ?>" data-status="0"></i>
			<?php } ?>

        </td>
<!--		<td>--><?php //echo h($course['Course']['active']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['archive']); ?><!--&nbsp;</td>-->
		<td><?php echo $this->Time->niceShort(h($course['Course']['start_date'])); ?>&nbsp;</td>
		<td><?php echo $this->Time->niceShort(h($course['Course']['end_date'])); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($course['Course']['options']); ?><!--&nbsp;</td>-->
		<td><?php echo h($course['Course']['price']); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($course['Course']['show_catalog']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['publish']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['reset']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['certificate_expiration']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['reset_interval']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['max_users']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['rules']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['instance_source']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['depends_on']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['ceu']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['description']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['objectives']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['assessment']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['topics']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['resources']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['info']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['learning_method']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['subject']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['publisher']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['contributor']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['type']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['format']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['identifier']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['source']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['relation']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['coverage']); ?><!--&nbsp;</td>-->
<!--		<td>--><?php //echo h($course['Course']['rights']); ?><!--&nbsp;</td>-->
		<td><?php echo $this->Time->niceShort(h($course['Course']['created'])); ?>&nbsp;</td>
<!--		<td>--><?php //echo h($course['Course']['modified']); ?><!--&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link('<i class="glyphicon glyphicon-eye-open"></i>', array('action' => 'view', $course['Course']['id']), array('escape'=>false)); ?>
			
			<?php echo $this->Html->link('<i class="glyphicon glyphicon-edit"></i>', array('action' => 'edit', $course['Course']['id']), array('escape'=>false)); ?>
			<?php echo $this->Form->postLink('<i class=" glyphicon glyphicon-remove-sign"></i>', array('action' => 'delete', $course['Course']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $course['Course']['id'])); ?>
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

		var courseId = $(obj).attr('data-id');
		var courseStatus = $(obj).attr('data-status');

		if (courseStatus==1) {
			courseStatus = 0;
		}else{
			courseStatus = 1;
		}

		$.get('<?php echo $this->webroot ?>courses/set_course_active_inactive/'+courseId+'/'+courseStatus,function(respData){

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