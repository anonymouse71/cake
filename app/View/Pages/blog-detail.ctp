<div class="row">
    <div class="col-md-9">
        <h1 class="page-title"><?php echo __('Blog') ?></h1>
        <div class="blog-view">
            <h4 class="blog-title"><a href="#" title="Basic Adobe Photoshop"><?php echo __('Basic Adobe Photoshop') ?></a></h4>
            <div class="date-time">By <a href="#" title="Mr. Abdus Salam" class="author">Mr. Abdus Salam</a>, 18 Septempber 2014</div>
            <div class="blog-short-content">
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
            </div>
            <div class="comment">
                <div class="total-comments"><?php echo $this->Bangladatenumber->convert_to_bangla_number('2') ?> <?php echo __('Comments') ?></div>
                <div class="comment-list well">
                    <div class="commenter"><?php echo __('Students Comment') ?></div>
                    <div class="comment-content">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</div>
                    <div class="comment-time">
                        <?php echo $this->Bangladatenumber->convert_to_bangla_number('18') ?>Septempber 2014, 19.00.00
                        <ul class="list-unstyled list-inline inline">
                            <li><a class="logo" href="#"><?php echo $this->Html->image('edit.jpg',array('class'=>'image-responsive','alt'=>__('bou-logo'), 'title'=>__('bou-logo')));?>
                                </a></li>
                            <li><a class="logo" href="#"><?php echo $this->Html->image('delete.jpg',array('class'=>'image-responsive','alt'=>__('bou-logo'), 'title'=>__('bou-logo')));?>
                                </a></li>
                        </ul>
                    </div>
                </div>
                <div class="comment-list well">
                    <div class="commenter"><?php echo __('Teachers Comment') ?></div>
                    <div class="comment-content">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</div>
                    <div class="comment-time">
                        18 Septempber 2014, 19.00.00
                        <ul class="list-unstyled list-inline inline">
                            <li><a class="logo" href="#"><?php echo $this->Html->image('edit.jpg',array('class'=>'image-responsive','alt'=>__('bou-logo'), 'title'=>__('bou-logo')));?>
                                </a></li>
                            <li><a class="logo" href="#"><?php echo $this->Html->image('delete.jpg',array('class'=>'image-responsive','alt'=>__('bou-logo'), 'title'=>__('bou-logo')));?>
                                </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-3 sidebar">
        <div class="side-title"><?php echo __('Details') ?></div>
        <div class="side-content"><p>Graphic Design Blog</p></div>
        <div class="side-title"><?php echo __('Last comments') ?></div>
        <div class="side-content">
            <ul class="list-unstyled">
                <li><p><?php echo __('Students Comment') ?><br>Suspendisse a lorem a lorem hendrerit dictum nec dictum nec ultrices sapien duis ac purus purus a enim dictum. <small>18 Septempber 2014</small></p></li>
                <li class="divider"></li>
                <li><p><?php echo __('Teachers Comment') ?><br>Suspendisse a lorem a lorem hendrerit dictum nec dictum nec ultrices sapien duis ac purus purus a enim dictum. <small>18 Septempber 2014</small></p></li>
            </ul>
        </div>
        <div class="side-title"><?php echo __('Last Registered') ?></div>
        <div class="side-content"><ul class="list-unstyled">
                <li><p>User1 <small>18 Septempber 2014</small></p></li>
                <li class="divider"></li>
                <li><p>User2 <small>18 Septempber 2014</small></p></li>
                <li class="divider"></li>
                <li><p>User3 <small>18 Septempber 2014</small></p></li>
            </ul></div>
        <div class="side-title"><?php echo __('Archives') ?></div>
        <div class="side-content">
            <ul class="list-unstyled">
                <li><a href="#">September 2014</a></li>
                <li><a href="#">August 2014</a></li>
                <li><a href="#">July 2014</a></li>
                <li><a href="#">June 2014</a></li>
            </ul>
        </div>
    </div>
</div>