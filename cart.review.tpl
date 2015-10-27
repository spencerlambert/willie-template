<!DOCTYPE HTML>
<html>
<head>
	{include file='head.tpl'}
	<script type="text/javascript" src="{$baseURL}/assets/javascript/cart.js"></script>
	<script type="text/javascript" src="{$baseURL}/assets/javascript/cart.review.js"></script>
	<script type="text/javascript">
		var settingsPurchaseAgreement = '{$config.settings.purchase_agreement}';
	</script>
</head>
<body>
	{include file='overlays.tpl'}
	<div id="container">
		{include file='header.tpl'}
		{include file='header2.tpl'}		
		
		<div class="container">
			
			<div class="row">
				<div class="col-md-12">
					<ul class="cartStepsBar {if $stepNumber.b}cartStepsBar25{else}cartStepsBar33{/if}">
						<li class="off cart"><p>{$stepNumber.a}</p><div>{$lang.cart}</div></li>
						{if $stepNumber.b}<li class="off shipping"><p>{$stepNumber.b}</p><div>{$lang.shipping}</div></li>{/if}
						<li class="on"><p>{$stepNumber.c}</p><div>{$lang.reviewOrder}</div></li>
						<li class="off"><p>{$stepNumber.d}</p><div>{$lang.payment}</div></li>
					</ul>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-8">		
						{if $cartTotals.shippingRequired}
							<div style="clear: both; overflow: auto;">
								<div class="cartReviewAddresses">
									<div>
										<h2>{$lang.shipTo}:</h2>
										<p>
											<strong>{$shippingAddress.name}</strong><br>
											{$shippingAddress.address}<br>
											{if $shippingAddress.address2}{$shippingAddress.address2}<br>{/if}
											{$shippingAddress.city}, {$shippingAddress.state} {$shippingAddress.postalCode}<br>
											{$shippingAddress.country}<br>
											<!--
											{if $shippingAddress.phone}{$shippingAddress.phone}<br>{/if}
											{if $shippingAddress.email}{$shippingAddress.email}<br>{/if}
											-->
										</p>
									</div>
								</div>
								
								<div class="cartReviewAddresses">
									<div style="margin-left: 10px;">
										<h2>{$lang.billTo}:</h2>
										<p>
											<strong>{$billingAddress.name}</strong><br>
											{$billingAddress.address}<br>
											{if $billingAddress.address2}{$billingAddress.address2}<br>{/if}
											{$billingAddress.city}, {$billingAddress.state} {$billingAddress.postalCode}<br>
											{$billingAddress.country}<br>
											<!--
											{if $shippingAddress.phone}{$shippingAddress.phone}<br>{/if}
											{if $shippingAddress.email}{$shippingAddress.email}<br>{/if}
											-->
										</p>
									</div>
								</div>
							</div>
						{/if}
						
						{if $digitalInvoiceItems}
							<h2 style="margin-top: 10px;">{$lang.downloads}</h2>
							<div class="container cartContainer">
								{foreach $digitalInvoiceItems as $invoiceItemKey => $invoiceItem}
								<div class="row">
									<div class="col-md-2 cartThumbColumn">
										{if $invoiceItem.itemDetails.media}
											<a href="media.details.php?mediaID={$invoiceItem.itemDetails.media.useMediaID}"><img src="image.php?mediaID={$invoiceItem.itemDetails.media.encryptedID}=&type=icon&folderID={$invoiceItem.itemDetails.media.encryptedFID}==&size=60" class="thumb"></a>
										{elseif $invoiceItem.itemDetails.photo}
											<img src="{productShot itemID=$invoiceItem.item_id itemType=$invoiceItem.itemTypeShort photoID=$invoiceItem.itemDetails.photo.id size=60}" class="thumb">
										{else}
											<img src="{$imgPath}/blank.cart.item.png">
										{/if}
									</div>
									<div class="col-md-5">
										<h2>{$invoiceItem.itemDetails.name}</h2>
										{if $invoiceItem.item_type == 'digital'}
											<p class="cartItemDescription">
												{if $config.settings.display_license}{$lang.license}: <strong>{$invoiceItem.itemDetails.licenseLang}</strong><br>{/if}
												{if $invoiceItem.itemDetails.width or $invoiceItem.itemDetails.height}<strong>{$invoiceItem.itemDetails.width} x {$invoiceItem.itemDetails.height} px</strong> <!--{if $cartItem.itemDetails.widthIC or $cartItem.itemDetails.heightIC}<em>( {$cartItem.itemDetails.widthIC} x {$cartItem.itemDetails.heightIC} @ {$config.dpiCalc} {$lang.dpi} )</em>{/if}--><br>{/if}
												{if $invoiceItem.itemDetails.format}{$lang.mediaLabelFormat}: <strong>{$invoiceItem.itemDetails.format}</strong><br>{/if}
												{if $invoiceItem.itemDetails.dsp_type == 'video'}
													{if $invoiceItem.itemDetails.fps}{$lang.mediaLabelFPS}: <strong>{$invoiceItem.itemDetails.fps}</strong><br>{/if}
													{if $invoiceItem.itemDetails.running_time}{$lang.mediaLabelRunningTime}: <strong>{$invoiceItem.itemDetails.running_time}</strong> {$lang.seconds}<br>{/if}
												{/if}
											</p>
										{else}
											<p class="cartItemDescription">{$invoiceItem.itemDetails.description|truncate:200}</p>
										{/if}
										
										{if $invoiceItem.has_options}
											<div class="cartItemDetailsContainer">
												<a href="{$invoiceItem.oi_id}" itemType="{$invoiceItem.item_type}" class="buttonLink cartItemDetailsButton">+</a> {if $invoiceItem.item_type == 'package'}{$lang.viewPackOptions}{else}{$lang.viewOptions}{/if}
												<!--<a href="{$cartItem.itemDetails.cartEditLink}" class="colorLink cartItemEditLink" style="float: right;">[Edit]</a>-->
												<div style="display: none" id="optionsBox{$invoiceItem.oi_id}" class="optionsBox"></div>
												<!--ID: {$cartItem.oi_id} - Type: {$cartItem.item_type}-->
											</div>
										{/if}
										{if $debugMode}{debugOutput value=$invoiceItem title='Cart Item'}{/if}
										
									</div>
									<div class="col-md-2">
										{$invoiceItem.quantity}
									</div>
									<div class="col-md-3">
										<span class="price" style="font-size: 13px; cursor: auto">
										{if $invoiceItem.paytype == 'cur'}
											{$invoiceItem.lineItemPriceTotalLocal.display}{if $invoiceItem.taxInc}*{/if}
										{else}
											{$invoiceItem.lineItemCreditsTotal} <sup>{$lang.credits}</sup>
										{/if}
										</span><br>
									</div>
								</div>
								{/foreach}
							</div>
							<input type="button" class="btn btn-xs btn-success editButton" value="{$lang.edit}" style="float: right; margin-top: 6px;"><br><br>
						{/if}
						
						{if $physicalInvoiceItems}
							<h2 style="margin-top: 10px;">{$lang.items}</h2>
							<div class="container cartContainer">
								{foreach $physicalInvoiceItems as $invoiceItemKey => $invoiceItem}
								<div class="row">
									<div class="col-md-2 cartThumbColumn">
										{if $invoiceItem.itemDetails.media}
											<a href="media.details.php?mediaID={$invoiceItem.itemDetails.media.useMediaID}"><img src="image.php?mediaID={$invoiceItem.itemDetails.media.encryptedID}=&type=icon&folderID={$invoiceItem.itemDetails.media.encryptedFID}==&size=60" class="thumb"></a>
										{elseif $invoiceItem.itemDetails.photo}
											<img src="{productShot itemID=$invoiceItem.item_id itemType=$invoiceItem.itemTypeShort photoID=$invoiceItem.itemDetails.photo.id size=60}" class="thumb">
										{else}
											<img src="{$imgPath}/blank.cart.item.png">
										{/if}
									</div>
									<div class="col-md-5">
										<h2>{$invoiceItem.itemDetails.name}</h2>
										<p class="cartItemDescription">{$invoiceItem.itemDetails.description|truncate:200}</p>	
										{if $invoiceItem.has_options}
											<div class="cartItemDetailsContainer">
												<a href="{$invoiceItem.oi_id}" itemType="{$invoiceItem.item_type}" class="buttonLink cartItemDetailsButton">+</a> {if $invoiceItem.item_type == 'package'}{$lang.viewPackOptions}{else}{$lang.viewOptions}{/if}
												<!--<a href="{$cartItem.itemDetails.cartEditLink}" class="colorLink cartItemEditLink" style="float: right;">[Edit]</a>-->
												<div style="display: none" id="optionsBox{$invoiceItem.oi_id}" class="optionsBox"></div>
												<!--ID: {$cartItem.oi_id} - Type: {$cartItem.item_type}-->
											</div>
										{/if}									
									</div>
									<div class="col-md-2">
										{$invoiceItem.quantity}
									</div>
									<div class="col-md-3">
										<span class="price" style="font-size: 13px; cursor: auto">
										{if $invoiceItem.paytype == 'cur'}
											{$invoiceItem.lineItemPriceTotalLocal.display}{if $invoiceItem.taxInc}*{/if}
										{else}
											{$invoiceItem.lineItemCreditsTotal} <sup>{$lang.credits}</sup>
										{/if}
										</span>
									</div>
								</div>
								{/foreach}
							</div>
							<input type="button" class="btn btn-xs btn-success editButton" value="{$lang.edit}" style="float: right; margin-top: 6px;">
						{/if}
					</div>
						
					<div class="col-md-4">
					
						<div class="cartTotalList">
							{if $priCurrency.currency_id != $selectedCurrency}<div class="cartTotalListWarning"><img src="{$imgPath}/notice.icon.png"/>{$lang.cartTotalListWarning}</div>{/if}
							
							{if $cartTotals.priceSubTotal}
								<div class="divTable">
									<div class="divTableRow">
										<div class="divTableCell">{$lang.subtotal}:</div>
										<div class="divTableCell"><span class="price">{$cartTotals.subTotalLocal.display}</span></div>
									</div>
									{if $cartTotals.shippingRequired}
										<div class="divTableRow">
											<div class="divTableCell">{$lang.shipping}:</div>
											<div class="divTableCell"><span class="{if $cartTotals.clearShipping}strike{/if}">{$cartTotals.shippingTotalLocal.display}</span></div>
										</div>
									{/if}
									{if $cartTotals.taxA}
										<div class="divTableRow">
											<div class="divTableCell">{$lang.taxAName}<!-- ({$tax.tax_a_default}%)-->:</div>
											<div class="divTableCell"><span class="{if $cartTotals.clearTax}strike{/if}">{$cartTotals.taxALocal.display}</span></div>
										</div>
									{/if}
									{if $cartTotals.taxB}
										<div class="divTableRow">
											<div class="divTableCell">{$lang.taxBName}<!-- ({$tax.tax_b_default}%)-->:</div>
											<div class="divTableCell"><span class="{if $cartTotals.clearTax}strike{/if}">{$cartTotals.taxBLocal.display}</span></div>
										</div>
									{/if}
									{if $cartTotals.taxC}
										<div class="divTableRow">
											<div class="divTableCell">{$lang.taxCName}<!-- ({$tax.tax_c_default}%)-->:</div>
											<div class="divTableCell"><span class="{if $cartTotals.clearTax}strike{/if}">{$cartTotals.taxCLocal.display}</span></div>
										</div>
									{/if}
									{if $cartTotals.totalDiscounts}
										<div class="divTableRow">
											<div class="divTableCell">{$lang.discounts}:</div>
											<div class="divTableCell"><span class="cartTotalDiscounts">-{$cartTotals.totalDiscountsLocal.display}</span></div>
										</div>
									{/if}
									<div class="divTableRow">
										<div class="divTableCell"><span class="price">{$lang.total}:</span></div>
										<div class="divTableCell"><span class="price">{$cartTotals.cartGrandTotalLocal.display}</span></div>
									</div>
								</div>
							{/if}
							
							{if $cartTotals.creditsSubTotal}	
								<div class="divTable">
									<div class="divTableRow">
										<div class="divTableCell">{$lang.creditsSubtotal}:</div>
										<div class="divTableCell"><span class="price">{$cartTotals.creditsSubTotal}</span></div>
									</div>
									{if $cartTotals.totalCreditsDiscounts}
										<div class="divTableRow">
											<div class="divTableCell">{$lang.creditsDiscounts}:</div>
											<div class="divTableCell"><span class="cartTotalDiscounts">-{$cartTotals.totalCreditsDiscounts}</span></div>
										</div>
									{/if}
									<div class="divTableRow">
										<div class="divTableCell"><span class="price">{$lang.credits}:</span></div>
										<div class="divTableCell"><span class="price">{$cartTotals.creditsTotal}</span></div>
									</div>
								</div>
							{/if}
						</div>
						
						{if $lang.taxMessage}
							<div class="cartTotalList">
								{$lang.taxMessage}
							</div>
						{/if}
						
						<form id="cartPaymentForm" action="cart.payment.php" method="post">							
						<div class="cartTotalList paymentGatewaysBox">
							{if $freeCart}
								<input type="hidden" name="paymentType" value="freeCart">
							{else}
								<h2>{$lang.paymentOptions}:</h2>
								<ul>
									{foreach $gateways as $gatewayKey => $gateway}
										<li>
											<input type="radio" name="paymentType" value="{$gateway.id}" id="paymentGateway{$gateway.id}" {if $gateway@first}checked="checked"{/if}>
											{if $gateway.logo}<img src="{$imgPath}/logos/{$gateway.id}.png">{/if}
											<label for="paymentGateway{$gateway.id}">{$gateway.displayName}</label>
											<p>{$gateway.publicDescription}</p>
										</li>
									{/foreach}
								</ul>
							{/if}
						</div>
						
						<div class="cartTotalList" {if $shippingAddress.email}style="display: none;"{/if}>
							<h2>{$lang.yourEmail}:</h2>
							<div><input type="text" name="email" id="email" require="require" errorMessage="{$lang.required}" value="{$shippingAddress.email}" class="form-control"></div>
						</div>
						
						<div class="cartTotalList">
							{if $config.settings.purchase_agreement}<p style="float: left;"><input type="checkbox" name="purchaseAgreement" id="purchaseAgreement" value="1" style="vertical-align:middle; margin-top: -3px"> <label for="purchaseAgreement">{$lang.iAgree} <strong><a href="{linkto page='purchase.agreement.php'}" target="_blank">{$lang.purchaseAgreement}</a></strong></label></p>{/if}
							<input type="button" value="{$lang.checkout}" style="float: right" id="cartReviewButton" class="btn btn-xs btn-success">
						</div>
						</form>
					</div>						
				</div>
			</div>
				
			</div>
			
			{* Debug Area *}
			{if $debugMode}
				{debugOutput value=$shippingAddress title='Shipping Address'}
				{debugOutput value=$billingAddress title='Billing Address'}
				{debugOutput value=$cartInfo title='Cart Info'}
				{debugOutput value=$cartTotals title='Cart Totals'}
			{/if}
			
		</div>
		{include file='footer.tpl'}
    </div>
</body>
</html>