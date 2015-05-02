<?php echo $this->Html->css('http://vjs.zencdn.net/4.11/video-js.css',array('inline'=>false)); ?>
<?php echo $this->Html->script('http://vjs.zencdn.net/4.11/video.js',array('inline'=>false)); ?>
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
          var_dump($element); die();
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

      //Build Menu
        function convertToMenu($arr, $elmkey) {
            echo "<ul class='open'>";
            foreach ($arr as $val) {
                    if (!empty($val['children'])) {
                            echo "<li><strong>" . $val[$elmkey]['name'] . "</strong>";
                            convertToMenu($val['children'], $elmkey);
                            echo "</li>";
                    } else {
                            echo "<li><strong>" . $val[$elmkey]['name'] . "</strong></li>";
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
    <div class="list-group panel-default panel">
      <a href="#" class="list-group-item active side-title">
        Lesson
      </a>
      <ul class="nav">
        <li>
            <label label-default="" class="tree-toggle nav-header setting-icon"><img src="img/list-icon.png" alt="icon"/>Bootstrap</label>
            <ul class="nav tree">
                <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>
                </li>
                <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-14 pen tools</a>
                </li>
            </ul>
        </li>
        <li>
          <label label-default="" class="tree-toggle nav-header setting-icon"><img src="img/list-icon.png" alt="icon"/>Buttons</label>
          <ul class="nav tree">
            <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>
            </li>
            <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>
            </li>
          </ul>
        </li>
        <li>
          <label label-default="" class="tree-toggle nav-header setting-icon"><img src="img/list-icon.png" alt="icon"/>Responsive</label>
          <ul class="nav tree">
            <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>
            </li>
            <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>
            </li>
            <li>
              <label label-default="" class="tree-toggle nav-header"><i class="fa fa-plus-square-o"></i>Media Queries</label>
              <ul class="nav tree">
                <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>
                </li>
                <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>
                </li>
                <li>
                  <label label-default="" class="tree-toggle nav-header">Mobile</label>
                  <ul class="nav tree">
                    <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>
                    </li>
                    <li><a href="#"><i class="fa fa-file-text-o list-icon"></i>Day-13 pen tools</a>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
    </div>  
    </div><!-- Left-sideber End -->
	<div class="col-md-6">
        <div class="lesson-title">
        	<h4 class="blog-title"><a href="#" title="Basic Adobe Photoshop"><?php echo h($content['Content']['name']); ?></a></h4>
            <div class="blog-short-content">
            	<?php echo ($content['Content']['data']); ?>
            </div>
        </div>
        <div class="row">
        	<div class="col-md-12 col-sm-12">
            	<nav class="navbar-default">
                  <ul class="pager">
                    <li class="previous"><a href="#"><span aria-hidden="true" class="glyphicon glyphicon-chevron-left pre-icon"></span>8 Lecture</a></li>
                    <li class="unit-end"><a href="#"><img src="img/unit-end.png" alt="lesson"/><p>unit-end</p></a></li>
                    <li class="next"><a href="#">9 Lecture<span aria-hidden="true" class="glyphicon glyphicon-chevron-right pre-icon"></span></a></li>
                  </ul>
                </nav>
            </div>
        </div>
    </div>
    <!-- midcontent End -->
    <div class="col-md-3 sidebar">
    	<div class="side-title">Details</div>
        <div class="side-content">
        	<div class="row">
            	<div class="col-md-4"><span class="">Progress</span></div>
                <div class="col-md-8">
                	<div class="progress">
                      <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                      </div>
                    </div>
                </div>
                <p class="progress-title">Progress 2 out of 3 </p>
            </div>                   	
        </div>
        <div class="side-title">Calender</div>
        <div class="side-content">
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
        </div>
        
        <div class="side-title">Performance Record</div>
        <div class="side-content">
       		<p>No record listed</p>
        </div>
        <div class="side-title">Resource</div>
        <div class="side-content">
        </div>
        <div class="side-title">Announcement</div>
        <div class="side-content">
       		<p>No announcement listed</p>
        </div>
        <div class="side-title">Lesson Operationn</div>
        <div class="side-content">
        	<ol>
            	<li><a href="#">Print</a></li>
                <li><a href="#">Comment</a></li>
                <li><a href="#">Pop-up Window</a></li>
            </ol>
        </div>
    </div>
</div>