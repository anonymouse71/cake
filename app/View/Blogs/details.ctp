<?php #var_dump($blog)
#var_dump($lastComments);
#var_dump($archives);

 ?>
<div class="row">
    <div class="col-md-9">
        <h1 class="page-title">Blog</h1>
        <div class="blog-view">
            <h4 class="blog-title"><?php echo $blog['Blog']['name'] ?></h4>
            <div class="date-time">By <a href="#" title="" class="author"><?php echo $blog['Blog']['created_by'] ?></a>, <?php echo $this->time->niceshort($blog['Blog']['created']); ?></div>
            <div class="blog-short-content">
                <p><?php echo $blog['Blog']['description'] ?></p>
            </div>
            <div class="comment">
                <div class="total-comments"><?php echo count($blog['Blog']['comment']) ?> Comments</div> 
            <?php foreach ($blog['Blog']['comment'] as $comments) {
                #var_dump($comments);
            ?>
                <div class="comment-list well">
                    <div class="commenter"><?php echo $comments['Comment']['author']['user_type'] ?>'s Comment</div>
                    <div class="comment-content"><?php echo $comments['Comment']['data'] ?> </div>
                    <div class="comment-time">
                        <?php echo $this->time->niceshort($comments['Comment']['data']) ?>
                        <ul class="list-unstyled list-inline inline">
                              <li><a class="logo" href="<?php echo $this->webroot.'comments/BlogCommentedit/'.$comments['Comment']['id'] ?>"><i class="icon-pencil"></i></a></li>

                               <!-- <li class="comm" data-id="<?php echo $comments['Comment']['id'] ?>"><a href="javascript:void(0)"><i class="icon-pencil"></i></a></li> --> 


                            <li><?php echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller'=>'comments','action' => 'blogCommentDelete',$comments['Comment']['id']), array('escape'=>false), __('Are you sure you want to delete the Comment?', $comments['Comment']['id'])); ?></li>
                        </ul>
                    </div>
                </div>
        <?php } ?>
<!--                 <div class="comment-list well">
                    <div class="commenter">Teacher's Comment</div>
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
                </div> -->
            </div> <br/>
            <span class="comm">
                <a href="javascript:void(0)">Add a new Comment 
                    <!-- <i class="fa fa-comment fa-2x"></i> -->
                </a>
            </span>
        </div>
    </div>
    <!-- <div class="col-md-3"> -->
<?php echo $this->element('blog_sidebar') ?>
    <?php //echo $this->element('blog_sidebar_detail') ?>
    <?php //echo $this->element('blogs_sidebar/last_comment') ?>
    <?php //echo $this->element('blogs_sidebar/last_registered') ?>
    <?php //echo $this->element('blogs_sidebar/archives') ?>
<!-- </div> -->


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
    'url' => array('controller' => 'comments', 'action' => 'addBlogComment')
)); ?>
            <fieldset>
            <?php
                echo $this->Form->input('Comment.id',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control'));

                echo $this->Form->input('Comment.model_name',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control','value'=>'Blog'));
                echo $this->Form->input('Comment.model_foreign_key',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'hidden','class'=>'form-control','value'=>$blog['Blog']['id']));
                echo $this->Form->input('Comment.data',array('label'=>false,'div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));
                /*echo $this->Form->input('active',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));*/
                /*echo $this->Form->input('private',array('div' => array('class' => 'form-group col-md-12'), 'type'=>'text','class'=>'form-control'));*/
            echo $this->Form->input('Comment.modified_by',array('type'=>'hidden','vaule'=>$_user['User']['username']));
            echo $this->Form->input('Comment.created_by',array('type'=>'hidden','value'=>$_user['User']['username']));
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
        var id = $(this).attr("data-id");
        $('#CommentData').val('');

        if (id) {

             $.get('<?php echo $this->webroot; ?>comments/BlogCommentedit/'+id,
                function(data){
                   objectData = $.parseJSON(data);

                   $('#CommentData').val(objectData.Comment.data);
                   $('#CommentCreatedBy').val(objectData.Comment.created_by);
                   $('#BlogDetailsForm').attr('action','<?php echo $this->webroot ?>comments/BlogCommentedit')

                   // alert(objectData.Comment.created_by);
                   // alert(objectData.Comment.data);
                });
        }
        $('#CommentId').val(id);
        $('#myModal').modal('show')
    });
</script>