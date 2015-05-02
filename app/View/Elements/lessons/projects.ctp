<div class="list-group" id="projects">
    <a href="#" class="list-group-item active side-title">
        <i class="glyphicon glyphicon-folder-open"></i> <?php echo __('Projects'); ?>
    </a>


</div>

<?php
$this->append('jsRegion');
?>

<script>
    var wr = '<?php echo $this->base;?>';

    var content = null;
    $(document).ready(function(){

        $.ajax({
            'url':wr+'/lessons/myProjects/'+lessonId,
            'dataType':'json'
        }).success(function(data){
            console.log(data);
            $(data.my_projects).each(function(index,item){
                $('#projects').append("<a href="+wr+"/projects/detail/"+item.Project.id+" class='list-group-item'>"+item.Project.title+"</a>");

            });
        }) ;


    });
</script>


<?php
$this->end();
?>