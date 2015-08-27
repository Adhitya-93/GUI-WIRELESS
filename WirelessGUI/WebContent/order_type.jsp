<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>Order Selection</title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="css/elegant-icons-style.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<!-- Custom styles -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />

<!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
</head>

<body>
	<!-- container section start -->
	<section id="container" class="">
		<!--header start-->

		<header class="header dark-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom"></div>
			</div>

			<!--logo start-->
			<a href="index.jsp" class="logo"> <span class="lite"><img
					alt="" src="img/t15.png"></span></a>
			<!--logo end-->
			<div class="top-nav notification-row">
				<br>
				<!-- user login dropdown start-->
				<li class="dropdown"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> <span class="profile-ava">
							<img alt="" src="img/avatar1_small.jpg">
					</span> <span class="username"><% String firstName= session.getAttribute("rep_username").toString();
     out.println(firstName);%></span>

				</a>
					<ul class="dropdown-menu extended logout">
						<div class="log-arrow-up"></div>
						<li class="eborder-top"><a href="#"><i
								class="icon_profile"></i> My Profile</a></li>
						<li><a href="login.html"><i class="icon_key_alt"></i> Log
								Out</a></li>
					</ul></li>
				<!-- user login drop down end -->
				</ul>
				<!-- notification drop down end-->
			</div>
		</header>
		<!--header end-->
		<!--main content start-->

		<section class="wrapper">
			<div class="row">
				<div class="col-lg-12">
					<br>
					<h3 class="page-header">
						<i class="fa fa fa-bars"></i> Order Selection
					</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.jsp">Home</a></li>
						<li><i class="fa fa-square-o"></i>Order Selection</li>
					</ol>
				</div>
			</div>
			<!-- page start-->
			<div align="center">
				<form name="neworder" method="post" action="CustomerLogReason">
				<input type="image" src="img/createunclicked.png" onmouseover="this.src='img/create.png'" onmouseout="this.src='img/createunclicked.png'" width="250px" vspace="50" hspace="40"/>
				</form>
				<form name=orderstatus method="post" action="CustomerLogReason2">
				<input type="image" src="img/checkunclicked.png" onmouseover="this.src='img/check.png'" onmouseout="this.src='img/checkunclicked.png'"width="250px"vspace="50" hspace="40"/>
				</form>
			</div>
			<!-- page end-->

		</section>
		<!--main content end-->
	</section>
	<!-- container section end -->
	<!-- javascripts -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<!--custome script for all page-->
	<script src="js/scripts.js"></script>


</body>
</html>
