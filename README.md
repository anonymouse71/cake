lms
===

Sample code


To add script url
<?php
    $this->Html->script('jquery', ['block' => 'scriptURL','inline'=>true]);
?>


To add script block
<?php
    $this->append('jsRegion');
?>
<script>
    var wr = '<?php echo $this->base;?>';
    var content = null;
    $(document).ready(function(){

        $.ajax({
            'url':'http://localhost:8080/lms/courses/chosen_for_you/14',
            'dataType':'json'
        }).success(function(data){
//            console.log(data);
            $(data.chosen_for_you).each(function(index,item){
//                console.log(item.Course.id);
//                console.log(item.Course.image);

                $('#chosen_for_you').append(
                    "<a href="+wr+"/courses/view/"+item.Course.id+" class='list-group-item text-center'>"+"<img alt='HTML' class='img-responsive' src="+wr+"/"+item.Course.image+" >"+item.Course.name+"</a>");

            });
        }) ;


    });
</script>
<?php
    $this->end();
?>


$this->_user = $this->UserAuth->getUser();
$userId = $this->UserAuth->getUserId();


Source Code for bread crumb

<?php
$this->Html->addCrumb(__('Courses'), '/courses/catalog');
$this->Html->addCrumb(__('Course Detail'), array ('plugin' => '', 'controller' => 'courses', 'action' => 'detail', $course['Course']['id']));
?>


#echo $this->element('sql-dump');


use isset empty and array_key_exists
