<?php #var_dump($blogs); ?>
<div class="row"> 
    <div class="col-md-9">
        <h1 class="page-title"><?php echo __('Blogs'); ?></h1>
    <?php foreach ($blogs as $key => $blog) {
       #var_dump($blog);
    ?>
        <div class="blog-list">
            <h4 class="blog-title"><a href="<?php echo $this->webroot.'blogs/details/'.$blog['Blog']['id']?>" title=""><?php echo $blog['Blog']['name'] ?> </a></h4>
            <div class="date-time">By <a href="#" title="Mr. Abdus Salam" class="author"><?php echo $blog['Blog']['created_by'] ?></a>, <?php echo $this->time->niceshort($blog['Blog']['created']); ?></div>
            <div class="blog-short-content">
                <p><?php echo $blog['Blog']['description'] ?></p>
            </div>
    <?php $lastComment = end($blogs[$key]['Blog']['comment']); 
    #var_dump($lastComment); 
    ?>
            <div class="comment"> <?php echo count($blogs[$key]['Blog']['comment']) ?> Comments (Last comment <?php echo $this->Time->niceshort($lastComment['Comment']['created']) ?>)</div>
        </div>
    <?php } ?>
<!-- 
        <div class="blog-list last">
            <h4 class="blog-title"><a href="#" title="Basic Adobe Photoshop">Basic Adobe Photoshop</a></h4>
            <div class="date-time">By <a href="#" title="Mr. Abdus Salam" class="author">Mr. Abdus Salam</a>, 18 Septempber 2014</div>
            <div class="blog-short-content">
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p><p> It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
            </div>
            <div class="comment">2 Comments (Last comment 18 Septempber 2014, 19.00.00)</div>
        </div> -->
        <nav class="text-center">
            <!-- <ul class="pagination">
                <li class="disabled"><a href="#"><span aria-hidden="true">«</span><span class="sr-only">Previous</span></a></li>
                <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#"><span aria-hidden="true">»</span><span class="sr-only">Next</span></a></li>
            </ul> -->
            <ul class="pagination">
            <?php
            echo $this->Paginator->prev('< ' . __('Previous'), array('tag' => 'li'), null, array('class' => 'disabled', 'tag' => 'li', 'disabledTag' => 'a'));
            echo $this->Paginator->numbers(array('separator' => '', 'currentTag' => 'a', 'tag' => 'li', 'currentClass' => 'disabled'));
            echo $this->Paginator->next(__('Next') . ' >', array('tag' => 'li'), null, array('class' => 'disabled', 'tag' => 'li', 'disabledTag' => 'a'));
            ?>
            </ul>
        </nav>
    </div>
    <!-- Call sidebar form Element Folder -->
<?php echo $this->element('blog_sidebar') ?>

<!--     <div class="col-md-3 sidebar">
        <div class="side-title">Details</div>
        <div class="side-content"><p>Graphic Design Blog</p></div>
        <div class="side-title">Last Comments</div>
        <div class="side-content">
            <ul class="list-unstyled">
                <li><p>Student's comment<br>Suspendisse a lorem a lorem hendrerit dictum nec dictum nec ultrices sapien duis ac purus purus a enim dictum. <small>18 Septempber 2014</small></p></li>
                <li class="divider"></li>
                <li><p>Teacher's comment<br>Suspendisse a lorem a lorem hendrerit dictum nec dictum nec ultrices sapien duis ac purus purus a enim dictum. <small>18 Septempber 2014</small></p></li>
            </ul>
        </div>
        <div class="side-title">Last Registered</div>
        <div class="side-content"><ul class="list-unstyled">
                <li><p>User1 <small>18 Septempber 2014</small></p></li>
                <li class="divider"></li>
                <li><p>User2 <small>18 Septempber 2014</small></p></li>
                <li class="divider"></li>
                <li><p>User3 <small>18 Septempber 2014</small></p></li>
            </ul></div>
        <div class="side-title">Archives</div>
        <div class="side-content">
            <ul class="list-unstyled">
                <li><a href="#">September 2014</a></li>
                <li><a href="#">August 2014</a></li>
                <li><a href="#">July 2014</a></li>
                <li><a href="#">June 2014</a></li>
            </ul>
        </div>
    </div> -->


</div>

