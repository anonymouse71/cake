<?php //echo $this->layout; ?>
<legend><?php echo __('Edit Category'); ?></legend>
<div class="tabbable page-tabs">

    <ul class="nav nav-tabs">

        <li class="active"><a href="#activity" data-toggle="tab"> Course</a></li>

        <li><a href="#contacts" data-toggle="tab">Related Users</a></li>

<!--        <li><a href="#tasks" data-toggle="tab"> Related UserGroups</a></li>-->

    </ul>
    <?php echo $this->Form->create('Category'); ?>
    <div class="tab-content">
        <!--        --><?php //echo $this->Form->create('Category'); ?>
        <div id="activity" class="tab-pane fade active in">

        <div class="panel panel-default">
        <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Course'); ?> </h2></div>
        <table class="table table-striped">

        <tr>		<td><?php echo __('Image'); ?></td>
            <td>
                <img style="width:300px" class="img-response" src="<?php echo $this->webroot . $course['Course']['image'] ?>" alt="<?php $course['Course']['image'] ?>">
            </td>
        </tr>

        <tr>		<td><?php echo __('Category'); ?></td>
            <td>
                <?php echo $this->Html->link($course['Category']['name'], array('controller' => 'categories', 'action' => 'view', $course['Category']['id'])); ?>
                &nbsp;
            </td>
        </tr>
        <tr>		<td><?php echo __('Name'); ?></td>
            <td>
                <?php echo h($course['Course']['name']); ?>
                &nbsp;
            </td>
        </tr>
        <tr>		<td><?php echo __('Active'); ?></td>
            <td>
                <?php echo h($course['Course']['active']); ?>
                &nbsp;
            </td>
        </tr>
        <tr>		<td><?php echo __('Archive'); ?></td>
            <td>
                <?php echo h($course['Course']['archive']); ?>
                &nbsp;
            </td>
        </tr>
        <tr>		<td><?php echo __('Start Date'); ?></td>
            <td>
                <?php echo h($course['Course']['start_date']); ?>
                &nbsp;
            </td>
        </tr>
        <tr>		<td><?php echo __('End Date'); ?></td>
            <td>
                <?php echo h($course['Course']['end_date']); ?>
                &nbsp;
            </td>
        </tr>
        <!--<tr>		<td>--><?php //echo __('Options'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['options']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr>-->
        <tr>		<td><?php echo __('Price'); ?></td>
            <td>
                <?php echo h($course['Course']['price']); ?>
                &nbsp;
            </td>
        </tr>
        <tr>		<td><?php echo __('Show Catalog'); ?></td>
            <td>
                <?php echo h($course['Course']['show_catalog']); ?>
                &nbsp;
            </td>
        </tr>
        <!--<tr>		<td>--><?php //echo __('Publish'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['publish']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr>-->
        <!--<tr>		<td>--><?php //echo __('Reset'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['reset']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr>-->
        <!--<tr>		<td>--><?php //echo __('Certificate Expiration'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['certificate_expiration']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr><tr>		<td>--><?php //echo __('Reset Interval'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['reset_interval']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr><tr>		<td>--><?php //echo __('Max Users'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['max_users']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr><tr>		<td>--><?php //echo __('Rules'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['rules']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr><tr>		<td>--><?php //echo __('Instance Source'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['instance_source']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr><tr>		<td>--><?php //echo __('Depends On'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['depends_on']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr><tr>		<td>--><?php //echo __('Ceu'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['ceu']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr>-->
        <tr>		<td><?php echo __('Description'); ?></td>
            <td>
                <?php echo h($course['Course']['description']); ?>
                &nbsp;
            </td>
        </tr><tr>		<td><?php echo __('Objectives'); ?></td>
            <td>
                <?php echo h($course['Course']['objectives']); ?>
                &nbsp;
            </td>
        </tr>
        <tr>		<td><?php echo __('Assessment'); ?></td>
            <td>
                <?php echo h($course['Course']['assessment']); ?>
                &nbsp;
            </td>
        </tr>
        <tr>		<td><?php echo __('Topics'); ?></td>
            <td>
                <?php echo h($course['Course']['topics']); ?>
                &nbsp;
            </td>
        </tr>
        <tr>		<td><?php echo __('Resources'); ?></td>
            <td>
                <?php echo h($course['Course']['resources']); ?>
                &nbsp;
            </td>
        </tr>
        <!--<tr>		<td>--><?php //echo __('Info'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['info']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr><tr>		<td>--><?php //echo __('Learning Method'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['learning_method']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr>-->
        <tr>		<td><?php echo __('Subject'); ?></td>
            <td>
                <?php echo h($course['Course']['subject']); ?>
                &nbsp;
            </td>
        </tr><tr>		<td><?php echo __('Publisher'); ?></td>
            <td>
                <?php echo h($course['Course']['publisher']); ?>
                &nbsp;
            </td>
        </tr><tr>		<td><?php echo __('Contributor'); ?></td>
            <td>
                <?php echo h($course['Course']['contributor']); ?>
                &nbsp;
            </td>
        </tr>
        <!--<tr>		<td>--><?php //echo __('Type'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['type']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr><tr>		<td>--><?php //echo __('Format'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['format']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr><tr>		<td>--><?php //echo __('Identifier'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['identifier']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr><tr>		<td>--><?php //echo __('Source'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['source']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr><tr>		<td>--><?php //echo __('Relation'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['relation']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr><tr>		<td>--><?php //echo __('Coverage'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['coverage']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr>-->
        <!--<tr>		<td>--><?php //echo __('Rights'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['rights']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr>-->
        <!--<tr>		<td>--><?php //echo __('Created By'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['created_by']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr>-->
        <!--        <tr>		<td>--><?php //echo __('Modified By'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo h($course['Course']['modified_by']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr>-->
        <tr>		<td><?php echo __('Created'); ?></td>
            <td>
                <?php echo $this->Time->niceShort($course['Course']['created']); ?>
                &nbsp;
            </td>
        </tr>
        <!--        <tr>		<td>--><?php //echo __('Modified'); ?><!--</td>-->
        <!--		<td>-->
        <!--			--><?php //echo $this->Time->niceShort($course['Course']['modified']); ?>
        <!--			&nbsp;-->
        <!--		</td>-->
        <!--</tr>-->
        </table>
        </div>
            <?php echo $this->Form->input('id',array('div' => array('class' => ''), 'type'=>'hidden','class'=>'form-control'));	?>

        </div>
        <div id="contacts" class="tab-pane fade">

            <div class="panel panel-default">
                <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Related Users'); ?> </h2></div>
                <?php if (!empty($course['User'])): ?>
                    <table class="table table-bordered table-hover">
                        <thead>
                        <tr><th>Name</th>
                            <!-- <th class="actions"><?php echo __('Actions'); ?></th> -->
                        </tr>
                        </thead>
                        <tbody>
                        <?php foreach ($course['User'] as $user): ?>
                            <tr>
                                <td><?php echo $user['first_name'] .' '.$user['last_name'] ?></td>
                                <!-- <td class="actions">
                                    <?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'users', 'action' => 'view', $user['id']), array('escape'=>false)); ?>
                                    <?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'users', 'action' => 'edit', $user['id']),array('escape'=>false)); ?>
                                    <?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'users', 'action' => 'delete', $user['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $user['id'])); ?>
                                </td> -->
                            </tr>
                        <?php endforeach; ?>
                        </tbody>
                    </table>
                <?php endif; ?>
            </div>

        </div>
<!--        <div id="tasks" class="tab-pane fade">-->
<!--            <div class="panel panel-default">-->
<!--                <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> --><?php //echo __('Related UserGroups'); ?><!-- </h2></div>-->
<!--                --><?php //if (!empty($course['Usrgroup'])): ?>
<!--                    <table class="table table-bordered table-hover">-->
<!--                        <thead>-->
<!--                        <tr>-->
<!--                            <th>--><?php //echo __('Name'); ?><!--</th>-->
<!--                            <th class="actions">--><?php //echo __('Actions'); ?><!--</th>-->
<!--                        </tr>-->
<!--                        </thead>-->
<!--                        <tbody>-->
<!--                        --><?php //foreach ($course['Usrgroup'] as $usrgroup): ?>
<!--                            <tr>-->
<!--                                <td>--><?php //echo $usrgroup['name']; ?><!--</td>-->
<!--                                <td class="actions">-->
<!--                                    --><?php //echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'usrgroups', 'action' => 'view', $usrgroup['id']), array('escape'=>false)); ?>
<!--                                    --><?php //echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'usrgroups', 'action' => 'edit', $usrgroup['id']),array('escape'=>false)); ?>
<!--                                    --><?php //echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'usrgroups', 'action' => 'delete', $usrgroup['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $usrgroup['id'])); ?>
<!--                                </td>-->
<!--                            </tr>-->
<!--                        --><?php //endforeach; ?>
<!--                        </tbody>-->
<!--                    </table>-->
<!--                --><?php //endif; ?>
<!--            </div>-->
<!--        </div>-->
    </div>
    <?php echo $this->Form->end(); ?>

</div><br/><br/>









<!--<div class="panel panel-default">-->
<!--    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> --><?php //echo __('Related Lessons'); ?><!-- </h2></div>-->
<!--	--><?php //if (!empty($course['Lesson'])): ?>
<!--	<table class="table table-bordered table-hover">-->
<!--	<thead>-->
<!--	<tr>-->
<!--		<th>--><?php //echo __('Name'); ?><!--</th>-->
<!--		<th class="actions">--><?php //echo __('Actions'); ?><!--</th>-->
<!--	</tr>-->
<!--	</thead>-->
<!--	 <tbody>-->
<!--	--><?php //foreach ($course['Lesson'] as $lesson): ?>
<!--		<tr>-->
<!--			<td>--><?php //echo $lesson['name']; ?><!--</td>-->
<!--			<td class="actions">-->
<!--				--><?php //echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'lessons', 'action' => 'view', $lesson['id']), array('escape'=>false)); ?>
<!--				--><?php //echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'lessons', 'action' => 'edit', $lesson['id']),array('escape'=>false)); ?>
<!--				--><?php //echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'lessons', 'action' => 'delete', $lesson['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $lesson['id'])); ?>
<!--			</td>-->
<!--		</tr>-->
<!--	--><?php //endforeach; ?>
<!--	 </tbody>-->
<!--	</table>-->
<?php //endif; ?>
<!--</div>-->




