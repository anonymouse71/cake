<?php
$totalLessonContent = count($lesson['Content']);
#var_dump($totalCompletedContent,$totalLessonContent,$userId,$lessonId);  #Getting all data from controller
?>

<style type="text/css">
  .contentAjax{
    cursor: pointer;
    background: rgba(0,0,0,0.1);
  }
</style>

<div class="row">
	<div class="col-md-3 sidebar">
  	<div class="list-group">
      <a href="#" class="list-group-item active side-title">
        Lesson
      </a>
      <!-- Tree Viwe Contents [START] -->
<div class="panel panel-default">
    <?php

        function treeForm(array &$elements, $parentId = 0, $elkey = null) {
            $branch = array();

            foreach ($elements as $key=>$element) {
          #var_dump($element); die();
                if ($element[$elkey]['parent_id'] == $parentId) {
                    $children = treeForm($elements, $element[$elkey]['id'], $elkey);
                    if ($children) {
                        $element['children'] = $children;
                    }
                    $branch[$element[$elkey]['id']] = $element;
                    unset($elements[$key]);
                }
            }
            return $branch;
        }

        /*For Ajax Paginate*/
        $GLOBALS['dataArray'] = array();

      //Build Menu
        function convertToMenu($arr, $elmkey) {
            echo "<ul class='open'>";
            foreach ($arr as $val) {
                    if (!empty($val['children'])) {
                            echo "<li><strong class='contentAjax' data-content-id='". $val[$elmkey]['id'] ."'>" . $val[$elmkey]['name'] . "</strong>";
                            $GLOBALS['dataArray'][] = $val[$elmkey]['id'];
                            convertToMenu($val['children'], $elmkey);
                            echo "</li>";
                    } else {
                            echo "<li><strong class='contentAjax' data-content-id='". $val[$elmkey]['id'] ."'>" . $val[$elmkey]['name'] . "</strong></li>";
                            $GLOBALS['dataArray'][] = $val[$elmkey]['id'];
                    }
            }
            echo "</ul>";
        }



      foreach ($categories as $key => $content) {
        if ($key==0) {
          echo "<ul id='treeView' class='treeview-red' style=''><li class='open'><strong>Content index</strong>";
        }
        $menuTree = treeForm($categories, $content['Content'], 'Content'); // Preparing $categories.
      }
      convertToMenu($categories, 'Content');// changing to list, you can add <a> inside it.
    echo "</li></ul>";

    ?>
    
</div>

<script type="text/javascript">
  $(document).ready(function(){
    $("#treeView").treeview({
      animated: "fast",
      /*collapsed: true,
      unique: true,
      persist: "cookie",*/
      toggle: function() {
        window.console && console.log("%o was toggled", this);
      }
    });
  })
</script>
<!-- Tree Viwe Contents [END] -->

    </div> 
