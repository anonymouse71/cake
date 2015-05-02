<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Message'); ?> </h2></div>
    <table class="table table-striped">
<!--<tr>-->
<!--    <td>--><?php //echo __('Sender'); ?><!--</td>-->
<!--        <td>-->
<!--            --><?php //echo h($message['Message']['sender']); ?>
<!--            &nbsp;-->
<!--        </td>-->
<!--</tr>-->
        <tr>
            <td><?php echo __('Receiver'); ?></td>
        <td>
            <?php echo h($message['Message']['receiver']); ?>
            &nbsp;
        </td>
</tr>
        <tr>
            <td><?php echo __('Title'); ?></td>
        <td>
            <?php echo h($message['Message']['title']); ?>
            &nbsp;
        </td>
</tr>
        <tr>
            <td><?php echo __('Description'); ?></td>
        <td>
            <?php echo h($message['Message']['description']); ?>
            &nbsp;
        </td>
</tr>
        <tr>
            <td><?php echo __('Attachments'); ?></td>
        <td>
            <?php echo h($message['Message']['attachments']); ?>
            &nbsp;
        </td>
</tr>
        <tr>
            <td><?php echo __('Bcc'); ?></td>
        <td>
            <?php echo h($message['Message']['bcc']); ?>
            &nbsp;
        </td>
</tr>
        <tr>
            <td><?php echo __('Is Read'); ?></td>
        <td>
            <?php echo h($message['Message']['is_read']); ?>
            &nbsp;
        </td>
</tr>
        <tr>        <td><?php echo __('Is Important'); ?></td>
        <td>
            <?php echo h($message['Message']['is_important']); ?>
            &nbsp;
        </td>
</tr>
<!--        <tr>        <td>--><?php //echo __('Is Draft'); ?><!--</td>-->
<!--        <td>-->
<!--            --><?php //echo h($message['Message']['is_draft']); ?>
<!--            &nbsp;-->
<!--        </td>-->
<!--</tr>-->
<!--        <tr>        <td>--><?php //echo __('Is Trash'); ?><!--</td>-->
<!--        <td>-->
<!--            --><?php //echo h($message['Message']['is_trash']); ?>
<!--            &nbsp;-->
<!--        </td>-->
<!--</tr>-->
        <tr>        <td><?php echo __('Created'); ?></td>
        <td>
            <?php echo $this->Time->niceShort($message['Message']['created']); ?>
            &nbsp;
        </td>
</tr>
<!--        <tr>        <td>--><?php //echo __('Modified'); ?><!--</td>-->
<!--        <td>-->
<!--            --><?php //echo $this->Time->niceShort($message['Message']['modified']); ?>
<!--            &nbsp;-->
<!--        </td>-->
<!--</tr>-->
    </table>
</div>


