<!DOCTYPE HTML>
<html>
<head>
	{include file='head.tpl'}
	<script type="text/javascript" src="{$baseURL}/assets/javascript/gallery.js"></script>
</head>
<body>
	{include file='overlays.tpl'}
	<div id="container">
		{include file='header.tpl'}
		{include file='header2.tpl'}		
		<div class="container">					
			<form action="{linkto page="{$mediaPaging.pageName}&id={$id}&{$mediaPaging.pageVar}=1"}" method="post" id="galleryForm">
			<input type="hidden" name="postGalleryForm" id="postGalleryForm" value="1">
		<div class="row">
        <div class="col-md-4">
			<h1>{if $contributor.avatar}<a href="{$contributor.linkto}"><img src="{memberAvatar memID=$contributor.mem_id size=40 crop=40 hcrop=40}" class="h1PhotoHeader"></a>{/if} {foreach $crumbs as $key => $crumb}<a href="{$galleriesData.$key.linkto}">{$galleriesData.$key.name}</a> {if !$crumb@last} &raquo; {/if}{/foreach} {if $config.settings.rss_galleries and $currentGallery.gallery_id != 0} <a href="{linkto page="rss.php?mode=gallery&id={$galleryID}"}" class="btn btn-xxs btn-warning">{$lang.rss}</a>{/if}</h1>
            </div>


	{if $smarty.server.REQUEST_URI == '/gallery.php?mode=gallery'}
				<div class="nav navbar-right col-md-3">
					<form role="search" action="{linkto page="search.php"}" method="get" id="searchFormTest" class="navbar-form">			
					<input type="hidden" name="clearSearch" value="true">
						<div class="input-group">					
							<input type="text" class="form-control" placeholder="{$lang.enterKeywords}" name="searchPhrase" id="searchPhrase">
							<div class="input-group-btn">
								<button class="btn btn-info">
									<span class="glyphicon glyphicon-search"></span>
								</button>
							</div>					
						</div>
						<div style="margin-top: 6px;">
							{if $currentGallery.gallery_id}<input type="checkbox" name="galleries" id="searchCurrentGallery" value="{$currentGallery.gallery_id}" checked="checked"><label for="searchCurrentGallery">{$lang.curGalleryOnly}</label>&nbsp;&nbsp;{/if}
							<!--<a href="{linkto page='search.php'}">{$lang.advancedSearch}</a>-->
							{* Event Search Link *}
							{if $config.settings.esearch}
								<a href="{linkto page="esearch.php"}">{$lang.eventSearch}</a>
							{/if}
						</div>
					</form>		
				</div>		
	{/if}
