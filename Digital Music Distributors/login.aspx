<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" %>
<!DOCTYPE HTML>
<html>
	<head>
		<title>DMD Login</title>
		<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">
		<!-- jQuery -->
		<script src="js/jquery.min.js"></script>
		<!-- jQuery Easing -->
		<script src="js/jquery.easing.1.3.js"></script>
		<!-- Waypoints -->
		<script src="js/jquery.waypoints.min.js"></script>
		<!-- Modernizr JS -->
		<script src="js/modernizr-2.6.2.min.js"></script>
		<!-- Main -->
		<script src="js/main.js"></script>
		<!-- Animate.css -->
		<link rel="stylesheet" href="css/animate.css">
		<!-- Bootstrap  -->
		<link rel="stylesheet" href="css/bootstrap.css">
		<!-- Theme style  -->
		<link rel="stylesheet" href="css/style.css">

		<link rel="shortcut icon" href="images/icon.png">
	</head>

	<body>
		<div class="gtco-loader"></div>
		<header id="gtco-header" class="gtco-cover gtco-cover-md" role="banner" style="background-image: url(images/img_bg_2.jpg)">
			<div class="overlay"></div>
			<div class="gtco-container">
				<div class="row row-mt-15em">
					<div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
						<h1 id="name">Digital Music Distributors</h1>
						<h1><img src="images/icon.png"></h1>
					</div>
					<div class="col-md-4 col-md-push-1 animate-box" data-animate-effect="fadeInRight">
						<div class="form-wrap">
							<div class="tab-content">
								<h3>Login</h3>
								<div class="row form-group">
									<div class="col-md-12">
										<label for="email">Email address</label>
										<input type="text" id="email" class="form-control">
									</div>
								</div>
								<div class="row form-group">
									<div class="col-md-12">
										<label for="password">Password</label>
										<input type="text" id="password" class="form-control">
										<button id="forgotPassword" onclick="forgot()" class="onlytext">&#160;Forgot your password?</button>
									</div>
									<div id="newText" class="col-md-12">That sucks.</div>
								</div>
								<div class="row form-group">
									<div class="col-md-12">
										New to DMD?<button onclick="showModal()" class="onlytext">&#160;&#160;Create an account.</button>
									</div>
								</div>
								<div class="row form-group">
									<div class="col-md-12">
                                        <form action="index.aspx">
										<input type="submit" class="btn btn-primary btn-block" value="Log In">
									    </form>
                                    </div>
								</div>
							</div>
						</div>
					</div>
				</div>						
			</div>
		</header>

		<div id="newAccountModal" class="modal">
		  	<div class="modal-content animate-box" data-animate-effect="fadeInUp">
		    	<span onclick="closeModal()" class="close">&times;</span>
				<div class="tab-content">
					<h3>Account Creation</h3>
					<div class="row form-group">
						<div class="col-md-12">
							<label for="email">Email address</label>
							<input type="text" id="createEmail" class="form-control">
						</div>
					</div>
					<!-- <div class="row form-group"> -->
						<div class="name">
							<label for="firstName">First Name</label>
							<input type="text" id="firstName" class="form-control">
							<label for="lastName">Last Name</label>
							<input type="text" id="lastName" class="form-control">
						</div>
					<!-- </div>		 -->
					<div class="row form-group">
						<div class="col-md-12">
							<label for="username">Username</label>
							<input type="text" id="username" class="form-control">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-12">
							<label for="password">Password</label>
							<input type="text" id="createPassword" class="form-control">
						</div>
					</div>
					<div class="row form-group">
						<div class="col-md-12">
							<label for="confirmPassword">Confirm Password</label>
							<input type="text" id="confirmPassword" class="form-control">
						</div>
					</div>										
					<div class="row form-group">
						<div class="col-md-12">
							<input type="submit" class="btn btn-primary btn-block" value="Register">
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>

</html>

