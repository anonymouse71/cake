<?php #debug($categories); ?>
<legend><?php echo __('Edit Category'); ?></legend>
<div class="tabbable page-tabs">

    <ul class="nav nav-tabs">

        <li class="active"><a href="#activity" data-toggle="tab"> Category Settings</a></li>

        <li><a href="#contacts" data-toggle="tab"> Category Lessons</a></li>

        <li><a href="#tasks" data-toggle="tab"> Category Courses</a></li>

    </ul>

    <div class="tab-content">
        <div id="activity" class="tab-pane fade active in">

                <?php echo $this->Form->create('Category'); ?>
                <?php echo $this->Form->input('id',array('div' => array('class' => ''), 'type'=>'hidden','class'=>'form-control'));	?>
                <div class="row">
                    <div class="col-md-10 col-md-offset-2">

                        <div class="form-group col-md-12">
                            <?php echo $this->Form->input('name',array('div' => array('class' => 'col-md-5'), 'type'=>'text','class'=>'form-control'));?>
                        </div>



                        <div class="col-md-12 ">
                            <?php echo $this->Form->input('parent_id',array('options'=>$parentCategories,'div' => array('class' => 'col-md-3 form-group'), 'class'=>'form-control')); ?>
                        </div>

                        <?php echo $this->Form->input(__('Save'), array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success')); ?>
                    </div>
                </div>
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
        <div id="tasks" class="tab-pane fade">Hello</div>
    </div>
</div>