</div>

			<hr>
			{if $currentGallery.description}<p {if $currentGallery.event_details}style="margin-bottom: 10px;"{/if}>{$currentGallery.description}</p>{/if}

			{if $currentGallery.event_details}
				<ul class="galleryEventDetails">
					{if $currentGallery.client_name}<li class="eventDetailsTitle">{$lang.clientName}:</li><li>{$currentGallery.client_name}</li>{/if}
					{if $currentGallery.event_code}<li class="eventDetailsTitle">{$lang.eventCode}:</li><li>{$currentGallery.event_code}</li>{/if}
					{if $currentGallery.event_date}<li class="eventDetailsTitle">{$lang.eventDate}:</li><li>{$currentGallery.event_date_display}</li>{/if}
					{if $currentGallery.event_location}<li class="eventDetailsTitle">{$lang.eventLocation}:</li><li>{$currentGallery.event_location}</li>{/if}
				</ul>
			{/if}
			
			{if $subGalleriesData}
				{if $galleryPaging.totalResults > $config.settings.gallery_perpage}{include file="paging.tpl" paging=$galleryPaging}{/if}
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
				{if $galleryPaging.totalResults > $config.settings.gallery_perpage}
					{include file="paging.tpl" paging=$galleryPaging}
					{if $mediaRows}<hr style="margin-top: 15px;">{/if}
				{/if}
			{/if}
			
			{if $printRows}
				<div class="galleryFeaturedItemsContainer">
					<h3>{$lang.prints}</h3>
					{foreach $prints as $print}
						<div class="featuredPageItem galleryFeaturedPrints workboxLinkAttach">
							<h2><a href="{$print.linkto}" class="workboxLink">{$print.name}</a></h2>
							<p class="description">{if $print.photo}<img src="{productShot itemID=$print.print_id itemType=print photoID=$print.photo.id size=70}">{/if}{$print.description|truncate:360}</p>
							<p class="moreInfo">{if $print.price}<span class="price">{$print.price.display}</span>{/if}{if $config.settings.cart == 3} {$lang.priceCreditSep} {/if}{if $print.credits}<span class="price">{$print.credits} <sup>{$lang.mediaLabelCredits}</sup></span>{/if}</p>
						</div>
					{/foreach}
				</div>
			{/if}
			
			{if $productRows}
				<div class="galleryFeaturedItemsContainer">
					<h3>{$lang.products}</h3>
					{foreach $products as $product}
						<div class="featuredPageItem galleryFeaturedProducts workboxLinkAttach">
							<h2><a href="{$product.linkto}" class="workboxLink">{$product.name}</a></h2>
							<p class="description">{if $product.photo}<img src="{productShot itemID=$product.prod_id itemType=prod photoID=$product.photo.id size=70}">{/if}{$product.description|truncate:360}</p>
							<p class="moreInfo">{if $product.price}<span class="price">{$product.price.display}</span>{/if}{if $config.settings.cart == 3} {$lang.priceCreditSep} {/if}{if $product.credits}<span class="price">{$product.credits} <sup>{$lang.mediaLabelCredits}</sup></span>{/if}</p>
						</div>
					{/foreach}
				</div>
			{/if}
			
			{if $packageRows}
				<div class="galleryFeaturedItemsContainer">
					<h3>{$lang.packages}</h3>
					{foreach $packages as $package}
						<div class="featuredPageItem galleryFeaturedPackages workboxLinkAttach">
							<h2><a href="{$package.linkto}" class="workboxLink">{$package.name}</a></h2>
							<p class="description">{if $package.photo}<img src="{productShot itemID=$package.pack_id itemType=pack photoID=$package.photo.id size=125}">{/if}{$package.description|truncate:360}</p>
							<p class="moreInfo">{if $package.price}<span class="price">{$package.price.display}</span>{/if}{if $config.settings.cart == 3} {$lang.priceCreditSep} {/if}{if $package.credits}<span class="price">{$package.credits} <sup>{$lang.mediaLabelCredits}</sup></span>{/if}</p>
						</div>
					{/foreach}
				</div>
			{/if}
			
			{if $collectionRows}
				<div class="galleryFeaturedItemsContainer">
					<h3>{$lang.collections}</h3>
					{foreach $collections as $collection}
						<div class="featuredPageItem galleryFeaturedCollections workboxLinkAttach">
							<h2><a href="{$collection.linkto}" class="workboxLink">{$collection.name}</a></h2>
							<p class="description">{if $collection.photo}<img src="{productShot itemID=$collection.coll_id itemType=coll photoID=$collection.photo.id size=125}">{/if}{$collection.description|truncate:360}</p>
							<p class="moreInfo">{if $collection.price}<span class="price">{$collection.price.display}</span>{/if}{if $config.settings.cart == 3} {$lang.priceCreditSep} {/if}{if $collection.credits}<span class="price">{$collection.credits} <sup>{$lang.mediaLabelCredits}</sup></span>{/if}</p>
						</div>
					{/foreach}
				</div>
			{/if}
				
			{if $mediaRows}
				<div>
					<p class="sortByContainer">
						{$lang.sortBy}
						<select name="gallerySortBy" id="gallerySortBy">
							{html_options options=$gallerySortByOptions selected=$selectedGallerySortBy}
						</select>
						<select name="gallerySortType" id="gallerySortType">
							{html_options options=$gallerySortByTypeOptions selected=$selectedGallerySortType}
						</select>
					</p>
					
					{include file="paging.tpl" paging=$mediaPaging}
					<div id="mediaListContainer">
						{foreach $mediaArray as $media}
							{include file='media.container.tpl'}
						{/foreach}
					</div>
					{include file="paging.tpl" paging=$mediaPaging}
				</div>
			{/if}
			
			{if $currentGallery.gallery_id != 0}
				{if !$subGalleriesData and !$mediaRows}<br><p class="notice">{$lang.noMedia}</p>{/if}
			{/if}
			
			</form>
			
		</div>
		{include file='footer.tpl'}
    </div>
</body>
</html>
