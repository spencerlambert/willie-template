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


			<h1> <a href="gallery.php?mode=gallery">Galleries</a>  » <a href="{linkto page='gallery.php?mode=gallery&id=2'}" >Newest Images</a></h1>
			<hr>
			{if $mediaRows}
				{include file="paging.tpl" paging=$mediaPaging}
				<div id="mediaListContainer">
					{foreach $mediaArray as $media}
						{include file='media.container.tpl'}
					{/foreach}
				</div>
				{include file="paging.tpl" paging=$mediaPaging}
			{else}
				<p class="notice">{$lang.noMedia}</p>
			{/if}
		</div>
		{include file='footer.tpl'}
    </div>
</body>
</html>
