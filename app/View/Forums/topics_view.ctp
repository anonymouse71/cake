<?php #var_dump($posts) 
#var_dump($comments);
?>
<div class="row">
    <div class="col-md-12">
        <div class="forum">
            <!-- <h1 class="page-title">Forum</h1> -->
            <!-- <h3 class="subtitle"><?php echo h($topics['Topic']['title']); ?></h3>

            <ul class="list-unstyled list-inline">
                <li class="subject"><a href="<?php echo $this->webroot; ?>topics/add">Add New Subject</a></li>
            </ul> -->
            
            <div class="well">
                <div class="row topic">
                    <div class="col-md-9 col-sm-9">
                        <div class="blog-list">
                            <h4 class="blog-title"><a href="#" title=""><?php echo h($posts['Post']['title']); ?></a></h4>
                            <div class="date-time">By <a href="#" title="<?php echo h($posts['Post']['modified']);  ?>" class="author"><?php echo h($posts['Post']['created_by']); ?></a>, <?php echo $this->Time->niceShort(); ?></div>
                            <div class="blog-short-content">
                                <p><?php echo h($posts['Post']['body']); ?></p>
                            </div>

                        </div>

                    </div>
                    <div class="col-md-3 col-sm-3">
                        <p class="text-center avatar"><img width="50" src="<?php echo $uploadedimge.$posts['Post']['author']['photo_dir'].'/'.$posts['Post']['author']['photo'] ?>" /></p>
                        <p class="text-center"><a href="#" title="" class="author"><?php echo h($posts['Post']['created_by']); ?></a></p>
                        <p class="position text-center">Position : <?php echo $posts['Post']['author']['user_type'] ?></p>
                        <p class="join text-center">Join : <?php echo $this->Time->niceShort($posts['Post']['author']['created']) ?></p>
                        <!-- <p class="post text-center">Post : 6</p> -->
                    </div>
                    <div class="forum-comment">
                        <ul class="list-unstyled list-inline inline">
                            <li class="comm"><a href="javascript:void(0)"><i class="fa fa-comment fa-lg"></i></a></li>


                            <!-- li><a href="#"><?php echo $this->Html->link('<i class="fa fa-weixin fa-lg"></i>', array('action' => 'add', $post['id'],'forum'), array('escape'=>false)); ?></a>
                            </li> -->
                            <li class="comm"><a href="javascript:void(0)"><i class="fa fa-weixin fa-lg"></i></a></li>


                             <li><a href="<?php echo $this->webroot.'posts/postEdit/'.$posts['Post']['id'] ?>"><i class="icon-pencil"></i></a></li> 

                             <!-- <li><?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller'=>'posts','action' => 'delete', $posts['Post']['id']), array('escape'=>false), __('Are you sure you want to delete the Post?', $posts['Post']['id'])); ?></li> -->
                             <li><a href="#"><i class="icon-cancel"></i></a></li>

                        </ul>
                    </div>
                </div>
            </div>
        <?php foreach ($comments as  $comment) {
            #var_dump($comment);
                    ?>

            <div class="well">
                <div class="row topic">
                               
                    <div class="col-md-2">
                        <img width="50" class="img-responsive" src="<?php echo $uploadedimge.$comment['Comment']['author']['photo_dir'].'/'.$comment['Comment']['author']['photo']; ?> ">
                        <div class="date-time">By <a href="#" title="Mr. Abdus Salam" class="author"><?php echo $comment['Comment']['created_by'] ?></a>,<br/> <?php echo $this->Time->niceShort($comment['Comment']['created']) ?>
                            </div>
                    </div>
                    <div class="col-md-10">
                        <div class="blog-list">

                            <div class="blog-short-content">
                                <p><?php echo $comment['Comment']['data'] ?></p>
                            </div>

                        </div>

                    </div>
                    <!-- <div class="forum-comment offset1">
                        <ul class="list-unstyled list-inline inline">
                            <li><a href="#"><i class="icon-pencil"></i></a></li>
                            <li><a href="#"><i class="fa fa-weixin fa-lg"></i></a></li>
                            <li><a  href="#"><i class="icon-pencil"></i></a></li>
                            <li><a  href="#"><i class="icon-cancel"></i></a></li>
                        </ul>
                    </div> -->

                </div>
            </div>
        <?php } ?>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Comment here</h4>
      </div><br/>
      <div class="modal-body">
        <?php echo $this->Form->create(null, array(
    'url' => array('controller' => 'comments', 'action' => 'addComment')
)); ?>
            <fieldset>
            <?php
                echo $this->Form->input('Comment.model_name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control','value'=>'Post'));
                echo $this->Form->input('Comment.model_foreign_key',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control','value'=>$posts['Post']['id']));
                echo $this->Form->input('Comment.data',array('label'=>false,'div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
                /*echo $this->Form->input('active',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));*/
                /*echo $this->Form->input('private',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));*/
            echo $this->Form->input('Comment.created_by',array('type'=>'hidden','value'=>$_user['User']['username']));
            echo $this->Form->input('Post.id',array('type'=>'hidden','value'=>$posts['Post']['id']));
            ?>            
            </fieldset>
    <!--     <?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>array('class'=>'form-group col-md-12'), 'type'=>'submit', 'class'=>'btn btn-lg btn-success')); ?> -->
      </div>
      <div class="modal-footer">
        <!-- <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> -->
        <!-- <button type="button" class="btn btn-primary">Save changes</button> -->
        <?php echo $this->Form->input( ' Save ', array( 'label' =>false, 'div'=>false, 'type'=>'submit', 'class'=>'btn btn-lg btn-success')); ?>
      </div>
    </div>
  </div>
</div>

<!-- Code for Comment Modal End -->

<script type="text/javascript">
    $('.comm').click(function(){
        $('#myModal').modal('show')
    });
</script>