<!--    <div class="list-group panel-default panel">-->
<!--      <a href="#" class="list-group-item active side-title">-->
<!--        Lesson-->
<!--      </a>-->
<!--      <ul class="nav">-->
<!--        <li>-->
<!--            <label label-default="" class="tree-toggle nav-header setting-icon"><img src="img/list-icon.png" alt="icon"/>Bootstrap</label>-->
<!--            <ul class="nav tree">-->
<!--                <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>-->
<!--                </li>-->
<!--                <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-14 pen tools</a>-->
<!--                </li>-->
<!--            </ul>-->
<!--        </li>-->
<!--        <li>-->
<!--          <label label-default="" class="tree-toggle nav-header setting-icon"><img src="img/list-icon.png" alt="icon"/>Buttons</label>-->
<!--          <ul class="nav tree">-->
<!--            <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>-->
<!--            </li>-->
<!--            <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>-->
<!--            </li>-->
<!--          </ul>-->
<!--        </li>-->
<!--        <li>-->
<!--          <label label-default="" class="tree-toggle nav-header setting-icon"><img src="img/list-icon.png" alt="icon"/>Responsive</label>-->
<!--          <ul class="nav tree">-->
<!--            <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>-->
<!--            </li>-->
<!--            <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>-->
<!--            </li>-->
<!--            <li>-->
<!--              <label label-default="" class="tree-toggle nav-header"><i class="fa fa-plus-square-o"></i>Media Queries</label>-->
<!--              <ul class="nav tree">-->
<!--                <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>-->
<!--                </li>-->
<!--                <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>-->
<!--                </li>-->
<!--                <li>-->
<!--                  <label label-default="" class="tree-toggle nav-header">Mobile</label>-->
<!--                  <ul class="nav tree">-->
<!--                    <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>-->
<!--                    </li>-->
<!--                    <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>-->
<!--                    </li>-->
<!--                  </ul>-->
<!--                </li>-->
<!--              </ul>-->
<!--            </li>-->
<!--          </ul>-->
<!--        </li>-->
<!--      </ul>-->
<!--    </div>  -->
        <?php echo $this->element('lessons/faq'); ?><br/>
        <?php echo $this->element('lessons/operation'); ?><br/>
        <?php echo $this->element('lessons/projects'); ?><br/>
    </div><!-- Left-sideber End -->
	<div class="col-md-6">

      <div id="contentContainer">
          <div class="lesson-title">
            <h4 class="blog-title"><?php echo isset($firstContent['Content']['name'])? $firstContent['Content']['name'] : 'No title found!'; ?></h4>
              <div class="blog-short-content">
                <?php echo isset($firstContent['Content']['data'])? $firstContent['Content']['data'] : 'No contents'; ?>
              </div>
          </div>
      </div>

        <div class="row">
        	<div class="col-md-12 col-sm-12">
                  <ul class="pager">
                    <li class="previous"><a id="prev" data-content-id="" style="display:none" href="javascript:void(0)"><span aria-hidden="true">&larr;</span> Prev</a></li>
                    <li class="unit-end"><a style="<?php if(isset($completeStatus)){ echo 'display:none'; } ?>" id="complete" data-content-id="" href="javascript:void(0)" title="unit-end">unit-end</a></li>
                    <li class="next"><a id="next" data-content-id="" href="javascript:void(0)">Next <span aria-hidden="true">&rarr;</span></a></li>
                  </ul>
            </div>
        </div>
    </div>
    <!-- midcontent End -->
    <div class="col-md-3 sidebar">
     <!--   <div class="list-group">
            <a href="#" class="list-group-item active side-title">
                <i class="glyphicon glyphicon-refresh"></i> <?php /*echo __('Lesson Progress'); */?>
            </a>
        </div>-->
       <!-- <div class="side-content">
        	<div class="row">
            	<div class="col-md-3"><span class="">Progress</span></div>
                <div class="col-md-9">
                	<div class="progress">
                      <div id="lessonProgressbar" class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width:<?php /*echo (100/$totalLessonContent) * $totalCompletedContent */?>%;">

                     </div>
                    </div>
                </div>
                <p class="progress-title">Progress <span id="ContentComplete"><?php /*echo $totalCompletedContent */?></span> out of <?php /*echo $totalLessonContent */?> </p>
            </div>
        </div>-->

        <?php echo $this->element('lessons/progress'); ?><br/>

        <?php echo $this->element('lessons/calender'); ?><br/>

        <?php echo $this->element('lessons/performance_record'); ?><br/>

        <?php echo $this->element('lessons/resource'); ?><br/>

        <?php echo $this->element('lessons/announcement'); ?><br/>
        


    </div>
</div>


<?php $dataId = implode(',', $GLOBALS['dataArray']); ?>


