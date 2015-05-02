

<div class="panel-group" id="accordion-color">
    <div class="panel panel-info">

        <div class="panel-heading">
            <h3 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion-color" href="#colorCommon"><?php echo __('Tools');?></a>
            </h3>
        </div>

        <div id="colorCommon" class="panel-collapse collapse in">
            <div class="panel-body">
                <!-- Default info blocks -->
                <ul class="info-blocks">
                    <li class="bg-primary">
                        <div class="top-info">
                            <a href="#"><?php echo __('Add new post'); ?></a>
                            <small><?php echo __('post management'); ?></small>
                        </div>
                        <a href="#"><i class="icon-spinner7"></i></a>
                        <span class="bottom-info bg-danger"><span id="profd-1">12</span> <?php echo __('drafts') ?></span>
                    </li>
                    <li class="bg-success">
                        <div class="top-info">
                            <a href="#"><?php echo __('Site parameters') ?></a>
                            <small><?php echo __('layout settings') ?></small>
                        </div>
                        <a href="#"><i class="icon-cogs"></i></a>
                        <span class="bottom-info bg-primary"><?php echo __('No updates') ?></span>
                    </li>
                    <li class="bg-danger">
                        <div class="top-info">
                            <a href="#"><?php echo __('Site statistics') ?></a>
                            <small><?php echo __('visits, users, orders stats') ?></small>
                        </div>
                        <a href="#"><i class="icon-bars"></i></a>
                        <span class="bottom-info bg-primary"><span id="profd-2">3</span> <?php echo __('new updates') ?></span>
                    </li>
                    <li class="bg-info">
                        <div class="top-info">
                            <a href="#"><?php echo __('My messages') ?></a>
                            <small><span id="profd-6">3</span> <?php echo __('messages history') ?></small>
                        </div>
                        <a href="#"><i class="icon-bubbles3"></i></a>
                        <span class="bottom-info bg-primary"><span id="profd-3">24</span> <?php echo __('new messages') ?></span>
                    </li>
                    <li class="bg-primary">
                        <div class="top-info">
                            <a href="#"><?php echo __('Orders history') ?></a>
                            <small><?php echo __('purchases statistics') ?></small>
                        </div>
                        <a href="#"><i class="icon-cart4"></i></a>
                        <span class="bottom-info bg-danger"><span id="profd-4">17</span> <?php echo __('new orders') ?></span>
                    </li>
                    <li class="bg-success">
                        <div class="top-info">
                            <a href="#"><?php echo __('Invoices stats') ?></a>
                            <small><?php echo __('invoices archive') ?></small>
                        </div>
                        <a href="#"><i class="icon-coin"></i></a>
                        <span class="bottom-info bg-primary"><span id="profd-5">9</span> <?php echo __('new invoices') ?></span>
                    </li>
                </ul>
                <!-- /default info blocks -->
            </div>
        </div>

    </div>
</div>


<?php
$this->append('jsRegion');
?>

<script>
    //    var wr = '<?php //echo $this->base;?>//';
    //var userid = '<?php //echo array_key_exists('User',$_user)?$_user['User']['id']:null ?>//';
    //console.log(userid);
    $(document).ready(function(){
        $.ajax({
            'url':wr+'/lessons/myTotalCourses/'+userid,
            'dataType':'json'
        }).success(function(data){
//            console.log(data);

            $('#profd-3').html(data.total_received_message);

            $('#profd-6').html(data.total_sent_message);
//            $('#lp-2').html(data.total_content);
//            $('#lp-3').html(data.content_completion);
//            $('#progress-bar-width').css('width',data.percentage);


        })
    });
</script>


<script>

    $(document).ready(function(){
        $.ajax({
            'url':wr+'/lessons/dashboard',
            'dataType':'json'
        }).success(function(data){
            console.log(data);

            $('#profd-1').html(data.total_draft_post);





        })
    });
</script>


<?php
$this->end();
?>