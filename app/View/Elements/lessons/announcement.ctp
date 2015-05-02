<div class="list-group" id="announcement">
    <a href="#" class="list-group-item active side-title">
        <i class="glyphicon glyphicon-bullhorn"></i> <?php echo __('Announcement'); ?>
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
            'url':wr+'/lessons/announcement/',
            'dataType':'json'
        }).success(function(data){
            console.log(data);
            $(data.contents).each(function(index,item){
//                console.log(item.Announcement.title);
//                console.log(item.Announcement.data);

                $('#announcement').append("<a href="+wr+"/announcements/view/"+item.Announcement.id+" class='list-group-item'>"+item.Announcement.title+"</a>");

            });
        }) ;


    });
</script>

<?php
$this->end();
?>