<script type="text/javascript">
  var arrayIds = Array(<?php echo $dataId ?>);

  var totalContent = arrayIds.length;
  var clickNext = 0;

  var isClickComplete = 0;

  $('#next').click(function(){

    ++clickNext;

    if (totalContent>clickNext) {
      currentId = arrayIds[clickNext];
      $('#prev').show();
    }else{
      $('#next').hide();
    }

    if (totalContent==clickNext+1) {$('#next').hide();};

    isClickComplete = 0; /*Checking complete buttin is clicked (For fix AJAX Loder problem)*/
    makeShowHideStatus(currentId);

    $.ajax({
        url : '<?php echo $this->webroot ?>lessons/get_content',
        type : 'post',
        data : { contentID : currentId },
        success : function(respData,status,XHR){
          $('#contentContainer').html(respData);
        }
      });

  });

  var totalLessonContent = <?php echo $totalLessonContent ?>;
  var totalCompletedContent = <?php echo $totalCompletedContent ?>;

  $('#complete').click(function(){

    $(this).fadeOut();

    var lessonId = <?php echo $lessonId; ?>;
    var currentContentId = arrayIds[clickNext];

    isClickComplete = 1; /*Checking complete buttin is clicked (For fix AJAX Loder problem)*/
    endUnitVisibility(lessonId,currentContentId); /*Calling this function for update progressbar*/
  });

  $('#prev').click(function(){

    var currentId = $(this).attr('data-content-id');

    --clickNext;

    if (clickNext) {
      currentId = arrayIds[clickNext];
      $('#next').show();
    }else{
      $('#prev').hide();
    }

    if (clickNext==0) {currentId = arrayIds[clickNext]; $('#prev').hide();};

    isClickComplete = 0; /*Checking complete buttin is clicked (For fix AJAX Loder problem)*/
    makeShowHideStatus(currentId);


    $.ajax({
        url : '<?php echo $this->webroot ?>lessons/get_content',
        type : 'post',
        data : { contentID : currentId },
        success : function(respData,status,XHR){
          $('#contentContainer').html(respData);
        }
      });

  });

  function endUnitVisibility(lessonId,contentId){
    $.get('<?php echo $this->webroot ?>lessons/set_content_completed/'+lessonId+'/'+contentId,function(respData){
      
      $('#ContentComplete').html(respData);
      var parcentage = (100 / totalLessonContent) * respData;
      $('#lessonProgressbar').css({'width' : parcentage + '%' });

    });
  }


  function makeShowHideStatus(contentID){
    /*SHOW/HIDE Complete Button for Current Content*/
    var lessonID = <?php echo $lessonId ?>;
    $.get('<?php echo $this->webroot ?>lessons/check_content_status/'+lessonID+'/'+contentID,function(respData){
      if (respData=='no') {
        $('#complete').show();
      }else{
        $('#complete').hide();
      }
    });
  }
</script>


<script type="text/javascript">
  $(document).ready(function(){

    $('.contentAjax').click(function(){
      var contentId = $(this).attr('data-content-id');

      for(var i=0; i<arrayIds.length; i++){
        if(contentId==arrayIds[i]){
          clickNext = i;

          if(i==0){
            $('#prev').hide();
          }else{
            $('#prev').show();
          }

          if(i==arrayIds.length-1){
            $('#next').hide();
          }else{
            $('#next').show();
          }

        }
      }

      isClickComplete = 0; /*Checking complete buttin is clicked (For fix AJAX Loder problem)*/
      makeShowHideStatus(contentId);

      $.ajax({
        url : '<?php echo $this->webroot ?>lessons/get_content',
        type : 'post',
        data : { contentID : contentId },
        success : function(respData,status,XHR){
          $('#contentContainer').html(respData);
        }
      });
    });


    $(document).ajaxStart(function(){
      if (!isClickComplete) {
        $('#contentContainer').html('<h1 class="text-center"><img src="<?php echo $this->webroot ?>img/ajaxloader.gif" alt="Loading Content" /></h1>');
      }
    });

    $(document).ajaxComplete(function(){
      $('img').attr('class','img-responsive');
    });

    $('img').attr('class','img-responsive');

  });
</script>
