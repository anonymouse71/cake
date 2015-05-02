<div class="list-group" id="duration">
	<a href="#" class="list-group-item active side-title">
		<i class="glyphicon glyphicon-time"></i><?php echo __('Course Duration') ?>
	</a>
<!-- </div> -->
        <!-- <div class="list-group-item"> -->
            <ul class="list-unstyled">
                <li class="list-group-item"><p><i class="fa fa-calendar"></i><span id="duration_per_week"></span> </p></li>
                <li class="list-group-item"><p><i class="fa fa-clock-o"></i> <span id="duration_hour_per_week"></span> </p></li>
                <li class="list-group-item"><p><i class="fa fa-globe"></i> <?php echo __('Bengali') ?></p></li>
            </ul>
        </div><br>

<?php
$this->append('jsRegion');
?>

<script>
//    var wr = '<?php //echo $this->base;?>//';
//var userid = '<?php //echo array_key_exists('User',$_user)?$_user['User']['id']:null ?>//';
//console.log(userid);
    $(document).ready(function(){
        $.ajax({
            'url':wr+'/courses/course_duration/'+courseId,
            'dataType':'json'
        }).success(function(data){
            $('#duration_per_week').html(data.duration_per_week);
            $('#duration_hour_per_week').html(data.duration_hour_per_week);
            // $('#std-4').html(data.my_courses);
            // $('#std-6').html(data.my_courses);
//            $('#lp-2').html(data.total_content);
//            $('#lp-3').html(data.content_completion);
//            $('#progress-bar-width').css('width',data.percentage);


        })
    });
</script>

<?php
$this->end();
?>