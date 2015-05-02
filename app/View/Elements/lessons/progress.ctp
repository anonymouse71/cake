<?php // $progress_report = $this->requestAction('CourseDetails/progress');
//var_dump($progress_report);
?>



<div class="list-group">
    <a href="#" class="list-group-item active side-title">
        <i class="glyphicon glyphicon-refresh"></i> <?php echo __('Lesson Progress'); ?>
    </a>
    <a href="#" class="list-group-item">
        <div class="progress flat">
            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" id="progress-bar-width" style="width:  40%">
                <span id="lp-1">0</span>  Complete</div>
        </div>
        <p class="text-danger">Completion Rules: completed <span id="lp-3">0</span> out <span id="lp-2">0</span></p>
    </a>
</div>


<?php
$this->append('jsRegion');
?>

<script>
//    console.log(lessonId);
//    console.log(userid);
    $(document).ready(function(){
        $.ajax({
            'url':wr+'/lessons/progress/'+userid+'/'+lessonId,
            'dataType':'json'
        }).success(function(data){
//            console.log(data);
            $('#lp-1').html(data.percentage);
            $('#lp-2').html(data.total_content);
            $('#lp-3').html(data.content_completion);
            $('#progress-bar-width').css('width',data.percentage);


        })
    });


</script>

<?php
$this->end();
?>
