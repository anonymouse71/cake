<!--<div class="row">-->
<div class="panel panel-default">
    <div class="panel-heading">
        <h1 class="panel-title"><i class="icon-table"></i> <?php echo __('News'); ?></h1>
    </div>
<!--    <div class="col-md-12">-->
    <div class="panel-body">
        <h4 class="heading"><?php echo h($news['News']['title']); ?></h4>
        <h6><?php echo h($news['News']['created_by']) . ', ' . $this->Time->niceShort($news['News']['modified']); ?></h6>
        <img style="width:400px;" class="img-response" src="<?php echo $this->webroot . $news['News']['image'] ?>" alt="<?php $news['News']['image'] ?>">
        <p><?php echo ($news['News']['data']); ?></p>
    </div>
</div>

