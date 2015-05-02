<div class="panel panel-default">
    <div class="panel-heading"><h6 class="panel-title"><i class="icon-table"></i><?php echo __(' My Order'); ?></h6></div>
    <div class="datatable">
        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th><?php echo $this->Paginator->sort('course_id'); ?></th>
                    <th>Price</th>
                    <th class="actions"><?php echo __('Actions'); ?></th>
                </tr>
            </thead>
            <tbody>
                <?php
                $subtotal = 0;
                foreach ($carts as $cart):
                    $subtotal = $subtotal + $cart['Course']['price'];
                    ?>
                    <tr>
                        <td>
                            <?php echo $this->Html->link($cart['Course']['name'], array ('controller' => 'courses', 'action' => 'detail', $cart['Course']['id'])); ?>
                        </td>
                        <td class="text-right">
                            <?php echo number_format($cart['Course']['price'], 0, '.', ','); ?> BDT
                        </td>
                        <td class="actions">
                            <?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array ('action' => 'delete', $cart['Cart']['id']), array ('escape' => false), __('Are you sure you want to delete # %s?', $cart['Cart']['id'])); ?>
                        </td>
                    </tr>
                <?php endforeach; ?>
                <tr>
                    <td>
                        Total
                    </td>
                    <td class="text-right">
                        <?php echo number_format($subtotal, 0, '.', ','); ?> BDT
                    </td>
                </tr>
            </tbody>
        </table>

        <div class="row">
            <?php echo $this->Form->create('Order', array ('plugin' => '', 'controller' => 'orders', 'action' => 'checkout')); ?>
            <?php
            // echo $this->Form->input('is_paid', array ('div' => array ('class' => 'form-group col-md-12'), 'type' => 'text', 'class' => 'form-control'));
            ?>

            <?php echo $this->Form->input(' Place Order ', array ('label' => false, 'div' => array ('class' => 'form-group col-md-12'), 'type' => 'submit', 'class' => 'btn btn-lg btn-success'));
            ?>
        </div>

        <div class="text-center">
            <?php
            // echo $this->Html->link(__('Checkout'), array ('plugin' => '', 'controller' => 'orders', 'action' => 'checkout'), array ('class' => 'btn btn-primary btn-lg'));
            ?>
            <br>
            <br>
        </div>
    </div>
</div>
