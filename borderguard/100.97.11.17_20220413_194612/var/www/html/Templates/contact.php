<?php
include('header.php');
?>

	<!-- container -->
	<div class="container cont">

		<ol class="breadcrumb">
			<li><a href="/">Home</a></li>
			<li class="active">Contact us</li>
		</ol>

		<div class="row">
			
			<!-- Article main content -->
			<article class="col-sm-9 maincontent">
				<header class="page-header">
					<h1 class="page-title">Contact us</h1>
				</header>
				
				<p>
					Need help? We want you to find what you're looking for. Get in touch with us. We will reply to you as soon as possible.
				</p>
				<p><h2><?=$msg?></h2></p>
				<br>
					<form method='POST'>

						<div class="row">
							<div class ="col-sm-12" style="padding-bottom:10px">
								<select name='sltWhat' class='form-control'>
									<option value='-1'>Select what you need...</option>
									<option value='fix'>Get an appointment</option>
									<option value='General'>General Info</option>
									<option value='warning'>Possible threat</option>
									<option value='reset'>Reset my password (we will use your email as ID)</option>
								</select>
							</div>
							<div class="col-sm-4">
								<input class="form-control" type="text" placeholder="Name" name='Name'>
							</div>
							<div class="col-sm-4">
								<input class="form-control" type="text" placeholder="Email" id="email" name='Email'>
							</div>
							<div class="col-sm-4">
								<input class="form-control" type="text" placeholder="Phone" name='Phone'>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-sm-12">
								<textarea placeholder="Type your message here..." class="form-control" rows="9" name='message'></textarea>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-sm-6">
								
							</div>
							<div class="col-sm-6 text-right">
								<input class="btn btn-action" type="submit" value="Send message">
							</div>
						</div>
					</form>

			</article>
			
			</div>
			<div class ="row">
			<div class="col-xs-12"><h2 class="no-margin">Need further​&nbsp;assistance?<br></h2><div class="row"><div class="col-sm-4"><h3> 
               <a class="contact-icon-telephone" href="/contact/telephone" target="_blank">Telephone</a> </h3><p>If  you have a question about travel or trade,  including bringing goods in and out of Australia you can call us Monday to Friday from  9am to 5pm AEST.</p><p> 
               <a href="/contact/telephone" target="_blank">Call us</a> </p></div><div class="col-sm-4"><h3> 
              <h3>Find an office</h3><p>If you need to lodge  cargo clearance paperwork, details&nbsp;about&nbsp;our offices in Berylia. Due to Covid-19 situation in order to visit our officies you need to get an appointment</p><p> 
              </p></div><div class="col-sm-4"><h3> 
               </div></div></div>

				</div>
			</div>
	</div>	<!-- /container -->
	
	<?php include('footer.php'); ?>