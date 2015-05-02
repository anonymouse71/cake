<?php #var_dump($topics['Post']) ?>


<div class="row">
    <div class="col-md-12">
        
        <div class="forum">
            <h1 class="page-title">Sub-Forum</h1>
            <h3 class="subtitle"><?php echo h($topics['Topic']['title']); ?></h3>
                <ul class="list-unstyled list-inline">
                    <li class="subject"><a href="<?php echo $this->webroot; ?>posts/add"><?php echo __('ADD NEW POST');?></a></li>
                </ul>

        <?php foreach ($topics['Post'] as $post) { ?>
            <?php #var_dump($post) ?>
            <div class="well">
                <div class="row topic">
                    <div class="col-md-9 col-sm-9">
                        <div class="blog-list">
                            <h4 class="blog-title"><a href="<?php echo $this->webroot.'forums/topicsView/'.$post['id'] ?>" title=""><?php echo h($post['title']); ?></a></h4>
                            <div class="date-time"><?php echo __('By');?> <a href="#" title="<?php echo h($post['modified']);  ?>" class="author"><?php echo h($post['created_by']); ?></a>, <?php  ?></div>
                            <div class="blog-short-content">
                                <p><?php echo h($post['body']); ?></p>
                            </div>

                        </div>

                    </div>
                    <div class="col-md-3 col-sm-3">
                        <p class="text-center avatar"><img width="50%" src="<?php echo $uploadedimge.$post['author']['photo_dir'].'/'.$post['author']['photo'] ?>" /></p>
                        <p class="text-center"><a href="#" title="" class="author"><?php echo h($post['created_by']); ?></a></p>
                        <p class="position text-center"><?php echo __('Position :');?>  <?php echo $post['author']['user_type'] ?></p>
                        <p class="join text-center"><?php echo __('Join :');?> <?php echo $this->time->niceshort($post['author']['created']); ?></p>
                        <!-- <p class="post text-center">Post : 6</p> -->
                    </div>
                    <div class="forum-comment">
                        <ul class="list-unstyled list-inline inline">
                            <li><a href="<?php echo $this->webroot.'forums/topicsView/'.$post['id'] ?>"><i class="glyphicon glyphicon-eye-open"></i></a></li>
                            <!-- li><a href="#"><?php echo $this->Html->link('<i class="fa fa-weixin fa-lg"></i>', array('action' => 'add', $post['id'],'forum'), array('escape'=>false)); ?></a>
                            </li> -->

                            <!-- <li><a href="#"><i class="fa fa-weixin fa-lg"></i></a></li> -->
                            <!-- <li><a href="<?php echo $this->webroot.'comments/edit/'.$post['id'] ?>"><i class="icon-pencil"></i></a></li> -->
                            <!-- <li><a href="#"><i class="icon-pencil"></i></a></li> -->

                            <!-- <li><?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller'=>'comments','action' => 'delete', $post['id']), array('escape'=>false), __('Are you sure you want to delete the Comment?', $post['id'])); ?></li> -->
                            <!-- <li><a href="#"><i class="icon-cancel"></i></a></li> -->
                        </ul>
                    </div>
                </div>
            </div>
        <?php } ?>
<!--             <div class="well">
                <div class="row topic">
                    <div class="col-md-9 col-sm-9">
                        <div class="blog-list">
                            <h4 class="blog-title"><a href="#" title="Basic Adobe Photoshop">Basic Adobe Photoshop</a></h4>
                            <div class="date-time">By <a href="#" title="Mr. Abdus Salam" class="author">Mr. Abdus Salam</a>, 18 Septempber 2014</div>
                            <div class="blog-short-content">
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p><p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                            </div>

                        </div>

                    </div>
                    <div class="col-md-3 col-sm-3">
                        <p class="text-center avatar"><img src="img/avatar.jpg" /></p>
                        <p class="text-center"><a href="#" title="Mr. Abdus Salam" class="author">Mr. Abdus Salam</a></p>
                        <p class="position text-center">Position : Student</p>
                        <p class="join text-center">Join : 18 Septempber 2014</p>
                        <p class="post text-center">Post : 6</p>
                    </div>
                    <div class="forum-comment">
                        <ul class="list-unstyled list-inline inline">
                            <li><a href="#"><img src="img/chat.jpg" /></a></li>
                            <li><a href="#"><img src="img/comments.jpg" /></a></li>
                            <li><a  href="#"><?php echo $this->Html->image('edit.jpg',array('class'=>'image-responsive','alt'=>__('bou-logo'), 'title'=>__('bou-logo')));?>
                                </a></li>
                            <li><a  href="#"><?php echo $this->Html->image('delete.jpg',array('class'=>'image-responsive','alt'=>__('bou-logo'), 'title'=>__('bou-logo')));?>
                                </a></li>
                        </ul>
                    </div>
                </div>
            </div> -->
        </div>
    </div>
</div>