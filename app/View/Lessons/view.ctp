<style type="text/css">
	#treeView{
		margin-left: 13px;
	}
	#treeView li strong{
		font-size: 15px;
	}
</style>

<div>
	<?php echo $this->Html->link('<i class="icon-pencil"> Edit Lesson Information</i>', array('action' => 'edit_lesson_info', $lesson['Lesson']['id']), array('escape'=>false)); ?>
</div>
<br/>


<div class="tabbable page-tabs">

	<ul class="nav nav-tabs">

		<li class="active"><a href="#activity" data-toggle="tab"><i class="icon-file"></i> <?php echo __('Lesson Information'); ?></a></li>

		<li><a href="#contacts" data-toggle="tab"><i class="icon-accessibility"></i> <?php echo __('Lesson Contents'); ?></a></li>

		<li><a href="#tasks" data-toggle="tab"><i class="icon-grid"></i> <?php echo __('Related Conditions'); ?></a></li>

		<li><a href="#invoices" data-toggle="tab"><i class="icon-cart2"></i> <?php echo __('Related Contents'); ?></a></li>
		<li><a href="#r_periods" data-toggle="tab"><i class="icon-cart2"></i> <?php echo __('Related Periods'); ?></a></li>
		<li><a href="#r_courses" data-toggle="tab"><i class="icon-cart2"></i><?php echo __('Related Courses'); ?></a></li>
		<li><a href="#r_users" data-toggle="tab"><i class="icon-cart2"></i> <?php echo __('Related Users'); ?></a></li>
		<!--<li><a href="#r_groups" data-toggle="tab"><i class="icon-cart2"></i><?php /*echo __('Related Usrgroups'); */?></a></li>-->

	</ul>

	<div class="tab-content">
		<div id="activity" class="tab-pane fade active in">
			<table class="table table-striped">
				<tr>
					<td><?php echo __('Image'); ?></td>
					<td>
						<img style="width:300px" class="img-response" src="<?php echo $this->webroot . $lesson['Lesson']['image'] ?>" alt="<?php $lesson['Lesson']['image'] ?>">
					</td>
				</tr>

				<tr>
					<td><?php echo __('Category'); ?></td>
					<td>
						<?php echo $this->Html->link($lesson['Category']['name'], array('controller' => 'categories', 'action' => 'view', $lesson['Category']['id'])); ?>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td><?php echo __('Name'); ?></td>
					<td>
						<?php echo h($lesson['Lesson']['name']); ?>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td><?php echo __('Price'); ?></td>
					<td>
						<?php echo h($lesson['Lesson']['price']); ?>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td><?php echo __('Active'); ?></td>
					<td>
						<?php echo h($lesson['Lesson']['active']); ?>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td><?php echo __('Show Catalog'); ?></td>
					<td>
						<?php echo h($lesson['Lesson']['show_catalog']); ?>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td><?php echo __('Duration'); ?></td>
					<td>
						<?php echo h($lesson['Lesson']['duration']); ?>
						&nbsp;
					</td>
				</tr>

				<tr>
					<td><?php echo __('Description'); ?></td>
					<td>
						<?php echo htmlspecialchars_decode(h($lesson['Lesson']['description'])); ?>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td><?php echo __('Objectives'); ?></td>
					<td>
						<?php echo h($lesson['Lesson']['objectives']); ?>
						&nbsp;
					</td>
				</tr>
				<!--<tr>		<td>--><?php //echo __('Assessment'); ?><!--</td>-->
				<!--		<td>-->
				<!--			--><?php //echo h($lesson['Lesson']['assessment']); ?>
				<!--			&nbsp;-->
				<!--		</td>-->
				<!--</tr>-->
				<tr>
					<td><?php echo __('Topics'); ?></td>
					<td>
						<?php echo h($lesson['Lesson']['topics']); ?>
						&nbsp;
					</td>
				</tr>
				<!--<tr>		<td>--><?php //echo __('Resources'); ?><!--</td>-->
				<!--		<td>-->
				<!--			--><?php //echo h($lesson['Lesson']['resources']); ?>
				<!--			&nbsp;-->
				<!--		</td>-->
				<!--</tr><tr>		<td>--><?php //echo __('Info'); ?><!--</td>-->
				<!--		<td>-->
				<!--			--><?php //echo h($lesson['Lesson']['info']); ?>
				<!--			&nbsp;-->
				<!--		</td>-->
				<!--</tr><tr>		<td>--><?php //echo __('Learning Method'); ?><!--</td>-->
				<!--		<td>-->
				<!--			--><?php //echo h($lesson['Lesson']['learning_method']); ?>
				<!--			&nbsp;-->
				<!--		</td>-->
				<!--</tr>-->
				<tr>
					<td><?php echo __('Subject'); ?></td>
					<td>
						<?php echo h($lesson['Lesson']['subject']); ?>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td><?php echo __('Publisher'); ?></td>
					<td>
						<?php echo h($lesson['Lesson']['publisher']); ?>
						&nbsp;
					</td>
				</tr>

				<tr>
					<td><?php echo __('Created By'); ?></td>
					<td>
						<?php echo h($lesson['Lesson']['created_by']); ?>
						&nbsp;
					</td>
				</tr>

				<tr>
					<td><?php echo __('Created'); ?></td>
					<td>
						<?php echo $this->Time->niceShort($lesson['Lesson']['created']); ?>
						&nbsp;
					</td>
				</tr>
			</table>
		</div>
		<div id="contacts" class="tab-pane fade">
			<!-- Tree Viwe Contents [START] -->
			<div>
				<?php
				function treeForm(array &$elements, $parentId = 0, $elkey = null) {
					$branch = array();

					foreach ($elements as $key=>$element) {
						#var_dump($element); die();
						if ($element[$elkey]['parent_id'] == $parentId) {
							$children = treeForm($elements, $element[$elkey]['id'], $elkey);
							if ($children) {
								$element['children'] = $children;
							}
							$branch[$element[$elkey]['id']] = $element;
							unset($elements[$key]);
						}
					}
					return $branch;
				}

				//Build Menu
				function convertToMenu($arr, $elmkey) {
					echo "<ul class='open'>";
					foreach ($arr as $val) {
						if (!empty($val['children'])) {
							echo "<li><strong>" . $val[$elmkey]['name'] . "</strong>";
							convertToMenu($val['children'], $elmkey);
							echo "</li>";
						} else {
							echo "<li><strong>" . $val[$elmkey]['name'] . "</strong></li>";
						}
					}
					echo "</ul>";
				}

				foreach ($categories as $key => $content) {
					if ($key==0) {
						echo "<ul id='treeView' class='treeview-red' style=''><li class='open'><strong>Content index</strong>";
					}
					$menuTree = treeForm($categories, $content['Content'], 'Content'); // Preparing $categories.
				}
				convertToMenu($categories, 'Content');// changing to list, you can add <a> inside it.
				echo "</li></ul>";

				?>
			</div>
			<script type="text/javascript">
				$(document).ready(function(){
					$("#treeView").treeview({
						animated: "fast",
						/*collapsed: true,
						 unique: true,
						 persist: "cookie",*/
						toggle: function() {
							window.console && console.log("%o was toggled", this);
						}
					});
				})
			</script>
			<!-- Tree Viwe Contents [end] -->
		</div>
		<div id="tasks" class="tab-pane fade">
			<?php if (!empty($lesson['Condition'])): ?>
				<table class="table table-bordered table-hover">
					<thead>
					<tr>
						<th class="actions"><?php echo __('Actions'); ?></th>
					</tr>
					</thead>
					<tbody>
					<?php foreach ($lesson['Condition'] as $condition): ?>
						<tr>
							<td class="actions">
								<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'conditions', 'action' => 'view', $condition['id']), array('escape'=>false)); ?>
								<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'conditions', 'action' => 'edit', $condition['id']),array('escape'=>false)); ?>
								<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'conditions', 'action' => 'delete', $condition['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $condition['id'])); ?>
							</td>
						</tr>
					<?php endforeach; ?>
					</tbody>
				</table>
			<?php endif; ?>
		</div>
		<div id="invoices" class="tab-pane fade">
			<?php if (!empty($lesson['Content'])): ?>
				<table class="table table-bordered table-hover">
					<thead>
					<tr>
						<th><?php echo __('Name'); ?></th>
						<th class="actions"><?php echo __('Actions'); ?></th>
					</tr>
					</thead>
					<tbody>
					<?php foreach ($lesson['Content'] as $content): ?>
						<tr>
							<td><?php echo $content['name']; ?></td>
							<td class="actions">
								<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'contents', 'action' => 'view', $content['id']), array('escape'=>false)); ?>
								<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'contents', 'action' => 'edit', $content['id']),array('escape'=>false)); ?>
								<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'contents', 'action' => 'delete', $content['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $content['id'])); ?>
							</td>
						</tr>
					<?php endforeach; ?>
					</tbody>
				</table>
			<?php endif; ?>
		</div>
		<div id="r_periods" class="tab-pane fade">
			<?php if (!empty($lesson['Period'])): ?>
				<table class="table table-bordered table-hover">
					<thead>
					<tr>
						<th><?php echo __('Name'); ?></th>
						<th class="actions"><?php echo __('Actions'); ?></th>
					</tr>
					</thead>
					<tbody>
					<?php foreach ($lesson['Period'] as $period): ?>
						<tr>
							<td><?php echo $period['name']; ?></td>
							<td class="actions">
								<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'periods', 'action' => 'view', $period['id']), array('escape'=>false)); ?>
								<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'periods', 'action' => 'edit', $period['id']),array('escape'=>false)); ?>
								<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'periods', 'action' => 'delete', $period['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $period['id'])); ?>
							</td>
						</tr>
					<?php endforeach; ?>
					</tbody>
				</table>
			<?php endif; ?>
		</div>
		<div id="r_courses" class="tab-pane fade">
			<?php if (!empty($lesson['Course'])): ?>
				<table class="table table-bordered table-hover">
					<thead>
					<tr>
						<th><?php echo __('Name'); ?></th>
						<th class="actions"><?php echo __('Actions'); ?></th>
					</tr>
					</thead>
					<tbody>
					<?php foreach ($lesson['Course'] as $course): ?>
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
		<div id="r_users" class="tab-pane fade">
			<?php if (!empty($lesson['User'])): ?>
				<table class="table table-bordered table-hover">
					<thead>
					<tr>
						<th>Name</th>
						<th class="actions"><?php echo __('Actions'); ?></th>
					</tr>
					</thead>
					<tbody>
					<?php foreach ($lesson['User'] as $user): ?>
						<tr>
							<td><?php echo $user['first_name'] .' '. $user['last_name'] ?></td>
							<td class="actions">
								<?php echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'users', 'action' => 'view', $user['id']), array('escape'=>false)); ?>
								<?php echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'users', 'action' => 'edit', $user['id']),array('escape'=>false)); ?>
								<?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'users', 'action' => 'delete', $user['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $user['id'])); ?>
							</td>
						</tr>
					<?php endforeach; ?>
					</tbody>
				</table>
			<?php endif; ?>
		</div>
		<!--<div id="r_groups" class="tab-pane fade">
			<?php /*if (!empty($lesson['Usrgroup'])): */?>
				<table class="table table-bordered table-hover">
					<thead>
					<tr>
						<th><?php /*echo __('Name'); */?></th>
						<th class="actions"><?php /*echo __('Actions'); */?></th>
					</tr>
					</thead>
					<tbody>
					<?php /*foreach ($lesson['Usrgroup'] as $usrgroup): */?>
						<tr>
							<td><?php /*echo $usrgroup['name']; */?></td>
							<td class="actions">
								<?php /*echo $this->Html->link('<i class="icon-eye3"></i>', array('controller' => 'usrgroups', 'action' => 'view', $usrgroup['id']), array('escape'=>false)); */?>
								<?php /*echo $this->Html->link('<i class="icon-pencil"></i>', array('controller' => 'usrgroups', 'action' => 'edit', $usrgroup['id']),array('escape'=>false)); */?>
								<?php /*echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller' => 'usrgroups', 'action' => 'delete', $usrgroup['id']), array('escape'=>false), __('Are you sure you want to delete # %s?', $usrgroup['id'])); */?>
							</td>
						</tr>
					<?php /*endforeach; */?>
					</tbody>
				</table>
			<?php /*endif; */?>
		</div>-->

	</div>

</div> <br/><br/>


