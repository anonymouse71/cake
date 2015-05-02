
<div class="list-group" id="last_registered">
    <a href="#" class="list-group-item active side-title">
        <i class="glyphicon glyphicon-stats"></i> <?php echo __('Last Registered'); ?>
    </a>
</div>




<?php
$this->append('jsRegion');
?>

<script>
    var wr = '<?php echo $this->base;?>';
    var content = null;
    $(document).ready(function(){

        var wr = '<?php echo $this->base;?>';

        $.ajax({
            'url':wr+'/Blogs/last_registered/',
            'dataType':'json'
        }).success(function(data){
            console.log(data);
            $(data.last_registered).each(function(index,item){
                // console.log(item.Comment.created_by);
                // console.log(item.Comment.data);
                //  console.log(item.Comment.created);

                $('#last_registered').append("<li class='list-group-item'>"+"<b>"+item.User.first_name+"</b>"+' '+"<b>"+item.User.last_name+"</b>"+",     "+item.User.created+"</li>");

            });
        }) ;


    });
</script>
<?php
$this->end();
?>