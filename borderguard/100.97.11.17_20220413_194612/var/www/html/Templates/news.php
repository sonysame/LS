<?php

include('header.php');
?>
<header>
<link rel="stylesheet" href="https://code.berylia.org/css/news_slider.css">
	<script src="https://code.berylia.org/jquery/v3.5.1/jquery-3.5.1.js"></script>
</header>
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
<div class='container cont' id='newsBlock'>
<ol class="breadcrumb">
				<li><a href="/">Home</a></li>
				<li><a class='active' href="/news" >news</a></li>
				
	</ol>

    <div class="hedding"><h2>Latest News</h2></div>
        <div id="bootstrapNewsSlider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
     
                <?=$code?>
        </div>
        <?=$lista?>
        <div class="carousel-controls">
            <a class="left carousel-control" href="#bootstrapNewsSlider" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#bootstrapNewsSlider" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
        </div>
    </div>
</div>


</div>
<?php include('footer.php'); ?>
