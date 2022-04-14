<?php
include('header.php'); ?>
	
	<head>

</head>

	<!-- container -->
	<div class="container" style="min-height: 700px">

		<ol class="breadcrumb">
			<li><a href="/">Home</a></li>
			<li class="active">User access</li>
		</ol>

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-xs-12 maincontent">
				<header class="page-header">
					<h1 class="page-title">Sign in</h1>
				</header>
				
				<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
					<div class="panel panel-default">
						<div class="panel-body">
							<h3 class="thin text-center">Sign in to your account</h3>
							<h2 class="thin text-center"><?=$msg?></h2>
							<p class="text-center text-muted">Login to access to the Berylian Border Control reserved zone. <a href="/register">Register</a> if you are new to the service </p>
							<hr>
							
							<form method ='POST' name="myform">
								<div class="top-margin">
									<label>Username/Email <span class="text-danger">*</span></label>
									<input type="text" class="form-control" name="txtEmail">
								</div>
								<div class="top-margin">
									<label>Password <span class="text-danger">*</span></label>
									<input type="password" class="form-control" name ="txtPassword">
								</div>

								<hr>

								<div class="row">
									<div class="col-lg-8">
										<!--<b><a href="/change-password">Forgot password?</a></b>-->
									</div>
									<div class="col-lg-4 text-right">
										<button class="btn btn-action" type="submit" onclick="return checkForm();">Sign in</button>
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>
				
			</article>
			<!-- /Article -->

		</div>
	</div>	<!-- /container -->
	<script>
		function validateForm() {
  let x = document.forms["myForm"]["txtEmail"].value;
  if (x == "") {
    alert("Name must be filled out");
    return false;
  }
}
</Script>
<?php include('footer.php'); ?>