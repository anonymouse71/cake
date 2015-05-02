<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Event'); ?> </h2></div>
	<table class="table table-striped">
<!--        <tr>-->
<!--            <td>--><?php //echo __('Model Name'); ?><!--</td>-->
<!--            <td>-->
<!--                --><?php //echo h($event['Event']['model_name']); ?>
<!--                &nbsp;-->
<!--            </td>-->
<!--        </tr>-->
<!--        <tr>-->
<!--            <td>--><?php //echo __('Model Foreign Key'); ?><!--</td>-->
<!--            <td>-->
<!--                --><?php //echo h($event['Event']['model_foreign_key']); ?>
<!--                &nbsp;-->
<!--            </td>-->
<!--        </tr>-->
        <tr>
            <td><?php echo __('Username'); ?></td>
            <td>
                <?php echo h($event['Event']['username']); ?>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td><?php echo __('Type'); ?></td>
            <td>
                <?php echo h($event['Event']['type']); ?>
                &nbsp;
            </td>
        </tr>
<!--        <tr>-->
<!--            <td>--><?php //echo __('EntityID'); ?><!--</td>-->
<!--            <td>-->
<!--                --><?php //echo h($event['Event']['entityID']); ?>
<!--                &nbsp;-->
<!--            </td>-->
<!--        </tr>-->
<!--        <tr>-->
<!--            <td>--><?php //echo __('Entity Name'); ?><!--</td>-->
<!--            <td>-->
<!--                --><?php //echo h($event['Event']['entity_name']); ?>
<!--                &nbsp;-->
<!--            </td>-->
<!--        </tr>-->
        <tr>
            <td><?php echo __('Created By'); ?></td>
            <td>
                <?php echo h($event['Event']['created_by']); ?>
                &nbsp;
            </td>
        </tr>
<!--        <tr>-->
<!--            <td>--><?php //echo __('Modified By'); ?><!--</td>-->
<!--		<td>-->
<!--			--><?php //echo h($event['Event']['modified_by']); ?>
<!--			&nbsp;-->
<!--		</td>-->
<!--        </tr>-->
        <tr>
            <td><?php echo __('Created'); ?></td>
            <td>
                <?php echo $this->Time->niceShort($event['Event']['created']); ?>
                &nbsp;
            </td>
        </tr>
<!--        <tr>-->
<!--            <td>--><?php //echo __('Modified'); ?><!--</td>-->
<!--            <td>-->
<!--                --><?php //echo $this->Time->niceShort($event['Event']['modified']); ?>
<!--                &nbsp;-->
<!--            </td>-->
<!--        </tr>-->
    </table>
</div>


