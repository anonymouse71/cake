<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  

<!-- Mirrored from themes.3rdwavemedia.com/college-green/course-single.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Nov 2014 08:49:44 GMT -->
<head>
    <title>Responsive website template for education</title>
    <!-- Meta -->

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">    
    <link rel="shortcut icon" href="favicon.ico">  
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'> 



    <!-- Global CSS -->
    <!--<link rel="stylesheet" href=".css">
    <!-- Plugins CSS -->    

    <!-- Theme CSS -->

    <?php echo $this->Html->css("/assets/css/sazzad"); ?>
    <?php echo $this->Html->css("/assets/plugins/bootstrap/css/bootstrap.min"); ?>
    <?php echo $this->Html->css("/assets/plugins/font-awesome/css/font-awesome"); ?>
    <?php echo $this->Html->css("/assets/plugins/pretty-photo/css/prettyPhoto"); ?>
    <?php echo $this->Html->css("/assets/plugins/flexslider/flexslider"); ?>
    <?php echo $this->Html->css("/assets/css/styles"); ?>
    <?php echo $this->Html->css("/assets/css/sudeb"); ?>
    <?php echo $this->Html->css("/assets/css/doha"); ?>
    <?php echo $this->Html->css("/assets/css/sanjib"); ?>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
   <![endif]-->
   
</head> 


<body>
    <div class="wrapper">
<!-- ******HEADER START****** --> 
       <?php echo $this->element("blog/header"); ?>
        <!-- ******HEADER END****** -->

        <!-- ******NAV****** -->

        <?php echo $this->element("blog/navbar"); ?>
        <!-- ******CONTENT****** --> 
        <?php echo $this->fetch("content"); ?>

       <!-- ******FOOTER****** -->
        <?php echo $this->element("blog/footer"); ?>
    </div><!--//wrapper-->

    <!-- Javascript -->

    <?php echo $this->Html->script("/assets/plugins/jquery-1.10.2.min"); ?>
    <?php echo $this->Html->script("/assets/plugins/jquery-migrate-1.2.1.min"); ?>
    <?php echo $this->Html->script("/assets/plugins/bootstrap/js/bootstrap.min"); ?>
    <?php echo $this->Html->script("/assets/plugins/bootstrap-hover-dropdown.min"); ?>
    <?php echo $this->Html->script("/assets/plugins/back-to-top"); ?>
    <?php echo $this->Html->script("/assets/plugins/jquery-placeholder/jquery.placeholder"); ?>

    <?php echo $this->Html->script("/assets/plugins/pretty-photo/js/jquery.prettyPhoto"); ?>
    <?php echo $this->Html->script("/assets/plugins/flexslider/jquery.flexslider-min"); ?>
    <?php echo $this->Html->script("/assets/plugins/jflickrfeed/jflickrfeed.min"); ?>
    <?php echo $this->Html->script("/assets/js/main"); ?>

</body>

<!-- Mirrored from themes.3rdwavemedia.com/college-green/course-single.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Nov 2014 08:49:51 GMT -->
</html> 

