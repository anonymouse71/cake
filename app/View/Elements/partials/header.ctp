<?php
    if(isset($_user) && !empty($_user) && (strtolower($_user['UserGroup']['name']) != 'student')  && (strtolower($_user['UserGroup']['name']) != 'professor')):


?>
    <!-- start admin -->
        <!-- Navbar -->
        <div class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-icons">
                    <span class="sr-only">Toggle right icons</span>
                    <i class="glyphicon glyphicon-inbox"></i>
                </button>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                    <span class="sr-only">Toggle menu</span>
                    <i class="icon-paragraph-justify2"></i>
                </button>
            </div>
            <ul class="nav navbar-nav collapse" id="navbar-menu">

                <li><?php echo $this->Html->link('<i class="glyphicon glyphicon-dashboard"></i>'.__('Dashboard'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'dashboard'),array('escape'=>false));?></li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-books"></i> <span><?php echo __('Course & Lesson'); ?></span> <b class="caret"></b></a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="<?php echo $this->webroot ?>categories"><i class="icon-list"></i><?php echo __('Category'); ?></a></li>
                        <li><a href="<?php echo $this->webroot ?>courses"><i class="icon-file"></i><?php echo __('Course'); ?></a></li>
                        <li><a href="<?php echo $this->webroot ?>lessons"><i class="icon-book"></i><?php echo __('Lesson'); ?></a></li>
                        <!-- <li><a href="<?php //echo $this->webroot ?>contents"><i class="icon-grid"></i><?php //echo __('Content'); ?></a></li> -->
                        <!-- <li><a href="<?php //echo $this->webroot ?>projects"><i class="icon-feed"></i><?php //echo __('Project'); ?></a></li> -->
                        <!-- // <li><a href="<?php //echo $this->webroot ?>tasks"><i class="icon-command"></i><?php //echo __('Task'); ?></a></li> -->
                    </ul>
                </li>

                <!-- <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-insert-template"></i> <span><?php echo __('Modules'); ?></span> <b class="caret"></b></a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="<?php echo $this->webroot ?>forums/catalog"><i class="icon-paragraph-left2"></i><?php echo __('Forum'); ?></a></li>
                        <li><a href="<?php echo $this->webroot ?>blogs/catalog"><i class="icon-notebook"></i><?php echo __('Blog'); ?></a></li>
                        <li><a href="#"><i class="icon-question5"></i><?php echo __('FAQ'); ?></a></li>
                        <!-- <li><a href="#"><i class="icon-book2"></i><?php //echo __('Glossary'); ?></a></li> -->
                       <!--  <li><a href="#"><i class="icon-calendar"></i><?php //echo __('Event Calendar'); ?></a></li>
                        <li class="divider"><a href="#"></a></li>
                        <li><a href="<?php echo $this->webroot ?>messages"><i class="icon-mail2"></i><?php echo __('Message'); ?></a></li>
                        <!-- <li><a href="#"><i class="icon-notification"></i><?php //echo __('Notification'); ?></a></li> -->
                        <!-- <li><a href="#"><i class="icon-notification"></i><?php //echo __('Notice'); ?></a></li> -->
                        <!-- <li><a href="<?php echo $this->webroot ?>announcements/index"><i class="icon-question4"></i><?php echo __('Announcement'); ?></a></li>
                        <li><a href="<?php echo $this->webroot ?>news/index"><i class="icon-newspaper"></i><?php echo __('News'); ?></a></li>
                    </ul>
                </li> -->

                  <!--   <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-clipboard"></i> <span><?php echo __('Exam'); ?></span> <b class="caret"></b></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="<?php echo $this->webroot ?>questions"><i class="icon-question4"></i><?php echo __('Questions'); ?></a></li>
                            <li><a href="<?php echo $this->webroot ?>questions"><i class="icon-quill"></i><?php echo __('Exams'); ?></a></li>
                            <li><a href="<?php echo $this->webroot ?>questions"><i class="icon-bookmarks"></i><?php echo __('Grade Book'); ?></a></li>
                            <li><a href="<?php echo $this->webroot ?>questions"><i class="icon-certificate"></i><?php echo __('Certificate'); ?></a></li>
                        </ul>
                    </li> -->




                    <!-- <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-cart4"></i> <span><?php echo __('Orders'); ?></span> <b class="caret"></b></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="<?php echo $this->webroot ?>news/index"><i class="icon-cart-plus"></i><?php echo __('My Orders'); ?></a></li>
                            <li><a href="<?php echo $this->webroot ?>news/index"><i class="icon-coin"></i><?php echo __('Invoices'); ?></a></li>
                        </ul>
                    </li> -->

                    <!-- <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-bars"></i><span><?php echo __('Report'); ?></span> <b class="caret"></b></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="<?php echo $this->webroot ?>reports/course"><i class="icon-bars3"></i><?php echo __('Course Reports');?></a></li>
                            <li><a href="<?php echo $this->webroot ?>reports/lesson"><i class="icon-bars2"></i><?php echo __('Lesson Reports');?></a></li>
                            <li><a href="<?php echo $this->webroot ?>reports/user"><i class="icon-users"></i><?php echo __('User Reports');?></a></li>
                        </ul>
                    </li> -->

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-cog2"></i> <span><?php echo __('Administration'); ?></span> <b class="caret"></b></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><?php echo $this->Html->link('<i class="icon-user"></i>'.__('All Users'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'index'),array('escape'=>false));?></li>
                            <li><?php echo $this->Html->link('<i class="icon-users"></i>'.__('All Groups'),array('plugin'=>'usermgmt','controller'=>'user_groups','action'=>'index'),array('escape'=>false));?></li>
                            <li><?php echo $this->Html->link('<i class="icon-lock"></i>'.__('Set Permission'),array('plugin'=>'usermgmt','controller'=>'user_group_permissions','action'=>'index'),array('escape'=>false));?></li>
                        </ul>
                    </li>

                    <!-- <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-cogs"></i> <span><?php echo __('System Settings'); ?></span>  <b class="caret"></b></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><?php echo $this->Html->link('<i class="icon-settings"></i>'.__('General Settings'), array('controller' => 'groups', 'action' => 'add'),array('escape'=>false)); ?></li>
                            <li><?php echo $this->Html->link('<i class="icon-user-block"></i>'.__('User Settings'), array('controller' => 'groups', 'action' => 'add'),array('escape'=>false)); ?></li>
                            <li><?php echo $this->Html->link('<i class="icon-contrast"></i>'.__('Appearance'), array('controller' => 'groups', 'action' => 'add'),array('escape'=>false)); ?></li>
                            <li><?php echo $this->Html->link('<i class="icon-cog"></i>'.__('External Tools'), array('controller' => 'groups', 'action' => 'add'),array('escape'=>false)); ?></li>
                            <li><?php echo $this->Html->link('<i class="icon-brightness-medium"></i>'.__('Customization'), array('controller' => 'groups', 'action' => 'add'),array('escape'=>false)); ?></li>
                        </ul>
                    </li> -->
            </ul>
            <!--User Profile -->
            <ul class="nav navbar-nav navbar-right collapse" id="navbar-icons">

                <li class="user dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <img class="thumbnail img-responsive" src="<?php
                        if (!empty($_user['User']['photo_dir'])) {
                            echo $this->webroot.'files/user/photo/'.$_user['User']['photo_dir'].'/'.$_user['User']['photo'];
                        }  else {
                            echo $this->webroot.'img/avatar.png';} ?>" alt="">
                        <span><?php echo $_user['User']['username'];?></span>
                        <i class="caret"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right icons-right">
                        <li><?php echo $this->Html->link('<i class="icon-user"></i>'.__('Profile'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'myprofile'),array('escape'=>false));?></li>
                        <li><?php echo $this->Html->link('<i class="icon-bubble4"></i>'.__('Change Password'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'changePassword'),array('escape'=>false));?></li>
                        <li><?php echo $this->Html->link('<i class="icon-exit"></i>'.__('Logout'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'logout'),array('escape'=>false));?></li>
                    </ul>
                </li>
            </ul>
            <!--/User Profile -->
        </div>
        <!-- /navbar -->
    <!-- end admin -->

