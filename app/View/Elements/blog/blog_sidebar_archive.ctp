<div class="side-title">Archives</div>
<div class="side-content">

    <?php
    $curr_year = '';
    foreach ($archives as $archive):
        if ($curr_year != substr($archive[0]['dd'],0,4)) {
            if ($curr_year != '') {
                echo '</ul>';
                echo '</li>';
            }
            echo '<li>'.substr($archive[0]['dd'],0,4);
            echo '<ul>';
        }
        echo $this->html->tag('li',$this->html->link(substr($archive[0]['dd'],4).'  ('.$archive[0]['numblogs'].')', array('controller'=>'Blogs',  'action'=>'catalog', 'date'=>str_replace(' ', '-',  $archive[0]['dd']))));
        $curr_year = substr($archive[0]['dd'],0,4);
    endforeach;
    ?>
    <!--             <ul class="list-unstyled">
                    <li><a href="#">September 2014</a></li>
                    <li><a href="#">August 2014</a></li>
                    <li><a href="#">July 2014</a></li>
                    <li><a href="#">June 2014</a></li>
                </ul> -->
</div>
</div>
</div>
