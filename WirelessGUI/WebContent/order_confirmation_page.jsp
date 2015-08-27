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

<title>Order Confirmation</title>

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
				<!-- user login dropdown start-->
				<li class="dropdown"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> <span class="profile-ava">
							<img alt="" src="img/avatar1_small.jpg">
					</span> <span class="username"><% String firstName= session.getAttribute("rep_username").toString();
     out.println(firstName);%></span> <b class="caret"></b>
				</a>
					<ul class="dropdown-menu extended logout">
						<div class="log-arrow-up"></div>
						<li class="eborder-top"><a href="#"><i
								class="icon_profile"></i> My Profile</a></li>
						<li><a href="login.html"><i class="icon_key_alt"></i> Log
								Out</a></li>
					</ul></li>
				<!-- user login dropdown end -->
				</ul>
				<!-- notificatoin dropdown end-->
			</div>
		</header>
		<!--header end-->
		<!--main content start-->
		<section class="wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header">
						<i class="fa fa fa-bars"></i> Order Confirmation
					</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.jsp">Home</a></li>
						<li><i class="fa fa-square-o"></i>Order Confirmation</li>
					</ol>
				</div>
			</div>
			<!-- page start-->
			<form class="form-validate form-horizontal " id="register_form"
				method="get" action="RegistrationServlet">
				<div class="form-group ">
					<label for="ordertype" class="control-label col-lg-2">Order
						Type </label> <label><div class="col-lg-10">
											<input class=" form-control" id="order_type" name="order_type" type="text" value= <%= request.getAttribute("order_type") %> readonly/>
										</div></label>
				</div>
				<div class="form-group ">
					<label for="plan" class="control-label col-lg-2">Plan Name
					</label> <label><div class="col-lg-10">
											<input class=" form-control" id="plan" name="plan" type="text" value= <%= request.getAttribute("plan") %> readonly/>
										</div></label>
				</div>
				<div class="form-group ">
					<label for="firstname" class="control-label col-lg-2">First
						name </label> <label><div class="col-lg-10">
											<input class=" form-control" id="firstname" name="firstname" type="text" value= <%= request.getAttribute("firstname") %> readonly/>
										</div><label>
				</div>
				<div class="form-group ">
					<label for="lastname" class="control-label col-lg-2">Last
						name </label> <label><div class="col-lg-10">
											<input class=" form-control" id="lastname" name="lastname" type="text" value= <%= request.getAttribute("lastname") %> readonly/>
										</div><label></label></label>
				</div>
				<div class="form-group ">
					<label for="streetname" class="control-label col-lg-2">Street
						Name </label> <label><div class="col-lg-10">
											<input class=" form-control" id="streetname" name="streetname" type="text" value= <%= request.getAttribute("streetname") %> readonly/>
										</div></label>
				</div>
				<div class="form-group ">
					<label for="zipcode" class="control-label col-lg-2">Zip
						Code </label> <label><div class="col-lg-10">
											<input class=" form-control" id="zipcode" name="zipcode" type="text" value= <%= request.getAttribute("zipcode") %> readonly/>
										</div></label>
				</div>
				<div class="form-group ">
					<label for="city" class="control-label col-lg-2">City </label> <label><div class="col-lg-10">
											<input class=" form-control" id="city" name="city" type="text" value= <%= request.getAttribute("city") %> readonly/>
										</div></label>
				</div>
				<div class="form-group ">
					<label for="country" class="control-label col-lg-2">Country</label>
					<label><div class="col-lg-10">
											<input class=" form-control" id="country" name="country" type="text" value="United States of America"readonly/>
										</div></label>
				</div>
				<div class="form-group ">
					<label for="email" class="control-label col-lg-2">Email ID
					</label> <label><div class="col-lg-10">
											<input class=" form-control" id="email" name="email" type="text" value= <%= request.getAttribute("email") %> readonly/>
										</div></label>
				</div>
				<div class="form-group ">
					<label for="dob" class="control-label col-lg-2">Date Of
						Birth </label> <label><div class="col-lg-10">
											<input class=" form-control" id="dob" name="dob" type="text" value= <%= request.getAttribute("dob") %> readonly/>
										</div></label>
				</div>
				<div class="form-group">
					<div align="right">
						<input type="image"  src="img/checkout.png"
							onmouseover="this.src='img/checkout.png'"
							onmouseout="this.src='img/checkoutunclicked.png'" width="400px"
							height="100px" />
					</div>
				</div>
			</form>

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
