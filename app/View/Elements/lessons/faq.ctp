<?php  //$faq = $this->requestAction('CourseDetails/faq');
//    var_dump($faq);

?>
<div class="list-group" id="faq">
    <a href="#" class="list-group-item active side-title">
        <i class="glyphicon glyphicon-question-sign"></i> <?php echo __('FAQ')?>
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
            'url':wr+'/lessons/latest/3',
            'dataType':'json'
        }).success(function(data){
            console.log(data);
            $(data).each(function(index,item){
                $('#faq').append("<a href="+wr+"/faqs/view/"+item.Faq.id+" class='list-group-item'>"+item.Faq.question+"</a>");

            });
        }) ;


    });
</script>

<?php
$this->end();
?>