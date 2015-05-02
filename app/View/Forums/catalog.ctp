<?php #var_dump($forums); ?>
<div class="row">
    <div class="col-md-12">
        <ul class="list-unstyled list-inline">
                <!-- <li class="subject"><a href="<?php //echo $this->webroot; ?>topics/addForum">Add New Subject</a></li>
                <li class="vote"><a href="#">Add New Vote</a></li> -->
        </ul><br/><br/>

    <?php foreach ($forums as $forum): ?>
        <div class="forum">
            <!-- <h1 class="page-title">Forum</h1> -->
            <h3 class="subtitle"><?php echo $forum['Forum']['title'] ?></h3>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th><?php echo __('Subject');?></th>
                        <th><?php echo __('Answer');?></th>
                        <th><?php echo __('Last Answer');?></th>
                        <!-- <th>Status</th> -->
                        <!-- <th></th> -->
                    </tr>
                    </thead>
<?php foreach ($forum['Topic'] as $subforum) { ?>
                    <tbody>       
                    <tr>
                        <td>
                            <div class="sub-title">
                                <p class="sub"><?php echo $this->Html->link(h($subforum['title']), array('action' => 'details', $subforum['id']), array('escape'=>false)); ?>
                                </p>
                                <p class="desc"><?php echo h($subforum['comments']); ?>
                                </p>
                            </div>
                        </td>                    
                        <td><?php echo count($subforum['Post']); ?> Answer</td>

<?php $lastComment = end($subforum['Post']); ?>

                        <td><p class="time"><?php #echo $lastComment['Comment']['created'] ?></p><a href="#" class="commenter"><?php #echo $lastComment['Comment']['created_by'] ?></a></td>
                        <!-- <td>
                            <?php //if($subforum['status']) { 
                                     //echo $this->Form->postLink('<i class="fa fa-unlock fa-2x "></i>
//', array('action' => 'changeStatus', $subforum['id']), array('escape'=>false));

 //                                   }else{ 
//                                         echo $this->Form->postLink('<i class="fa fa-lock fa-2x"></i>
//', array('action' => 'changeStatus', $subforum['id']), array('escape'=>false));

 //                                    } ?>

                            </td> -->
                        <!-- <td>
                            <ul class="list-unstyled list-inline inline">
                               
                                <li>
                                    <?php //echo $this->Html->link('<i class="icon-pencil"></i>', array('controller'=>'topics','action' => 'subForumEdit', $subforum['id']), array('escape'=>false)); ?>
                                </li>

                                <li><?php //echo $this->Form->postLink('<i class="icon-cancel"></i>', array('controller'=>'topics','action' => 'subForumDelete', $subforum['id']), array('escape'=>false), __('Are you sure you want to delete # %s?',$subforum['id'])); ?>
                                </li>
                            </ul>
                        </td> -->
                    </tr>
                <?php  } ?>
                    </tbody>
                
                </table>
            </div>
        </div>
    <?php endforeach; ?>
    </div>
</div>