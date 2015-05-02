<div class="list-group" id="chosen_for_you">
    <a href="#" class="list-group-item active side-title">
        <i class="glyphicon glyphicon-bullhorn"></i> <?php echo __('Chosen For You'); ?>
    </a>
</div>

<?php
    $this->append('jsRegion');
?>
<script>

    $(document).ready(function(){

        $.ajax({
            'url':wr+"/courses/chosen_for_you/14",
            'dataType':'json'
        }).success(function(data){

            $(data.chosen_for_you).each(function(index,item){
//                console.log(item.Course.id);
//                console.log(item.Course.image);

                $('#chosen_for_you').append(
                    "<a href="+wr+"/courses/detail/"+item.Course.id+" class='list-group-item text-center'>"+"<img alt='HTML' class='img-responsive list-group-item' src="+wr+"/"+item.Course.image+" >"+item.Course.name+"</a>");

            });
        }) ;


    });
</script>
<?php
    $this->end();
?>