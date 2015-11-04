<!-- 
Based on this tutorial
http://www.sitepoint.com/understanding-twitter-bootstrap-3/
-->
<!DOCTYPE HTML>
<html>
	<head>
		{include file='head.tpl'}
		
		<script>
			$(function()
			{
				$('#myCarousel').carousel({
					interval: {$config.settings.hpf_inverval}
				});
			});
		</script>
		<script type="text/javascript" src="{$baseURL}/assets/javascript/gallery.js"></script>
	</head>
	<body>
		{include file='overlays.tpl'}		
		{include file='header.tpl'}
		
		{if $config.settings.hpfeaturedmedia and $featuredMedia}
		<!-- Carousel
		================================================== -->
		<div id="myCarousel" class="carousel slide">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				{foreach $featuredMedia as $media}
					<li data-target="#myCarousel" data-slide-to="{$media@iteration - 1}" class="{if $media@first}active{/if}"></li>
				{/foreach}
			</ol>
			<div class="carousel-inner">
				{foreach $featuredMedia as $media}
				<div class="item {if $media@first}active{/if}">
					<img src="image.php?mediaID={$media.encryptedID}=&type=featured&folderID={$media.encryptedFID}&size={$config.settings.hpf_width}&crop={$config.settings.hpf_crop_to}" encMediaID="{$media.encryptedID}" href="{$media.linkto}" alt="{$media.title.value}">
					<div class="container">
						<div class="carousel-caption">
							<h1>{$media.title.value}</h1>
							<p class="hidden-xs">{$media.description.value}</p>
							<p><a class="btn btn-large btn-primary" href="{$media.linkto}">{$lang.details}</a></p>
						</div>
					</div>
				</div>
				{/foreach}
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
		</div><!-- /.carousel -->
		{/if}
	

		{include file='header2.tpl'}
	
		<div class="container">
			<div class="row">
				
				<div class="col-md-12">
					<div id="homepageJumbotron">
						<div>
							<div class="col-md-12 gallery"><a href="http://www.willieholdman.com/products/Utah-landscape-park-city-photo-gallery.asp"><img class="img-responsive" src="../assets/images/gallery.jpg"></a></div>
                            <div class="col-md-12 gallery-split"><a href="http://www.willieholdman.com/products/Utah-landscape-park-city-photo-gallery.asp"><img class="img-responsive" src="../assets/images/gallery-split-1.jpg"></a></div>
                            <div class="col-md-12 gallery-split"><a href="http://www.willieholdman.com/products/Utah-landscape-park-city-photo-gallery.asp"><img class="img-responsive" src="../assets/images/gallery-split-2.jpg"></a></div>
                            <div class="clearfix"></div>
                            <div class="bimgs">
                            <div class="col-lg-4 bimg-main"><a href="http://www.willieholdman.com/products/Landscape-Greeting-Cards.asp"><img class="img-responsive" src="../assets/images/gift-card.png"></a></div>
                            <div class="col-lg-4 bimg-main"><a href="http://www.willieholdman.com/products/Landscape-Photography-Books.asp"><img class="img-responsive" src="../assets/images/book-mountains-to-deserts-front.jpg"></a></div>
                            <div class="col-lg-4 bimg-main"><a href="http://www.willieholdman.com/workshop/"><img class="img-responsive" src="../assets/images/workshop-featured.png"></a></div>
                            </div><div class="clearfix"></div>
                            <div class="col-md-12"><p class="wlcm"><h1 class="wl">Welcome to WillieHoldman.com featuring outdoor nature landscape photography by Photographer Willie Holdman.</h1></p></div>
						</div>
					</div>				
					
					{* Featured Galleries Area *}
					{if $subGalleriesData}
						<hr>
						<h3>{$lang.featuredGalleries}</h3>						
						<div id="galleryListContainer">
							{foreach $subGalleriesData as $subGallery}
								<div class="galleryContainer" style="width: {$config.settings.gallery_thumb_size}px">
									<div class="galleryDetailsContainer" style="width: {$config.settings.gallery_thumb_size}px; {if $galleriesData.$subGallery.galleryIcon}vertical-align: top{/if}">
										{if $galleriesData.$subGallery.galleryIcon}<p class="galleryIconContainer" style="min-width: {$galleriesData.$subGallery.galleryIcon.width}px; min-height: {$galleriesData.$subGallery.galleryIcon.height + 5}px;"><a href="{$galleriesData.$subGallery.linkto}"><img src="{$baseURL}/{$galleriesData.$subGallery.galleryIcon.imgSrc}"></a></p>{/if}{*old {productShot itemID=$subGallery itemType=gallery photoID=$galleriesData.$subGallery.galleryIcon.ip_id size=$config.settings.gallery_thumb_size} *}
										<p class="galleryDetails">{if $galleriesData.$subGallery.password}<img src="{$imgPath}/lock.png" class="lock">{/if}<a href="{$galleriesData.$subGallery.linkto}">{$galleriesData.$subGallery.name}</a>{if $config.settings.gallery_count}{if $galleriesData.$subGallery.gallery_count > 0 or $config.ShowZeroCounts}&nbsp;<span class="galleryMediaCount">({$galleriesData.$subGallery.gallery_count})</span>{/if}{/if}</p>
									</div>
									<!--gi: {$galleriesData.$subGallery.galleryIcon.imgSrc}-->
								</div>
							{/foreach}
						</div>
					{/if}
					
					{* Newest Media Area *}
					{if $newestMediaRows}				
					<div class="clearfix">
						<hr>
						<h3>{if $config.settings.newestpage}<a href="{linkto page='gallery.php?mode=newest-media&page=1'}">{$lang.newestMedia}</a>{else}{$lang.newestMedia}{/if}{if $config.settings.rss_newest} <a href="{linkto page='rss.php?mode=newestMedia'}" class="btn btn-xxs btn-warning">{$lang.rss}</a>{/if}</h3>
						<div>
							{foreach $newestMedia as $media}
								{include file='media.container.tpl'}
							{/foreach}
						</div>
					</div>
					{/if}
					
					
					{* Popular Media Area *}
					{if $popularMediaRows}
					<div class="clearfix">
						<hr>
						<h3>{if $config.settings.popularpage}<a href="{linkto page='gallery.php?mode=popular-media&page=1'}">{$lang.popularMedia}</a>{else}{$lang.popularMedia}{/if}{if $config.settings.rss_popular} <a href="{linkto page='rss.php?mode=popularMedia'}" class="btn btn-xxs btn-warning">{$lang.rss}</a>{/if}</h3>
						<div>
							{foreach $popularMedia as $media}
								{include file='media.container.tpl'}
							{/foreach}
						</div>
					</div>
					{/if}
					
					{* Random Media Area *}
					{if $randomMediaRows}
					<div class="clearfix">
						<hr>
						<h3>{$lang.randomMedia}</h3>						
						<div>
							{foreach $randomMedia as $media}
								{include file='media.container.tpl'}
							{/foreach}
						</div>
					</div>
					{/if}
					
				</div>
			</div>
		</div>
		{include file='footer.tpl'}
	</body>
</html>
