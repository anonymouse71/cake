<div class="list-group" id="announcement">
    <a href="#" class="list-group-item active side-title">
        <i class="glyphicon glyphicon-bullhorn"></i> <?php echo __('Announcement'); ?>
    </a>

</div>

<?php
$this->append('jsRegion');
?>
<script>
    $(document).ready(function(){

        $.ajax({
            'url':wr+'/courses/announcement/',
            'dataType':'json'
        }).success(function(data){
            $(data.title).each(function(index,item){
                $('#announcement').append("<a href="+wr+"/announcements/view/"+item.Announcement.id+" class='list-group-item'>"+item.Announcement.title+"</a>");

            });
        }) ;


    });
</script>
<?php
$this->end();
?>