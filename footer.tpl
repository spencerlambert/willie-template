<footer>
	{if $contentBlocks.customBlockFooter}
		<div>{$contentBlocks.customBlockFooter.content}</div>
	{/if}
	<div class="container">
		<div class="row">
			<!--
			<div class="col-md-3">
				{if addon('rss')}
				<ul>
					<li><strong>{$lang.rss}</strong></li>
					{if $config.settings.rss_newest}<li><a href="{linkto page='rss.php?mode=newestMedia'}">{$lang.newestMedia}</a></li>{/if}
					{if $config.settings.rss_newest}<li><a href="{linkto page='rss.php?mode=popularMedia'}">{$lang.popularMedia}</a></li>{/if}
					{if $config.settings.rss_featured_media}<li><a href="{linkto page='rss.php?mode=featuredMedia'}">{$lang.featuredMedia}</a></li>{/if}
				</ul>
				{/if}
			</div>
							
				<ul style="margin-bottom: 10px;">
					
					{if $config.settings.aboutpage}<li><a href="{linkto page="about.php"}">{$lang.aboutUs}</a></li>{/if}
					{if $config.settings.forum_link}<li><a href="{$config.settings.forum_link}">{$lang.forum}</a></li>{/if}					
					
					{if $config.settings.papage}<li><a href="{linkto page='purchase.agreement.php'}">{$lang.purchaseAgreement}</a></li>{/if}
				</ul>
			-->
			<div class="col-md-2"></div>
			<div class="col-md-10">
				
				{if $config.settings.facebook_link}<a href="{$config.settings.facebook_link}" target="_blank"><img src="{$imgPath}/facebook.icon.png" width="20" title="Facebook"></a>{/if}&nbsp;{if $config.settings.twitter_link}<a href="{$config.settings.twitter_link}" target="_blank"><img src="{$imgPath}/twitter.icon.png" width="20" title="Twitter"></a>{/if}
				<a href="http://www.willieholdman.com/">| WILLIEHOLDMAN.COM |</a>
				{if $config.settings.contact}<a href="{linkto page="contact.php"}"> CONTACT INFO |</a>{/if}
				<a href="#"> ALL RIGHTS RESERVED &copy; |</a>
			<!--
				{$lang.copyright} <a href="{$baseURL}">{$config.settings.business_name}</a><br>{$lang.reserved}
			-->
				{if $config.settings.tospage}<a href="{linkto page='terms.of.use.php'}"> {$lang.termsOfUse} |</a>{/if}
				{if $config.settings.pppage}<a href="{linkto page='privacy.policy.php'}"> {$lang.privacyPolicy} |</a>|{/if}
				<a href="#"> SITE MAP </a>
			</div>
			<div class="col-md-2"></div>


		</div>
	</div>
	<div id="statsCode">{$config.settings.stats_html}</div>
</footer>
<script src="{$baseURL}/assets/themes/{$theme}/js/bootstrap.min.js"></script>

{if $config.settings.fotomoto}<script type="text/javascript" src="//widget.fotomoto.com/stores/script/{$config.settings.fotomoto}.js"></script>{/if}