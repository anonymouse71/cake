

	<div class="tabbable page-tabs">

		<ul class="nav nav-tabs">

			<li class="active"><a href="#activity" data-toggle="tab"><i class="icon-table"></i> <?php echo __('Category'); ?></a></li>

			<li><a href="#contacts" data-toggle="tab"><i class="icon-accessibility"></i> <?php echo __('Related Category'); ?> </a></li>

			<li><a href="#tasks" data-toggle="tab"><i class="icon-grid"></i><?php echo __('Related Courses'); ?> </a></li>

			<li><a href="#invoices" data-toggle="tab"><i class="icon-cart2"></i> <?php echo __('Related Lessons'); ?> </a></li>

		</ul>

		<div class="tab-content">
			<div id="activity" class="tab-pane fade active in">
				<table class="table table-striped">
					<tr>		<td><?php echo __('Name'); ?></td>
						<td>
							<?php echo h($category['Category']['name']); ?>
							&nbsp;
						</td>
					</tr>
					<!--        <tr>		<td>--><?php //echo __('Active'); ?><!--</td>-->
					<!--		<td>-->
					<!--			--><?php //echo h($category['Category']['active']); ?>
					<!--			&nbsp;-->
					<!--		</td>-->
					<!--</tr>-->
					<tr>		<td><?php echo __('Parent Category'); ?></td>
						<td>
							<?php echo $this->Html->link($category['ParentCategory']['name'], array('controller' => 'categories', 'action' => 'view', $category['ParentCategory']['id'])); ?>
							&nbsp;
						</td>
					</tr>
				</table>
			</div>
			<div id="contacts" class="tab-pane fade">
				<?php if (!empty($category['ChildCategory'])): ?>
					<table class="table table-bordered table-hover">
						<thead>
						<tr>
							<th><?php echo __('Name'); ?></th>
							<th class="actions"><?php echo __('Actions'); ?></th>
						</tr>
						</thead>
						<tbody>
						<?php foreach ($category['ChildCategory'] as $childCategory): ?>
							<tr>
								<td><?php echo $childCategory['name']; ?></td>
								<td class="actions">
									<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'categories', 'action' => 'view', $childCategory['id']), array('escape'=>false)); ?>
									<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'categories', 'action' => 'edit', $childCategory['id']),array('escape'=>false)); ?>
									<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'categories', 'action' => 'delete', $childCategory['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $childCategory['id'])); ?>
								</td>
							</tr>
						<?php endforeach; ?>
						</tbody>
					</table>
				<?php endif; ?>
			</div>
			<div id="tasks" class="tab-pane fade">
				<?php if (!empty($category['Course'])): ?>
					<table class="table table-bordered table-hover">
						<thead>
						<tr>
							<th><?php echo __('Name'); ?></th>
							<th class="actions"><?php echo __('Actions'); ?></th>
						</tr>
						</thead>
						<tbody>
						<?php foreach ($category['Course'] as $course): ?>
							<tr>
								<td><?php echo $course['name']; ?></td>
								<td class="actions">
									<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'courses', 'action' => 'view', $course['id']), array('escape'=>false)); ?>
									<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'courses', 'action' => 'edit', $course['id']),array('escape'=>false)); ?>
									<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'courses', 'action' => 'delete', $course['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $course['id'])); ?>
								</td>
							</tr>
						<?php endforeach; ?>
						</tbody>
					</table>
				<?php endif; ?>
			</div>
			<div id="invoices" class="tab-pane fade">
				<?php if (!empty($category['Lesson'])): ?>
					<table class="table table-bordered table-hover">
						<thead>
						<tr>
							<th><?php echo __('Name'); ?></th>
							<th class="actions"><?php echo __('Actions'); ?></th>
						</tr>
						</thead>
						<tbody>
						<?php foreach ($category['Lesson'] as $lesson): ?>
							<tr>
								<td><?php echo $lesson['name']; ?></td>
								<td class="actions">
									<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'lessons', 'action' => 'view', $lesson['id']), array('escape'=>false)); ?>
									<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'lessons', 'action' => 'edit', $lesson['id']),array('escape'=>false)); ?>
									<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'lessons', 'action' => 'delete', $lesson['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $lesson['id'])); ?>
								</td>
							</tr>
						<?php endforeach; ?>
						</tbody>
					</table>
				<?php endif; ?>
			</div>

		</div>

	</div><br/><br/>



