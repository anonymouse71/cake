<div class="side-title"><?php echo __('Last Registered');?></div>
<div class="side-content">
    <ul class="list-unstyled">
        <?php foreach ($lastRegister as $key => $lastReg) {
            #var_dump($lastReg);
            ?>
            <li><p><?php echo $lastReg['User']['first_name'].' '.$lastReg['User']['last_name'] ?> <small><?php echo $this->time->niceshort($lastReg['User']['created']) ?></small></p></li>
            <li class="divider"></li>
        <?php } ?>
    </ul>
</div>