<?php
    elseif(isset($_user) && !empty($_user) && (strtolower($_user['UserGroup']['name']) != 'student') && (strtolower($_user['UserGroup']['name']) != 'admin') && (strtolower($_user['UserGroup']['name']) == 'professor')):
?>

    <!-- start professor -->
        <!-- Navbar -->
        <div class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-icons">
                    <span class="sr-only">Toggle right icons</span>
                    <i class="glyphicon glyphicon-inbox"></i>
                </button>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                    <span class="sr-only">Toggle menu</span>
                    <i class="icon-paragraph-justify2"></i>
                </button>
            </div>
            <ul class="nav navbar-nav collapse" id="navbar-menu">

                <li><?php echo $this->Html->link('<i class="glyphicon glyphicon-dashboard"></i>'.__('Dashboard'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'dashboard'),array('escape'=>false));?></li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-books"></i> <span><?php echo __('Course & Lesson'); ?></span> <b class="caret"></b></a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <!-- <li><a href="<?php echo $this->webroot ?>categories"><i class="icon-list"></i><?php echo __('Category'); ?></a></li> -->
                        <li><a href="<?php echo $this->webroot ?>courses"><i class="icon-file"></i><?php echo __('Course'); ?></a></li>
                        <li><a href="<?php echo $this->webroot ?>lessons/catalog"><i class="icon-book"></i><?php echo __('Lesson'); ?></a></li>
                        <li><a href="<?php echo $this->webroot ?>contents"><i class="icon-grid"></i><?php echo __('Content'); ?></a></li>
                        <!-- <li><a href="<?php echo $this->webroot ?>projects"><i class="icon-feed"></i><?php echo __('Project'); ?></a></li> -->
                        <!-- <li><a href="<?php echo $this->webroot ?>tasks"><i class="icon-command"></i><?php echo __('Task'); ?></a></li> -->
                    </ul>
                </li>

                <!-- <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-insert-template"></i> <span><?php echo __('Modules'); ?></span> <b class="caret"></b></a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li><a href="<?php echo $this->webroot ?>forums/catalog"><i class="icon-paragraph-left2"></i><?php echo __('Forum'); ?></a></li>
                        <li><a href="<?php echo $this->webroot ?>blogs/catalog"><i class="icon-notebook"></i><?php echo __('Blog'); ?></a></li>
                        <li><a href="#"><i class="icon-question5"></i><?php echo __('FAQ'); ?></a></li>
                        <li><a href="#"><i class="icon-book2"></i><?php echo __('Glossary'); ?></a></li>
                        <li><a href="#"><i class="icon-calendar"></i><?php echo __('Event Calendar'); ?></a></li>
                        <li class="divider"><a href="#"></a></li>
                        <li><a href="<?php echo $this->webroot ?>messages"><i class="icon-mail2"></i><?php echo __('Message'); ?></a></li>
                        <li><a href="#"><i class="icon-notification"></i><?php echo __('Notification'); ?></a></li>
                        <-- <li><a href="#"><i class="icon-notification"></i><?php //echo __('Notice'); ?></a></li> 
                        <li><a href="<?php echo $this->webroot ?>announcements/index"><i class="icon-question4"></i><?php echo __('Announcement'); ?></a></li>
                        <li><a href="<?php echo $this->webroot ?>news/index"><i class="icon-newspaper"></i><?php echo __('News'); ?></a></li>
                    </ul>
                </li> 

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-clipboard"></i> <span><?php echo __('Exam'); ?></span> <b class="caret"></b></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="<?php echo $this->webroot ?>questions"><i class="icon-question4"></i><?php echo __('Questions'); ?></a></li>
                            <li><a href="<?php echo $this->webroot ?>questions"><i class="icon-quill"></i><?php echo __('Exams'); ?></a></li>
                            <li><a href="<?php echo $this->webroot ?>questions"><i class="icon-bookmarks"></i><?php echo __('Grade Book'); ?></a></li>
                            <li><a href="<?php echo $this->webroot ?>questions"><i class="icon-certificate"></i><?php echo __('Certificate'); ?></a></li>
                        </ul>
                    </li>




                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-cart4"></i> <span><?php echo __('Orders'); ?></span> <b class="caret"></b></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="<?php echo $this->webroot ?>news/index"><i class="icon-cart-plus"></i><?php echo __('My Orders'); ?></a></li>
                            <li><a href="<?php echo $this->webroot ?>news/index"><i class="icon-coin"></i><?php echo __('Invoices'); ?></a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-bars"></i><span><?php echo __('Report'); ?></span> <b class="caret"></b></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="<?php echo $this->webroot ?>reports/course"><i class="icon-bars3"></i><?php echo __('Course Reports');?></a></li>
                            <li><a href="<?php echo $this->webroot ?>reports/lesson"><i class="icon-bars2"></i><?php echo __('Lesson Reports');?></a></li>
                            <li><a href="<?php echo $this->webroot ?>reports/user"><i class="icon-users"></i><?php echo __('User Reports');?></a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-cog2"></i> <span><?php echo __('Administration'); ?></span> <b class="caret"></b></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><?php echo $this->Html->link('<i class="icon-user"></i>'.__('All Users'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'index'),array('escape'=>false));?></li>
                            <li><?php echo $this->Html->link('<i class="icon-users"></i>'.__('All Groups'),array('plugin'=>'usermgmt','controller'=>'user_groups','action'=>'index'),array('escape'=>false));?></li>
                            <li><?php echo $this->Html->link('<i class="icon-lock"></i>'.__('Set Permission'),array('plugin'=>'usermgmt','controller'=>'user_group_permissions','action'=>'index'),array('escape'=>false));?></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-cogs"></i> <span><?php echo __('System Settings'); ?></span>  <b class="caret"></b></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><?php echo $this->Html->link('<i class="icon-settings"></i>'.__('General Settings'), array('controller' => 'groups', 'action' => 'add'),array('escape'=>false)); ?></li>
                            <li><?php echo $this->Html->link('<i class="icon-user-block"></i>'.__('User Settings'), array('controller' => 'groups', 'action' => 'add'),array('escape'=>false)); ?></li>
                            <li><?php echo $this->Html->link('<i class="icon-contrast"></i>'.__('Appearance'), array('controller' => 'groups', 'action' => 'add'),array('escape'=>false)); ?></li>
                            <li><?php echo $this->Html->link('<i class="icon-cog"></i>'.__('External Tools'), array('controller' => 'groups', 'action' => 'add'),array('escape'=>false)); ?></li>
                            <li><?php echo $this->Html->link('<i class="icon-brightness-medium"></i>'.__('Customization'), array('controller' => 'groups', 'action' => 'add'),array('escape'=>false)); ?></li>
                        </ul>
                    </li>-->
            </ul>
            <!--User Profile -->
            <ul class="nav navbar-nav navbar-right collapse" id="navbar-icons">

                <li class="user dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <img class="thumbnail img-responsive" src="<?php
                        if (!empty($_user['User']['photo_dir'])) {
                            echo $this->webroot.'files/user/photo/'.$_user['User']['photo_dir'].'/'.$_user['User']['photo'];
                        }  else {
                            echo $this->webroot.'img/avatar.png';} ?>" alt="">
                        <span><?php echo $_user['User']['username'];?></span>
                        <i class="caret"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right icons-right">
                        <li><?php echo $this->Html->link('<i class="icon-user"></i>'.__('Profile'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'myprofile'),array('escape'=>false));?></li>
                        <li><?php echo $this->Html->link('<i class="icon-bubble4"></i>'.__('Change Password'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'changePassword'),array('escape'=>false));?></li>
                        <li><?php echo $this->Html->link('<i class="icon-exit"></i>'.__('Logout'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'logout'),array('escape'=>false));?></li>
                    </ul>
                </li>
            </ul>
            <!--/User Profile -->
        </div>
        <!-- /navbar -->
    <!-- end professor -->

