

<div class="list-group" id="last_comments">
    <a href="#" class="list-group-item active side-title">
        <i class="glyphicon glyphicon-comment"></i> <?php echo __('Last Comments'); ?>
    </a>
<!--    --><?php //echo $this->layout; ?>
</div>



<?php
$this->append('jsRegion');
?>

<script>
        var wr = '<?php echo $this->base;?>';
    var content = null;
    $(document).ready(function(){



        $.ajax({
            'url':wr+'/Blogs/last_comments/',
            'dataType':'json'
        }).success(function(data){
            // console.log(data);
            $(data.last_comments).each(function(index,item){
                // console.log(item.Comment.created_by);
                // console.log(item.Comment.data);
                //  console.log(item.Comment.created);
                // $('#last_comments').append("<a href="+wr+"/comments/view/"+item.Comment.id+" class='list-group-item'>"+item.Comment.data+'<br>'+item.Comment.created_by+"<br>"+item.Comment.created+"</a>");
                $('#last_comments').append("<p class='list-group-item'>"+item.Comment.data+'<br>'+item.Comment.created_by+"<br>"+item.Comment.created+"</p>");

            });


        }) ;


    });
</script>
<?php
$this->end();
?>