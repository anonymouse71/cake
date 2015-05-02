<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Registration Confirmation Email</title>
        <style media="all" type="text/css">
		@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 400;
  src: local('Open Sans'), local('OpenSans'), url(http://fonts.gstatic.com/s/opensans/v10/cJZKeOuBrn4kERxqtaUH3T8E0i7KZn-EPnyo3HZu7kw.woff) format('woff');
}
@font-face {
  font-family: 'Open Sans';
  font-style: normal;
  font-weight: 700;
  src: local('Open Sans Bold'), local('OpenSans-Bold'), url(http://fonts.gstatic.com/s/opensans/v10/k3k702ZOKiLJc3WVjuplzHhCUOGz7vYGh680lGh-uXM.woff) format('woff');
}
body{color:#333333; font-family:Open Sans; font-size:13px; }
.container{ background: #f5f5f5; border-radius: 10px; border:1px solid #111; padding:10px;}
#logo h1{margin-top:0;}
#logo h1 a{color:#333333; font-family:Open Sans;}
    </style>
</head>
<body>
<div class="container">
	<div id="logo"><h1><a class="Bangladesh Open University" href="http://bou3.bpopower.com/"><img src="http://bou3.bpopower.com/img/logo.png" /></a></h1></div>
    <div id="user">Hi <?php echo $username ?>,</div>
    <p id="content">
    	আপনার নিবন্ধীকরণ সম্পূর্ণ করার জন্য নীচের লিঙ্কে ক্লিক করুন
<br>
<br>
 <a href="<?php echo $link ?>" title="Email verification link"> <?php echo $link ?> </a>
    </p>
    <p>ধন্যবাদ,</p>
    <p>বাংলাদেশ উন্মুক্ত বিশ্ববিদ্যালয়</p>
    </div>
</body>
</html>
