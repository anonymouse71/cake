<!--<script type="text/javascript" src="<?php //echo $this->webroot ?>ckeditor/ckeditor.js"></script>-->

<div class="row">
<?php echo $this->Form->create('Content'); ?>

	<fieldset>
<!--		<legend>--><?php //echo __('Add Content'); ?><!--</legend>-->

	
    <div class="tabbable page-tabs">

             <ul class="nav nav-tabs">

                    <li class="active"><a href="#activity" data-toggle="tab"><i class="icon-grid"></i><?php echo __('Add Content'); ?></a></li>


                </ul>
    <?php

		if (!isset($alreadyHaveLessonId)) {
			// echo $this->Form->input('lesson_id',array('div' => array('class' => 'form-group col-md-3'),'class'=>'form-control'));
		}

?>
		<div class="tab-content">
        <div id="activity" class="tab-pane fade active in">

<?php		


         echo $this->Form->input('name',array('div' => array('class' => 'form-group col-md-3'), 'type'=>'text','class'=>'form-control'));


        echo $this->Form->input('parent_id',array('div' => array('class' => 'form-group col-md-3'),'class'=>'form-control', 'options'=>$parentContents));


        $handle = array(
            'No'=>'No',
            'All_handles'=>'All handles',
            'Upper_handle'=>'Upper handle',
            'Lower_handle'=>'Lower handle'
        );

        echo $this->Form->input('hide_navigation_handles',array('div' => array('class' => 'form-group col-md-3'),'class'=>'form-control','options'=>$handle));

        $unit_completion = array(
            'Defualt'=>'Defualt',
            'Auto_complete'=>'Auto complete',
            'Complete_with_question'=>'Complete with question',
            'Hide_complete_unit_icon'=>'Hide complete unit icon',
            'Accept_terms'=>'Accept terms'
        );


        echo $this->Form->input('unit_completion',array('div' => array('class' => 'form-group col-md-3'),'class'=>'form-control','options'=>$unit_completion));

        $ctgType = array(
            'Default'=>'Default',
            'Theory'=>'Theory',
            'Test'=>'Test',
            'Example'=>'Example'
        );

        echo $this->Form->input('ctg_type',array('div' => array('class' => 'form-group col-md-3'),'class'=>'form-control','options'=>$ctgType));

// echo $this->Form->input('previous_content', array('options' => $content_result['name'], 'options' => $content_result['id'],'empty' => '(choose one)'));

		if (isset($contents)) {
			#echo $this->Form->input('parent_id',array('div' => array('class' => 'form-group col-md-12'),'class'=>'form-control','options'=>$contents,'empty'=>'Why So serious','escape'=>false));
		}

          echo $this->Form->input('previous_content', array('div' => array('class' => 'form-group col-md-3'), 'class' => 'form-control','options'=>$content_result));



         ?>

        <div class="form-group col-md-3"><?php echo $this->Form->input('Maximize_viewable_area',array('type'=>'checkbox','class'=>'')); ?></div>
        <div class="form-group col-md-3"><?php echo $this->Form->input('Accessible_with_a_direct_URL',array('type'=>'checkbox','class'=>'')); ?></div>





        <?php


        echo $this->Form->input('data',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'textarea','class'=>'form-control ckeditor'));



		echo $this->Form->input('active',array('value'=>1,'type'=>'hidden'));
        echo $this->Form->input('publish',array('value'=>1,'type'=>'hidden'));

		// echo $this->Form->input('options',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		// echo $this->Form->input('scorm_version',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		// echo $this->Form->input('publish',array('div' => array('class' => 'form-group col-md-12'),'class'=>'form-control','options'=>array('1'=>'Yes','0'=>'No')));
		// echo $this->Form->input('identifier',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		// echo $this->Form->input('linked_to',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		// echo $this->Form->input('subject',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		// echo $this->Form->input('description',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'textarea','class'=>'form-control ckeditor'));
		// echo $this->Form->input('publisher',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		// echo $this->Form->input('contributor',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		// echo $this->Form->input('type',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		// echo $this->Form->input('format',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		// echo $this->Form->input('source',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		// echo $this->Form->input('relation',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		// echo $this->Form->input('coverage',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		// echo $this->Form->input('rights',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
		// echo $this->Form->input('User',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
	?>


<!--            --><?php //echo $this->Form->input('image',array('div' => array('class' => 'form-group col-md-6'), 'type'=>'file','class'=>'form-control','style'=>'padding:0px')); ?>
            <?php echo $this->Form->input( __('Save'), array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
 ?>

</div>
</div>
</div>
	</fieldset>
</div>


<script type="text/javascript">
	$('#ContentParentId option:first-child').before('<option value="0" selected>Select parent content</option>');
</script>