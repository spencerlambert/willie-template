<!DOCTYPE HTML>
<html>
<head>
	{include file='head.tpl'}
</head>
<body>
	{include file='overlays.tpl'}
	<div id="container">
		{include file='header.tpl'}
		{include file='header2.tpl'}		
		
		<div class="container">
			<div class="row">
					
				<div class="col-md-12">
					
				<!--	<h1>{$lang.aboutUs}</h1>	-->
					<div class="container" style="padding: 0;">
						<div class="row">
							
							<div class="col-md-9">
								{$content.body}
							</div>
							
							<div class="col-md-3">
                            <div class="abt-photo"><img class="img-responsive" src="../assets/images/about-bio-photo.jpg"></div>
                            <div class="fb-follow"><a href="https://www.facebook.com/willieholdmanphotographs" target="_blank"><img class="img-responsive" src="../assets/images/facebookfollow.png"></a></div>
                            <div class="galler-view"><a href="../gallery.php"><img class="img-responsive" src="../assets/images/viewgallerylink.png"></a></div>
                            <div class="prc-faq"><a href="#"><img class="img-responsive" src="../assets/images/viewpricing.png"></div></a>
								<p>
									<strong>{$config.settings.business_name}</strong><br>
									{$config.settings.business_address}<br>
									{if $config.settings.business_address2}{$config.settings.business_address2}<br>{/if}
									{$config.settings.business_city}, {$config.settings.business_state} {$config.settings.business_zip}<br>
									{$config.settings.business_country}
									{if $config.settings.contact}
										<br><br><a href="{linkto page="contact.php"}" class="colorLink">{$lang.contactUs}</a>
									{/if}
								</p>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		{include file='footer.tpl'}
    </div>
</body>
</html>