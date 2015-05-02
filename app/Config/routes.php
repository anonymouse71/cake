<?php
	//Router::connect('/', array('controller' => 'pages', 'action' => 'display', 'home'));

    Router::connect('/', array('plugin' => '', 'controller' => 'open_univercities', 'action' => 'home'));
    Router::connect('/contactus', array('plugin' => '', 'controller' => 'open_univercities', 'action' => 'contactus'));
    Router::connect('/aboutus', array('plugin' => '', 'controller' => 'open_univercities', 'action' => 'aboutus'));
    //Router::connect('/*', array('plugin' => 'usermgmt', 'controller' => 'users', 'action' => 'logout'));
	Router::connect('/pages/*', array('controller' => 'pages', 'action' => 'display'));
	CakePlugin::routes();

	require CAKE . 'Config' . DS . 'routes.php';