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

<title>Customer Details</title>

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


<script src="form1_validate.js" type="text/javascript"></script>

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
			<a href="index.html" class="logo"> <span class="lite"><img
					alt="" src="img/t15.jpg"></span></a>
			<!--logo end-->
			<div class="top-nav notification-row">
				<br>
				<!-- user login dropdown start-->
				<li class="dropdown"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> <span class="profile-ava">
							<img alt="" src="img/avatar1_small.jpg">
					</span> <span class="username"></span> <b class="caret"></b>
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
					<br>
					<h3 class="page-header">
						<i class="fa fa-files-o"></i> Customer Details
					</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="icon_document_alt"></i><a href="blank.html">plans</a></li>
						<li><i class="fa fa-files-o"></i>Customer Details</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<section class="panel">
						<header class="panel-heading"> Basic Customer Details </header>
						<div class="panel-body">
							<div class="form">
								<form class="form-validate form-horizontal " name="registration"
									id="register_form" method="get" action="">
									
									
									<div class="form-group ">
									<%String cust_type=(String)request.getAttribute("cust_type");
					
									if (cust_type.equals("new")) {%><div class="col-lg-10"><input hidden name="cust_id" value=<%= request.getAttribute("cust_id")%>><%} else {%>
									
									
									
										<label for="cust_id" class="control-label col-lg-2">Customer ID <span class="required">*</span>
										</label>
									<div class="col-lg-10">
									<input class=" form-control" id="cust_id" name="cust_id"
												value= <%= request.getAttribute("cust_id")%> type="text"  readonly/>
												<%} %>
												</div></div>
		
									
									<div class="form-group ">
										<label for="firstname" class="control-label col-lg-2">First
											name <span class="required">*</span><input hidden name="cust_type" value=<%= request.getAttribute("cust_type")%>>
										</label>
										<div class="col-lg-10">
										<%String firstname = (String)request.getAttribute("firstname"); 
												if(firstname==null){
												%>
							
											<input class=" form-control" id="firstname" name="firstname"
												type="text" />
												<%} else { %>
												<input class=" form-control" id="firstname" name="firstname"
												value= <%= request.getAttribute("firstname")%> type="text"  readonly/>
												<%} %>
										</div>
									</div>
									
									
									
									
									
									
									
									
									
									
									<div class="form-group ">
										<label for="lastname" class="control-label col-lg-2">Last
											name <span class="required">*</span>
										</label>
										<div class="col-lg-10">
										<%String lastname = (String)request.getAttribute("lastname"); 
												if(lastname==null){
												%>
							
											<input class=" form-control" id="lastname" name="lastname"
												type="text" />
												<%} else { %>
												<input class=" form-control" id="lastname" name="lastname"
												value= <%= request.getAttribute("lastname")%> type="text"  readonly/>
												<%} %>
										</div>
									</div>
									
									<div class="form-group ">
										<label for="dob" class="control-label col-lg-2">Date
											of Birth <span class="required">*</span>
										</label>
										<div class="col-lg-10">
										<%String dob = (String)request.getAttribute("dob"); 
												if(dob==null){
												%>
							
											<input class=" form-control" id="dob" name="dob"
												type="date" />
												<%} else { %>
												
                                                <textarea readonly style="overflow:hidden;resize:none" class=" form-control" rows="1" cols="100" id="dob" name="dob" ><%=request.getAttribute("dob") %></textarea>					
												<%} %>
										</div>
									</div>
									 
									<div class="form-group ">
										<label for="email" class="control-label col-lg-2">Email ID
											<span class="required">*</span>
										</label>
										<div class="col-lg-10">
										<%String email = (String)request.getAttribute("email"); 
												if(email==null){
												%>
							
											<input class=" form-control" id="city" name="email"
												type="text" />
												<%} else { %>
												
                                                <textarea style="overflow:hidden;resize:none" class=" form-control" rows="1" cols="100" id="email" name="email" ><%=request.getAttribute("email") %></textarea>					
												<%} %>
										</div>
									</div> 
									  
									 <div class="form-group ">
										<label for="contact_number" class="control-label col-lg-2">Contact Number <span class="required">*</span>
										</label>
										<div class="col-lg-10">
										<%String contact_number = (String)request.getAttribute("contact_number"); 
												if(contact_number==null){
												%>
							
											<input class=" form-control" id="contact_number" name="contact_number"
												type="text" />
												<%} else { %>
												
                                                <textarea style="overflow:hidden;resize:none" class=" form-control" rows="1" cols="100" id="contact_number" name="contact_number" ><%=request.getAttribute("contact_number") %></textarea>					
												<%} %>
										</div>	
									</div>
									  
									
										
										
										
									<div class="form-group ">
										<label for="streetname" class="control-label col-lg-2">Street
											name <span class="required">*</span>
										</label>
										<div class="col-lg-10">
										<%String streetname = (String)request.getAttribute("streetname"); 
												if(streetname==null){
												%>
							
											<input class=" form-control" id="streetname" name="streetname"
												type="text" />
												<%} else { %>
												
                                                <textarea style="overflow:hidden;resize:none" class=" form-control" rows="1" cols="100" id="streetname" name="streetname" ><%=request.getAttribute("streetname") %></textarea>					
												<%} %>
										</div>							
										</div>
									<div class="form-group ">
										<label for="city" class="control-label col-lg-2">City
											<span class="required">*</span>
										</label>
										<div class="col-lg-10">
										<%String city = (String)request.getAttribute("city"); 
												if(city==null){
												%>
							
											<input class=" form-control" id="city" name="city"
												type="text" />
												<%} else { %>
												
                                                <textarea style="overflow:hidden;resize:none" class=" form-control" rows="1" cols="100" id="city" name="city" ><%=request.getAttribute("city") %></textarea>					
												<%} %>
										</div>
									</div>
									
									<div class="form-group ">
										<label for="state" class="control-label col-lg-2">State
											<span class="required">*</span>
										</label>
										<div class="col-lg-10">
										<%String state = (String)request.getAttribute("state"); 
												if(state==null){
												%>
							
											<input class=" form-control" id="state" name="state"
												type="text" />
												<%} else { %>
												
                                                <textarea style="overflow:hidden;resize:none" class=" form-control" rows="1" cols="100" id="state" name="state" ><%=request.getAttribute("state") %></textarea>					
												<%} %>
										</div>
									</div>
									

									
									<div class="form-group ">
										<label for="zipcode" class="control-label col-lg-2">Zip
											code <span class="required">*</span>
										</label>
										<div class="col-lg-10">
										<%String zipcode = (String)request.getAttribute("zipcode"); 
												if(zipcode==null){
												%>
							
											<input class=" form-control" id="zipcode" name="zipcode"
												type="text" />
												<%} else { %>
												
                                                <textarea style="overflow:hidden;resize:none" class=" form-control" rows="1" cols="100" id="zipcode" name="zipcode" ><%=request.getAttribute("zipcode") %></textarea>					
												<%} %>
										</div>	
									</div>
									  
									
									<div class="form-group ">
										<label for="country" class="control-label col-lg-2">Country
											<span class="required">*</span>
										</label>
										<div class="col-lg-10">
											<input class=" form-control" id="country" name="country"
												type="text" value="United States of America" readonly />
										</div>
									</div>
									
									
									
									
									
									<div class="form-group ">
										<label for="ssn" class="control-label col-lg-2">Social
											Security Number <span class="required">*</span>
										</label>
										<div class="col-lg-10">
											<input class=" form-control" id="ssn" name="ssn" type="text" />
										</div>
									</div>
									<div class="form-group ">
										<label for="order_type" class="control-label col-lg-2">Order Type <span class="required"></span>
										</label>
										<div class="col-lg-10">
											 <textarea readonly style="overflow:hidden;resize:none" class=" form-control" rows="1" cols="100" id="order_type" name="order_type" ><%=request.getAttribute("order_type") %></textarea>
										</div>
									</div>
									<div class="form-group ">
										<label for="plan" class="control-label col-lg-2">Plan Selected <span class="required"></span>
										</label>
										<div class="col-lg-10">
											<textarea readonly style="overflow:hidden;resize:none" class=" form-control" rows="1" cols="100" id="plan" name="plan" ><%=request.getAttribute("plan") %></textarea>
										</div>
									</div>
									 
									 
									 
									 
									<div class="form-group">
										<div class="col-lg-offset-2 col-lg-10">
											<button class="btn btn-primary" type="BUTTON" id="check"
												onclick="validate()">Check</button>
										</div>
									</div>
									
									</div>
								</form>
							</div>
						</div>
					</section>
				</div>
			</div>
			<!-- page end-->

		</section>
		<!--main content end-->
	</section>
	<!-- container section end -->

	<!-- javascripts -->
	<!--  <script src="js/jquery.js"></script>-->
	<script src="js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>




</body>
</html>
