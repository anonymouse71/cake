<div class="list-group">
    <a href="#" class="list-group-item active side-title">
        <i class="glyphicon glyphicon-calendar"></i> <?php echo __('Calendar'); ?>
    </a>
    <a href="#" class="list-group-item">
                    <div class="responsive-calendar">
                        <div class="controls">
                            <h4><span data-head-year></span> <span data-head-month></span></h4>
                        </div>
                        <div class="day-headers">
                          <div class="day header">Mon</div>
                          <div class="day header">Tue</div>
                          <div class="day header">Wed</div>
                          <div class="day header">Thu</div>
                          <div class="day header">Fri</div>
                          <div class="day header">Sat</div>
                          <div class="day header">Sun</div>
                        </div>
                        <div class="days" data-group="days">

                        </div>
                      </div>
    </a><br>

</div>

<?php echo $this->Html->script('/bou/js/responsive-calendar',['block' => 'scriptURL','inline'=>true]); ?>
<?php echo $this->Html->css('/bou/css/responsive-calendar',null,['block' => 'cssURL','inline'=>true]);?>

<?php
$this->append('jsRegion');
?>


<script type="text/javascript">
    $(document).ready(function () {
        $(".responsive-calendar").responsiveCalendar({
            time: '2015-01'

        });
    });
</script>
<?php
$this->end();
?>