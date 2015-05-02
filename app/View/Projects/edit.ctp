
<div class="row">
    <legend><?php echo __('Add Project'); ?></legend>
    <?php echo $this->Form->create('Project'); ?>
    <div class="tabbable page-tabs">

        <ul class="nav nav-tabs">

            <li class="active"><a href="#activity" data-toggle="tab"> Projects</a></li>

            <li><a href="#contacts" data-toggle="tab"><i class="icon-accessibility"></i> Users</a></li>


        </ul>

        <div class="tab-content">
            <div id="activity" class="tab-pane fade active in">
                <?php
                //		echo $this->Form->input('model_name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
                //		echo $this->Form->input('model_foreign_key',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
                echo $this->Form->input('title',array('div' => array('class' => 'form-group col-md-2'), 'type'=>'text','class'=>'form-control'));

                //		echo $this->Form->input('data',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
                echo $this->Form->input('deadline',array('div' => array('class' => 'form-group col-md-3'), 'type'=>'text','class'=>'form-control datepicker'));
                ?>
                <div class="col-md-11">
                    <?php echo $this->Form->input('auto_assign',array('type'=>'checkbox','class'=>'')); ?>
                </div><?php
                echo $this->Form->input('htmlized_data',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'textarea','class'=>'form-control ckeditor'));
                //		echo $this->Form->input('deadline',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control datepicker'));

                //echo $this->Form->input('deadline', array('div'=> array('class' => 'form-group col-md-12') , 'class'=>'form-control',
                //        'dateFormat' => 'DMY',
                //        'minYear' => date('Y') - 5,
                //        'maxYear' => date('Y') + 5,
                //        'between' => '<div class="col-md-2">',
                //        'separator' => '</div><div class="col-md-2">',
                //        'after' => '</div>',
                //
                //    ));

                //		echo $this->Form->input('auto_assign',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
                //		echo $this->Form->input('metadata',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
                //		echo $this->Form->input('User',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
                ?>

                <?php echo $this->Form->input( __('Save'), array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success'));
                ?>
            </div>
            <div id="contacts" class="tab-pane fade">
                <div class="datatable">

                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr>

                            <th><?php echo $this->Paginator->sort('name'); ?></th>

                            <th><?php echo $this->Paginator->sort('Select'); ?></th>





                        </tr>

                        </thead>

                        <tbody>

                        <?php foreach ($categories as $category): ?>





                            <?php

                            foreach($category["Course"] as $cat):

                                // $lessons = $cat["Lesson"];
                                //debug($lessons);
                                //die();

                                foreach ($cat["Lesson"] as $lesson):

                                    #debug($lesson['name']);
                                    echo "<tr><td>".($lesson['name'])."</td><td>". $this->Form->input('',array('options'=>$parentCategories,'div' => array('class' => 'col-md-4 form-group'), 'class'=>'form-control')) ."</td></tr>";

                                endforeach;

                            endforeach;
                            ?>





                            <!-- <td>
                                <?php /*echo $this->Form->input('',array('options'=>$parentCategories,'div' => array('class' => 'col-md-8 form-group'), 'class'=>'form-control')); */?>
                            </td>-->




                        <?php endforeach; ?>

                        </tbody>
                    </table>

                </div>
            </div>


        </div>

    </div>
    <?php echo $this->Form->end(); ?>
</div>




