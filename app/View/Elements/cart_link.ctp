<?php
if (isset($_user) && !empty($_user)) {
    $text = 'View Cart';
    $url  = Router::url(array(
                'plugin'     => '',
                'controller' => 'courses',
                'action'     => 'count_cart_item'
    ));

//    $total = $this->requestAction($url);
    $total = $this->requestAction(
            'courses/count_cart_item'
    );
    if (!empty($total)) {
        $text = 'View Cart (' . $total . ')';
    }
    ?>
    <li>
        <?php
        echo $this->html->link(__($text) . '<i class="glyphicon glyphicon-shopping-cart"></i>', array('plugin' => '', 'controller' => 'courses', 'action' => 'view_user_cart'), array('escape' => false));
        ?>
    </li>
    <?php
}
// echo $this->Html->link(__($text), array ('plugin' => '', 'controller' => 'Courses', 'action' => 'join_course', $course['Course']['id']), array ('class' => 'btn btn-primary full'));
//foreach($courses as $post):
//    echo $post['Post']['name'];
//endforeach;

