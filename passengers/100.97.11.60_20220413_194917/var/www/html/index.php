<?php
require('db.php');
$query = "SELECT * FROM feedback;";
$result = mysqli_query($con, $query);
?>

<!DOCTYPE HTML>
<!--
	Verti by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Berylia Health & Safety</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload homepage">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<header id="header" class="container">

						<!-- Logo -->
							<div id="logo">
								<h1><a href="index.html">Berylia</a></h1>
								<span>health & safety</span>
							</div>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li class="current"><a href="index.html">Welcome</a></li>
									
									<li><a href="login.php">Login</a></li>
									<li><a href="registration.php">Register</a></li>
									<!-- <li><a href="no-sidebar.html">No Sidebar</a></li> -->
								</ul>
							</nav>

					</header>
				</div>

			<!-- Banner -->
				<div id="banner-wrapper">
					<div id="banner" class="box container">
						<div class="row">
							<div class="col-7 col-12-medium">
								<h2>Passenger Locator Form</h2>
								<p>Travellers must fill Passenger Locator form before travelling.</p>
							</div>
							<div class="col-5 col-12-medium">
								<ul>
									<li><a href="login.php" class="button large icon solid fa-arrow-circle-right">Start</a></li>
									<li><a href="#" class="button alt large icon solid fa-question-circle">More info</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>

	
				<div id="features-wrapper">
					<div class="container">
						<div class="row">
						<?php
						if(mysqli_num_rows($result) > 0 ){
							while($f = mysqli_fetch_array($result))
							{
								echo '<div class="col-4 col-12-medium"><section class="box feature"><div class="inner"><header><h2>' . $f['name'] . "</h2></header><p>" . $f['feedback'] . "</p></div></section></div>";
							}
						}
						?>

							<!-- <div class="col-4 col-12-medium">
									<section class="box feature">
										<div class="inner">
											<header>
												<h2>Put something here</h2>
											</header>
											<p>Phasellus quam turpis, feugiat sit amet in, hendrerit in lectus. Praesent sed semper amet bibendum tristique fringilla.</p>
										</div>
									</section>
								</div> -->
						</div>
					</div>
				</div>

			<!-- Main -->
				<div id="main-wrapper">
					<div class="container">
						<div class="row gtr-200">
							<div class="col-4 col-12-medium">

								<!-- Sidebar -->
									<div id="sidebar">
										<section class="widget thumbnails">
											<h3>Feedback</h3>
											<div class="grid">
										
											</div>
											<!-- <a href="#" class="button icon fa-file-alt">More</a> -->
											<p>Submit your feedback</p>

										</section>
									</div>

							</div>
							<div class="col-8 col-12-medium imp-medium">

								<!-- Content -->
									<div id="content">
										<section class="last">
											<form action="feedback.php" method="POST">
												<h2>Write a feedback</h2>
										
        										<input type="text" class="login-input" name="name" placeholder="Name" autofocus="true"/>
        										<input type="text" class="login-input" name="feedback" placeholder="feedback"/>
												<button class="button icon solid fa-arrow-circle-right">Submit</button>
											</form>
										</section>
									</div>

							</div>
						</div>
					</div>
				</div>
							</div>
						</div>
						<div class="row">
							<div class="col-12">
								<div id="copyright">
									<ul class="menu">
										<li>&copy; Berylia. All rights reserved</li>
									</ul>
								</div>
							</div>
						</div>
					</footer>
				</div>

			</div>

		<!-- Scripts -->

			<script src="https://code.berylia.org/jquery/v3.5.1/jquery-3.5.1.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>