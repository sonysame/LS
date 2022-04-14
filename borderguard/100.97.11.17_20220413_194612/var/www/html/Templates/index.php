<?php
    include('header.php');

    use App\Custom\Controllers\NewsController;

    ?>
	<div class='container'></div>
<div class='find' style="padding-top: 5px;padding-right:10px"><form method='POST' action='/search'><input type='text' name='keys' size=30><input type='submit' name='search' value='Search'></form></div>

<script>
    $(document).ready(function(){
    
	var pakainfoEvent = false;
	$('#bootstrapNewsSlider').carousel({
		interval:   4000	
	}).on('click', '.list-group li', function() {
			pakainfoEvent = true;
			$('.list-group li').removeClass('active');
			$(this).addClass('active');		
	}).on('slid.bs.carousel', function(e) {
		if(!pakainfoEvent) {
			var count = $('.list-group').children().length -1;
			var current = $('.list-group li.active');
			current.removeClass('active').next().addClass('active');
			var id = parseInt(current.data('slide-to'));
			if(count == id) {
				$('.list-group li').first().addClass('active');	
			}
		}
		pakainfoEvent = false;
	});
})

$(window).load(function() {
    var boxheight = $('#bootstrapNewsSlider .carousel-inner').innerHeight();
    var itemlength = $('#bootstrapNewsSlider .item').length;
    var triggerheight = Math.round(boxheight/itemlength+1);
	$('#bootstrapNewsSlider .list-group-item').outerHeight(triggerheight);
});
</Script>		


	<!-- Highlights - jumbotron -->
	<div class="jumbotron">
		<div class="container world">
			<link rel="stylesheet" href="../public/assets/css/main.css">
			<h3 class="text-center thin">In Evidence</h3>
			
			<div class="row">
				<div class="col-md-4 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-cogs fa-5"></i><a href='/travelling-documents'>Travelling documents</a></h4></div>
					<div class="h-body text-center">
						<p>Which documents are required for travel to Berylia from both EU states and external states.</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-flash fa-5"></i><a href='/covid/recomandation'>Covid-19 situation</a></h4></div>
					<div class="h-body text-center">
						<p>A detailed situation, updated daily on covid spreading in EU. It will help you to setup you travel securely </p>
					</div>
				</div>
				
				<div class="col-md-4 col-sm-6 highlight">
					<div class="h-caption"><h4><i class="fa fa-smile-o fa-5"></i><a href="/contact">Support Us</a></h4></div>
					<div class="h-body text-center">
						<p>We provide a service for the Nation and for all the Berylians. If you know or have learned of a possible threat for the Country <strong>it's your duty</strong>
					to let us <a href="/contact">know about it!</a> </p>
					</div>
				</div>
			</div> <!-- /row  -->
		
		</div>
	</div>
	<!-- /Highlights -->
	<div class='container' id='news_results'>
		<?php
        if (isset($news_result)) {
            $news_result;
        }
        ?>
	</div>

	<!-- container -->
	<div class="container" >
		<div class ='row'>
			<!-- news div -->
			<div id='_news'>
				<p id='_news'></p>

		<script>
			

var request = new XMLHttpRequest();
const parser = new DOMParser();
request.open('GET', '/news', true);

request.onload = function() {
  if (this.status >= 200 && this.status < 400) {
    // Success!
    var resp = this.response;
	parsedData = parser.parseFromString(resp,"text/html");
	data = parsedData.body.querySelector('#newsBlock').innerHTML;
	
	document.querySelector('#_news').innerHTML=data;
  } else {
    // We reached our target server, but it returned an error
	

  }
};

request.onerror = function() {
  // There was a connection error of some sort
  
};

request.send();


</script>	
</div>

		</div>


			
		<h2 class="text-center top-space">Frequently Asked Questions</h2>
		<br>

		<div class="row">
			<!--<div class="has-bg-img">-->


				<div class="col-sm-6">
					<h3><a href='/plan-a-trip'>Plan a Trip</a></h3>
					<p>Click here if you are a private individual and want to register your next trip, regardless of the reason for which you travel (work, tourism, etc.), alone or with friends and relatives.
					If you are a company, an entity, an institute, a civil society organization and the like or make registrations on behalf of companies,
					entities, institutes, civil society organizations, please Contact Us </p>
				</div>
				<div class="col-sm-6">
					<h3><a href='/appointment'>Get an appointment</A></h3>
					<p>
					If you need an appointment for the handling of paperwork, you can make it by contacting us by email and indicating the most convenient period for you. we will apply in order to satisfy your necessity.
					</p>
				</div>
			
		</div> <!-- /row -->


		<div class="row">
			<div class="col-sm-6">
				<h3><a href='/covid/info?list'>Travelling information</a></h3>
				<p>
					List of countries with regolamentation for each of them.
				</p>
			</div>
			<div class="col-sm-6">
				<h3>About wearing masks</h3>
				<p>Wearing a mask over your nose and mouth is required on planes, buses, trains, and other forms of public transportation traveling into, within, or out of the Berylian territory. transportation hubs such as airports and train stations. Travelers are not required to wear a mask in outdoor areas of a conveyance (like on open deck areas of a ferry or the uncovered top deck of a bus).</p>
			</div>
			<!--<img class="bg-i8mg" src="../public/img/background.PNG">-->
			
		</div> <!-- /row -->

		<div class="jumbotron top-space">
			<h3>Do <strong>NOT</strong> travel if…</h3><h4>

You have been exposed to COVID-19 unless you are fully vaccinated or recovered from COVID-19 in the past 90 days.
You are sick.
You tested positive for COVID-19 and haven’t ended isolation (even if you are fully vaccinated).
You are waiting for results of a COVID-19 test. If your test comes back positive while you are at your destination, you will need to isolate and postpone your return until it’s safe for you to end isolation. Your travel companions may need to self-quarantine.

</h4>
     		<p class="text-right"><a class="btn btn-primary btn-large" href='/covid/recomandation'>Learn more »</a></p>
  		</div>
					</div>

</div>	<!-- /container -->
	
	<!-- Social links. @TODO: replace by link/instructions in template -->
	<section id="social">
		<div class="container">
			<div class="wrapper clearfix">
				<!-- AddThis Button BEGIN -->
				<div class="addthis_toolbox addthis_default_style">
				<a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
				<a class="addthis_button_tweet"></a>
				<a class="addthis_button_linkedin_counter"></a>
				<a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
				</div>
				<!-- AddThis Button END -->
			</div>
		</div>
	</section>
	<!-- /social links -->

	<?php include('footer.php'); ?>