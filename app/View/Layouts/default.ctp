<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>
        <?php echo Configure::read('Site.title.front');?> -
        <?php echo $title_for_layout; ?>
    </title>


    <?php
    echo $this->Html->meta('icon');
    echo $this->Html->css('/bou/css/normalize');
    echo $this->Html->css('/bou/css/icons');
    echo $this->Html->css('/bou/css/font-awesome.min');
    echo $this->Html->css('/bou/css/bootstrap.min');
    echo $this->Html->css('/bou/css/londinium-theme');
    echo $this->Html->css('/bou/css/style');
    echo $this->Html->css('/bou/css/styles-dashboard');
    echo $this->fetch('meta');
    echo $this->fetch('css');
    ?>
    <?php echo $this->fetch('cssURL'); ?>

    <?php echo $this->Html->css('/bou/css/jquery.treeview') ?>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

</head>


<body>

<?php

if($this->params['controller']=='lessons' && ($this->params['action']=='view' || $this->params['action']=='detail')){
    if(isset($this->params['pass'][0])){
        $lessonId = $this->params['pass'][0];
    }
}
?>

<?php

if($this->params['controller']=='courses' && ($this->params['action']=='view' || $this->params['action']=='detail')){
    if(isset($this->params['pass'][0])){
        $courseId = $this->params['pass'][0];
    }
}
?>

<script>

    var wr          = '<?php echo $this->base;?>';
    var userid      = '<?php  echo array_key_exists('User',$_user)? $_user['User']['id']:'' ?>';
    var courseId    = '<?php echo (isset($courseId) && !empty($courseId))? $courseId : '' ?>';
    var lessonId    = '<?php echo (isset($lessonId) && !empty($lessonId))? $lessonId : '' ?>';

</script>

<?php
    echo $this->element('partials/header');
?>

<section id="main-container" class="<?=$containerStyle?>">

    <!-- <div class="row">
        <div class="col-md-12">
            <?php //echo $this->element('partials/front/breadcrumb') ?>
        </div>
    </div> -->

    <?php if($this->Session->check('Message.flash')): ?>
        <div class="row">
            <div class="col-md-12">
                <div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    <i class="icon-info"></i>  <?php echo $this->Session->flash(); ?>
                </div>
            </div>
            <div class="col-md-12">
                &nbsp;
            </div>
        </div>
    <?php endif; ?>

    <div class="row">
        <?php
            if($leftPane > 0):
        ?>
        <div class="col-md-<?=$leftPane?>">
            Content for Left Pane
        </div>
        <?php
         endif;
        ?>

        <div class="col-md-<?=$mainContent?>">
            <?php echo $this->fetch('content'); ?>
        </div>

        <?php
        if($rightPane > 0):
            ?>
            <div class="col-md-<?=$leftPane?>">
                Content for Right Pane
            </div>
        <?php
        endif;
        ?>


    </div>

</section>


<?php echo $this->element('partials/footer') ?>

<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

<?php echo $this->Html->script(array('jquery.cookie','jquery.treeview','custom-treeview')) ?>
<?php echo $this->Html->script('/bou/js/jquery-ui.min'); ?>
<?php echo $this->Html->script('/bou/js/bootstrap.min'); ?>

<?php echo $this->fetch('scriptURL'); ?>
<?php echo $this->fetch('jsRegion') ?>

<?php //echo $this->element('sql_dump'); ?>

</body>
</html>
