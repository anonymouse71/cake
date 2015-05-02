<!-- Main navigation -->
<?php $user=$this->UserAuth->getUser(); //debug($user);?>
<ul class="navigation">
    <li class="active"><?php echo $this->Html->link(__('<span>Dashboard</span><i class="icon-stack"></i>'), array('plugin' => 'usermgmt', 'controller' => 'users', 'action' => 'index'), array('escape' => false)); ?></li>    
    <?php if($user['User']['user_group_id']==1){?>
    <li>
        <a href="#" class="expand"><span>User</span> <i class="icon-user"></i></a>
        <ul>
            <li><?php echo $this->Html->link(__('Users'), array('plugin' => 'usermgmt', 'controller' => 'users', 'action' => 'index')); ?></li>
            <li><?php echo $this->Html->link(__('User Groups'), array('plugin' => 'usermgmt', 'controller' => 'user_groups', 'action' => 'index')); ?></li>
        </ul>
    </li>
    <li>
        <a href="#" class="expand"><span>Site Setting</span> <i class="icon-cogs"></i></a>
        <ul>
            <li><?php echo $this->Html->link(__('Settings One'), array('plugin' => '', 'controller' => '#', 'action' => '#')); ?></li>
        </ul>
    </li>
    <?php }?>
</ul>
<!-- /main navigation -->