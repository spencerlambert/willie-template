<!-- 
Based on this tutorial
http://www.sitepoint.com/understanding-twitter-bootstrap-3/
-->
<!DOCTYPE HTML>
<html>
	<head>
		{include file='head.tpl'}
		<script type="text/javascript" src="{$baseURL}/assets/javascript/g-map.js"></script>
		<script type="text/javascript" src="{$baseURL}/assets/javascript/gallery.js"></script>
	</head>
	<body>
		{include file='overlays.tpl'}		
		{include file='header.tpl'}
		
		{if $config.settings.hpfeaturedmedia and $featuredMedia}
		<!-- Carousel
		================================================== -->
		<div style="margin-top:22px !important;" id="myCarousel" class="carousel slide">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				{foreach $featuredMedia as $media}
					<li data-target="#myCarousel" data-slide-to="{$media@iteration - 1}" class="{if $media@first}active{/if}"></li>
				{/foreach}
			</ol>
		</div><!-- /.carousel -->
		{/if}
	

		{include file='header2.tpl'}
	
		<div class="container">
			<div class="row">
			<div class="col-md-9">
            <h1>Park City Gallery</h1>
            <p>
            Willie Holdman Photographs<br>580 Main Street<br>Park City, Utah 84060<br>435-658-0800
            </p>
            <p>
            Our new gallery is now open on Main Street in Park City, Utah. It features a wide selection of the surronding area and all of Utah. The Gallery is usually open from 11am to 9pm daily or by appointment. Come and see Utah all framed up! If you think the images look good on this web site, wait until you see them in person!
            </p>
            <p>
            The gallery also features Blown Hot Glass by Utah artist Treavor Holdman as well as hand made jewelry by Sara Holdman.
            </p><div class="clearfix"></div>
            <div id="map" class="map-responsive l-map">
            </div>
            </div>	
            <div class="col-lg-3 gall">
            <div class="sd_img" style="margin-top:32px !important;">
            <img src="../assets/images/whp-gallery-01-small.jpg">
            </div>
            <div class="sd_img">
            <img src="../assets/images/whp-gallery-02-small.jpg">
            </div>
            <div class="sd_img">
            <img src="../assets/images/whp-gallery-03-small.jpg">
            </div>
            <div class="sd_img">
            <img src="../assets/images/whp-gallery-04-small.jpg">
            </div>
            </div>
				
		</div>
		{include file='footer.tpl'}
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB5Rmiu4LqGFAamL75DHy5YNnwZ1wiBJlg&signed_in=true&callback=initMap"></script>
	</body>
</html>
