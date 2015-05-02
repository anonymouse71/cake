<div class="list-group" id="session">
	<a href="#" class="list-group-item active side-title">
		<i class="glyphicon glyphicon-time"></i><?php echo __('Course Session') ?>
	</a>
	<p class="list-group-item text-center text-success">
		<span id="start_date"></span> -- <span id="end_date"></span>
	</p><br/>
	<p>
	 <?php echo $this->element('course/join_course_button', array('courseId' => $course['Course']['id']));?>
	</p>

        </div><br/>


<?php
$this->append('jsRegion');
?>

<script>


    $(document).ready(function(){
        $.ajax({
            'url':wr+'/courses/course_duration/'+courseId,
            'dataType':'json'
        }).success(function(data){
            console.log(data);
            $('#start_date').html(data.start_date);
            $('#end_date').html(data.end_date);


        })
    });
</script>

<?php
$this->end();
?>        