<?php
    endif;
?>




<header id="header" class="navbar-default clearfix">
    <div class="<?=$containerStyle?>">
        <div class="row">
            <div class="col-md-6 col-sm-6">
                <?php if($this->params['action'] == 'home'){?>
<a class="logo" href="/"><?php echo $this->Html->image('logo.png',array('class'=>'image-responsive','alt'=>__('bou-logo'),
        'title'=>__('bou-logo')));?></a>
                <?php }else{ ?>
                    <a class="logo" href="/"><?php echo $this->Html->image('logo-large.png',array('class'=>'image-responsive','alt'=>__('bou-logo'),
                        'title'=>__('bou-logo')));?></a>
                <?php } ?>
            </div>
            <?php if(empty($_user)){  ?>
                <div class="col-md-6 col-sm-6 text-right">
                    <div class="login">
                        <?php echo $this->Html->link('<i class="glyphicon glyphicon-lock"></i>&nbsp;'.__('Login'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'login'),array('escape'=>false,'class'=>'btn btn-default'));?>
                        <?php echo $this->Html->link('<i class="icon-signup"></i>&nbsp;'.__('Sign Up'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'register'),array('escape'=>false,'class'=>'btn btn-default'));?></li>

                    </div>
                </div>
            <?php }elseif(strtolower($_user['UserGroup']['name']) == 'student'){ ?>
                <div class="col-md-6 col-sm-6 text-right">

                    <div class="login">
                        <?php
                        //echo $this->element('cart_link');
                        ?>
                        <div class="dropdown">
                            <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
                                <?php echo $_user['User']['first_name'].' '.$_user['User']['last_name'];?>
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenu1">
                                <li><?php echo $this->Html->link('<i class="icon-user"></i>'.__('Profile'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'myprofile'),array('escape'=>false));?></li>
                                <li><?php echo $this->Html->link('<i class="icon-bubble4"></i>'.__('Change Password'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'changePassword'),array('escape'=>false));?></li>
                                <li><?php echo $this->Html->link('<i class="icon-exit"></i>'.__('Logout'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'logout'),array('escape'=>false));?></li>
                                <li><?php echo $this->Html->link('<i class="icon-exit"></i>'.__('Dashboard'),array('plugin'=>'usermgmt','controller'=>'users','action'=>'dashboard'),array('escape'=>false));?></li>
                                <li><?php echo $this->Html->link('<i class="icon-exit"></i>'.__('Course Dashboard'),array('plugin'=>'','controller'=>'courses','action'=>'catalog'),array('escape'=>false));?></li>
                                <li><?php echo $this->Html->link('<i class="icon-exit"></i>'.__('My Courses'),array('plugin'=>'','controller'=>'courses','action'=>'mycourses'),array('escape'=>false));?></li>
                            </ul>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</header>
<br />