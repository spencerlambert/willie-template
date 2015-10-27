	<nav class="navbar navbar-inverse navbar-static-top">
		<div class="container"><!-- Container is centered in page -->
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="{linkto page="index.php"}" class="navbar-brand"><img src="{$mainLogo}" id="mainLogo" class="img-responsive" style="margin-top: -6px;"></a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav topNav">

					<li id="navHome"><a href="{linkto page="index.php"}">Home</a></li>
					<li id="navGalleries"><a href="{linkto page="gallery.php?mode=gallery"}">{$lang.galleries}</a></li>
					<li id="navAbout"><a href="{linkto page="about.php"}">About</a></li>
					<li id="navWorkshop"><a href="{linkto page="#"}">Workshop</a></li>
					<li id="navWorkshop"><a href="{linkto page="#"}">Product</a></li>
					{if $config.settings.news}<li id="navNews"><a href="http://www.willieholdman.com/blog/">{$lang.news}</a></li>{/if}


					{* Login Status & Name *}
					{if $config.settings.display_login}
						{if $loggedIn}
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">{$member.f_name} {$member.l_name}<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="{linkto page="members.php"}">{$lang.myAccount}</a></li>
									{if $lightboxSystem}<li><a href="{linkto page="lightboxes.php"}">{$lang.lightboxes}</a></li>{/if}
									<li id="navWorkshop"><a href="{linkto page="#"}">Contact</a></li>
									<li><a href="{linkto page="login.php?cmd=logout"}">{$lang.logout}</a></li>
								</ul>
							</li>
						{else}
							{if $lightboxSystem}<li><a href="{linkto page="lightboxes.php"}">{$lang.lightboxes}</a></li>{/if}
							<li id="navWorkshop"><a href="{linkto page="contact.php"}">Contact</a></li>
							<li><a href="{linkto page="login.php?jumpTo=members"}">{$lang.login}</a></li>
							<!--<li><a href="{linkto page="create.account.php?jumpTo=members"}">{$lang.createAccount}</a></li>-->
						{/if}
					{/if}

					{if $cartStatus}			
						<div class="nav navbar-right">
							<div id="headerCartBox">
								<div id="cartPreviewContainer">
									<div id="miniCartContainer"></div>
									<div style="float: left; position: relative;" class="viewCartLink"><p id="cartItemsCount">{$cartTotals.itemsInCart}</p><a href="{linkto page="cart.php"}"><img src="{$imgPath}/cart.icon.png" alt="{$lang.cart}"></a></div>
									<div style="float: left; display:{if $cartTotals.priceSubTotal or $cartTotals.creditsSubTotalPreview}block{else}none{/if};" id="cartPreview">
										<a href="{linkto page="cart.php"}" class="viewCartLink">
										<span id="cartPreviewPrice" style="{if !$currencySystem}display: none;{/if}">{$cartTotals.priceSubTotalPreview.display}</span><!-- with tax {$cartTotals.totalLocal.display}-->
										{if $creditSystem and $currencySystem} + {/if}
										<span id="cartPreviewCredits" style="{if !$creditSystem}display: none;{/if}">{$cartTotals.creditsSubTotalPreview} </span> {if $creditSystem}{$lang.credits}{/if}
										</a>
									</div>
								</div>
							</div>
						</div>
					{/if}

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



					
					{if $featuredTab}
						<li id="featuredNavButton" class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">{$lang.featuredItems}<b class="caret"></b></a>
							<ul class="dropdown-menu">
								{if $config.settings.featuredpage}<li id="featuredSubnavMedia"><a href="{linkto page="gallery.php?mode=featured-media&page=1"}">{$lang.mediaNav}</a></li>{/if}
								{if $config.settings.printpage}<li id="featuredSubnavPrints"><a href="{linkto page="featured.php?mode=prints"}">{$lang.prints}</a></li>{/if}
								{if $config.settings.prodpage}<li id="featuredSubnavProducts"><a href="{linkto page="featured.php?mode=products"}">{$lang.products}</a></li>{/if}
								<!--<li class="divider"></li>
								<li class="dropdown-header">Nav header</li>-->
								{if $config.settings.packpage}<li id="featuredSubnavPackages"><a href="{linkto page="featured.php?mode=packages"}">{$lang.packages}</a></li>{/if}
								{if $config.settings.collpage}<li id="featuredSubnavCollections"><a href="{linkto page="featured.php?mode=collections"}">{$lang.collections}</a></li>{/if}
								{if $config.settings.subpage and $config.settings.subscriptions}<li id="featuredSubnavSubscriptions"><a href="{linkto page="featured.php?mode=subscriptions"}">{$lang.subscriptions}</a></li>{/if}
								{if $config.settings.creditpage}<li id="featuredSubnavCredits"><a href="{linkto page="featured.php?mode=credits"}">{$lang.credits}</a></li>{/if}
							</ul>
						</li>				
					{/if}
					
					{if $config.settings.newestpage}<li id="navNewestMedia"><a href="{linkto page="gallery.php?mode=newest-media&page=1"}">{$lang.newestMedia}</a></li>{/if}
					{if $config.settings.popularpage}<li id="navPopularMedia"><a href="{linkto page="gallery.php?mode=popular-media&page=1"}">{$lang.popularMedia}</a></li>{/if}
					{if addon('contr') && {$contribLink} == 1}<li id="navContributors"><a href="{linkto page="contributors.php"}">{$lang.contributors}</a></li>{/if}
					{if $config.settings.promopage}<li id="navPromotions"><a href="{linkto page="promotions.php"}">{$lang.promotions}</a></li>{/if}
					
				</li>
					
				</ul>
			</div>
		</div>
	</nav>