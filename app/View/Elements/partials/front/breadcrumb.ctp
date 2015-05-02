<?php

 if($this->here != '/' && empty($_user) && !in_array($this->action, array('login', 'register'))) :

     echo $this->Html->getCrumbs(' > ', array(
         'text' => '<i class="fa fa-home"></i>',
         'url' => array('plugin'=>'','controller' => 'open_univercities', 'action' => 'home'),
         'escape' => false
     ));

endif;
?>
