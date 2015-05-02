<div class="panel panel-default">
    <div class="panel-heading"><h2 class="panel-title"><i class="icon-table"></i> <?php echo __('Order'); ?> # <?php echo h($order['Order']['id']); ?></h2></div>
    <table class="table">
        <tr>
            <td><?php echo __('Order No'); ?></td>
            <td>
                <?php echo $order['Order']['id']; ?>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td><?php echo __('Name'); ?></td>
            <td>
                <?php echo $this->Html->link($order['User']['first_name'] . ' ' . $order['User']['last_name'], array ('controller' => 'users', 'action' => 'view', $order['User']['id'])); ?>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td><?php echo __('Date Added'); ?></td>
            <td>
                <?php echo $this->Time->niceShort($order['Order']['created']); ?>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td><?php echo __('Total Price'); ?></td>
            <td>
                <?php echo number_format($order['Order']['price'], 2, '.', ','); ?> BDT
                &nbsp;
            </td>
        </tr>
        <tr>
            <td><?php echo __('Status'); ?></td>
            <td>
                <?php echo ($order['Order']['is_paid']) ? 'Paid' : 'Unpaid'; ?>
                &nbsp;
            </td>
        </tr>
    </table>
</div>

<div class="related">
    <h3><?php echo __('Order Details'); ?></h3>
    <?php if (!empty($order['OrderDetail'])): ?>
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th><?php echo __('Course Name'); ?></th>
                    <th><?php echo __('Price'); ?></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($order['OrderDetail'] as $orderDetail): ?>
                    <tr>
                        <td>
                            <?php echo __($orderDetail['Course']['name']); ?>
                        </td>
                        <td class="text-right">
                            <?php echo number_format($orderDetail['price'], 2, '.', ','); ?> BDT

                        </td>
                    </tr>
                <?php endforeach; ?>
                <tr>
                    <td><?php echo __('Total Price'); ?></td>
                    <td  class="text-right">
                        <?php echo number_format($order['Order']['price'], 2, '.', ','); ?> BDT
                        &nbsp;
                    </td>
                </tr>
            </tbody>
        </table>
    <?php endif; ?>
</div>
