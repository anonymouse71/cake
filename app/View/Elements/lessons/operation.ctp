<div class="list-group">
    <a href="#" class="list-group-item active side-title">
        <i class="glyphicon glyphicon-cog"></i> <?php echo __('Lesson Operation'); ?>
    </a>
    <a href="" onclick="window.print()" class="list-group-item">
        <i class="glyphicon glyphicon-print"></i> <?php echo __('Print Unit'); ?>
    </a>
    <a href="#" class="list-group-item">
        <i class="glyphicon glyphicon-comment"></i> <?php echo __('Add Comment'); ?>
    </a>
    <a href="#" class="list-group-item">
        <i class="glyphicon glyphicon-warning-sign"></i> <?php echo __('Report an error'); ?>
    </a>
    <a href="" onclick="windowPopup()" class="list-group-item">
        <i class="glyphicon glyphicon-new-window"></i> <?php echo __('Open unit in popup window'); ?>
    </a>
</div>

<?php
$this->append('jsRegion');
?>

<script>
//    console.log(lessonId);
//    console.log(wr);
    function windowPopup() {
        window.open(wr+"/lessons/detail/"+lessonId, "_blank", "toolbar=yes, scrollbars=yes, resizable=yes, top=500, left=500, width=520, height=400");
    }
</script>


<?php
$this->end();
?>