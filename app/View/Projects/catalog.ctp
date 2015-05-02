<ul class="list-unstyled list-inline">
    <li class="subject"><a href="<?php echo $this->webroot; ?>projects/add"><?php echo __('Add New Project');?></a></li>
</ul><br/>
<div class="row">
<?php echo $this->Form->create('Project'); ?>
<div class="tabbable page-tabs">

    <ul class="nav nav-tabs">

        <li class="active"><a href="#activity" data-toggle="tab"> Active</a></li>

        <li><a href="#inactive" data-toggle="tab"> Inactive</a></li>

    </ul>

    <div class="tab-content">
        <!--        --><?php //echo $this->Form->create('Category'); ?>
        <div id="activity" class="tab-pane fade active in">
            <div class="row">
                <div class="col-md-10 ">
                    <div class="datatable">
                        <table class="table table-bordered table-hover">
                        <thead>
                        <tr>

                            <!--		<th>--><?php //echo $this->Paginator->sort('model_name'); ?><!--</th>-->

                            <!--		<th>--><?php //echo $this->Paginator->sort('model_foreign_key'); ?><!--</th>-->

                            <th><?php echo $this->Paginator->sort('title'); ?></th>

                            <!--		<th>--><?php //echo $this->Paginator->sort('data'); ?><!--</th>-->

                            <!--		<th>--><?php //echo $this->Paginator->sort('htmlized_data'); ?><!--</th>-->

                            <th><?php echo $this->Paginator->sort('deadline'); ?></th>

                            <!--		<th>--><?php //echo $this->Paginator->sort('auto_assign'); ?><!--</th>-->

                            <!--		<th>--><?php //echo $this->Paginator->sort('metadata'); ?><!--</th>-->

                            <th><?php echo $this->Paginator->sort('created'); ?></th>

                            <!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
                            <th class="actions"><?php echo __('Actions'); ?></th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($contents as $project): ?>
                            <tr>
                                <!--		<td>--><?php //echo h($project['Project']['model_name']); ?><!--&nbsp;</td>-->
                                <!--		<td>--><?php //echo h($project['Project']['model_foreign_key']); ?><!--&nbsp;</td>-->
                                <td><?php echo h($project['Project']['title']); ?>&nbsp;</td>
                                <!--		<td>--><?php //echo h($project['Project']['data']); ?><!--&nbsp;</td>-->
                                <!--		<td>--><?php //echo h($project['Project']['htmlized_data']); ?><!--&nbsp;</td>-->
                                <td><?php echo $this->Time->niceShort(h($project['Project']['deadline'])); ?>&nbsp;</td>
                                <!--		<td>--><?php //echo h($project['Project']['auto_assign']); ?><!--&nbsp;</td>-->
                                <!--		<td>--><?php //echo h($project['Project']['metadata']); ?><!--&nbsp;</td>-->
                                <td><?php echo $this->Time->niceShort(h($project['Project']['created'])); ?>&nbsp;</td>
                                <!--		<td>--><?php //echo h($project['Project']['modified']); ?><!--&nbsp;</td>-->
                                <td class="actions">
                                    <?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $project['Project']['id']), array('escape'=>false)); ?>
                                    <?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $project['Project']['id']), array('escape'=>false)); ?>
                                    <?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $project['Project']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $project['Project']['id'])); ?>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>
        <div id="inactive" class="tab-pane fade">

            <div class="row">
                <div class="col-md-10 ">
                    <div class="datatable">
                        <table class="table table-bordered table-hover">
                        <thead>
                        <tr>

                            <!--		<th>--><?php //echo $this->Paginator->sort('model_name'); ?><!--</th>-->

                            <!--		<th>--><?php //echo $this->Paginator->sort('model_foreign_key'); ?><!--</th>-->

                            <th><?php echo $this->Paginator->sort('title'); ?></th>

                            <!--		<th>--><?php //echo $this->Paginator->sort('data'); ?><!--</th>-->

                            <!--		<th>--><?php //echo $this->Paginator->sort('htmlized_data'); ?><!--</th>-->

                            <th><?php echo $this->Paginator->sort('deadline'); ?></th>

                            <!--		<th>--><?php //echo $this->Paginator->sort('auto_assign'); ?><!--</th>-->

                            <!--		<th>--><?php //echo $this->Paginator->sort('metadata'); ?><!--</th>-->

                            <th><?php echo $this->Paginator->sort('created'); ?></th>

                            <!--		<th>--><?php //echo $this->Paginator->sort('modified'); ?><!--</th>-->
                            <th class="actions"><?php echo __('Actions'); ?></th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($projects as $project): ?>
                            <tr>
                                <!--		<td>--><?php //echo h($project['Project']['model_name']); ?><!--&nbsp;</td>-->
                                <!--		<td>--><?php //echo h($project['Project']['model_foreign_key']); ?><!--&nbsp;</td>-->
                                <td><?php echo h($project['Project']['title']); ?>&nbsp;</td>
                                <!--		<td>--><?php //echo h($project['Project']['data']); ?><!--&nbsp;</td>-->
                                <!--		<td>--><?php //echo h($project['Project']['htmlized_data']); ?><!--&nbsp;</td>-->
                                <td><?php echo $this->Time->niceShort(h($project['Project']['deadline'])); ?>&nbsp;</td>
                                <!--		<td>--><?php //echo h($project['Project']['auto_assign']); ?><!--&nbsp;</td>-->
                                <!--		<td>--><?php //echo h($project['Project']['metadata']); ?><!--&nbsp;</td>-->
                                <td><?php echo $this->Time->niceShort(h($project['Project']['created'])); ?>&nbsp;</td>
                                <!--		<td>--><?php //echo h($project['Project']['modified']); ?><!--&nbsp;</td>-->
                                <td class="actions">
                                    <?php echo $this->Html->link('<i class="icon-eye3"></i>', array('action' => 'view', $project['Project']['id']), array('escape'=>false)); ?>
                                    <?php echo $this->Html->link('<i class="icon-pencil"></i>', array('action' => 'edit', $project['Project']['id']), array('escape'=>false)); ?>
                                    <?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('action' => 'delete', $project['Project']['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $project['Project']['id'])); ?>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>

        </div>

    </div>
<br/>

</div>
<?php echo $this->Form->end(); ?>
</div>