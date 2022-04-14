<?php
include('header.php'); ?>
	<header id="head" class="secondary"></header>

	<!-- container -->

	<div class="container world">

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
							<h3 class="thin text-center">Change your password</h3>
							<p class="text-center text-muted">Login function is used to access to the Berylian Border Control reserved zone. If you forgot your password fill the field. <br>
						You will receive an email with the link to reset your password</p>
							<hr>
							
							<form method ='POST'>
								<div class="top-margin">
									<label>Username/Email <span class="text-danger">*</span></label>
									<input type="text" class="form-control" name="txtEmail">
								</div>
								

								<hr>

								<div class="row">
									
									<div class="col-lg-4 text-right">
										<button class="btn btn-action" type="submit">Reset password</button>
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
	
	<?php include('footer.php'); ?>