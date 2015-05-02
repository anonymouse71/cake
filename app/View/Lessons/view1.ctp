<?php 
#var_dump($lesson);
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
        <i class="glyphicon glyphicon-book"></i> Lesson
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
<!--        <i class="glyphicon glyphicon-book"></i> Lesson-->
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
<!--    </div>-->
        <?php echo $this->element('lessons/faq'); ?><br/>
        <?php echo $this->element('lessons/operation'); ?><br/>
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
                    <li class="unit-end"><a id="complete" data-content-id="" href="javascript:void(0)" title="unit-end">unit-end</a></li>
                    <li class="next"><a id="next" data-content-id="" href="javascript:void(0)">Next <span aria-hidden="true">&rarr;</span></a></li>
                  </ul>
            </div>
        </div>
    </div>
    <!-- midcontent End -->
    <div class="col-md-3 sidebar">

        <?php echo $this->element('lessons/progress'); ?><br/>

        <?php echo $this->element('lessons/calender'); ?><br/>

<!--        <div class="side-title">Calender</div>-->
<!--        <div class="side-content">-->
<!--        	<div class="responsive-calendar">-->
<!--                <div class="controls">-->
<!--                    <h4><span data-head-year></span> <span data-head-month></span></h4>-->
<!--                </div>-->
<!--                <div class="day-headers">-->
<!--                  <div class="day header">Mon</div>-->
<!--                  <div class="day header">Tue</div>-->
<!--                  <div class="day header">Wed</div>-->
<!--                  <div class="day header">Thu</div>-->
<!--                  <div class="day header">Fri</div>-->
<!--                  <div class="day header">Sat</div>-->
<!--                  <div class="day header">Sun</div>-->
<!--                </div>-->
<!--                <div class="days" data-group="days">-->
<!--                  -->
<!--                </div>-->
<!--              </div>-->
<!--        </div>-->

        <?php echo $this->element('lessons/performance_record'); ?><br/>

        <?php echo $this->element('lessons/resource'); ?><br/>

        <?php echo $this->element('lessons/announcement'); ?><br/>




    </div>
</div>


<?php $dataId = implode(',', $GLOBALS['dataArray']); ?>


<script type="text/javascript">
  var arrayIds = Array(<?php echo $dataId ?>);

  //alert(arrayIds);

  var totalContent = arrayIds.length;
  var clickNext = 0;
  //alert(totalContent);

  $('#next').click(function(){

    ++clickNext;

    if (totalContent>clickNext) {
      currentId = arrayIds[clickNext];
      $('#prev').show();
    }else{
      $('#next').hide();
    }

    if (totalContent==clickNext+1) {$('#next').hide();};

    $.ajax({
        url : '<?php echo $this->webroot ?>lessons/get_content',
        type : 'post',
        data : { contentID : currentId },
        success : function(respData,status,XHR){
          $('#contentContainer').html(respData);
        }
      });

  });

  $('#complete').click(function(){
    content_id = arrayIds[clickNext];
      ++clickNext;

    if (totalContent>clickNext) {
      currentId = arrayIds[clickNext];
      $('#prev').show();
    }else{
      $('#next').hide();
    }

    if (totalContent==clickNext+1) {$('#next').hide();};

    $.ajax({
        url : '<?php echo $this->webroot ?>lessons/end_unit',
        type : 'post',
        data : { contentID : currentId, user_id: <?php echo $_user['User']['id'] ?> ,lessonid: <?php echo $lesson['Lesson']['id'] ?>, content_id: content_id},
        success : function(respData,status,XHR){
          $('#contentContainer').html(respData);
        }
      });
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
    $.ajax({
        url : '<?php echo $this->webroot ?>lessons/get_content',
        type : 'post',
        data : { contentID : currentId },
        success : function(respData,status,XHR){
          $('#contentContainer').html(respData);
        }
      });

  });
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
      $('#contentContainer').html('<h1 class="text-center"><img src="<?php echo $this->webroot ?>img/ajaxloader.gif" alt="Loading Content" /></h1>');
    });
  });
</script>
