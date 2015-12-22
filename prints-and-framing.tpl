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
            <h1>Prints & Framing for Willie Holdman Photographs</h1>
            <p>
            The default for ordering all photographic prints on line is the gicle process. This process uses fade-resistant, archival inks (pigment based) that are sprayed onto the substrate making for an incredible detailed and archival print that will last a lifetime.
            </p>
            <h2 style="color:#CCC !important;font-size:20px !important;">Giclee prints</h2>
            <p>
            Giclee prints can be produced on any paper you wish from photo paper such as glossy, luster, or matte, to textured or smooth fine art papers. Canvas is also an option and can be stretched in the tradition manor to be displayed without a frame. The default when ordering my photographic prints will be printed on photographic paper using the luster finish. When ordering a framed print, the default process will be a flush mounted photograph with a mat laminate on the top with no glass. If you wish to order a photograph with a mat, the default mat used is a slightly off white color with the photograph mounted on a 3/16 acid free foam board. The glass used is a conservation clear class with a uv prohibitor built in. Another option on glass is to use the Tru Vue museum glass . This glass is outstanding! You get the non-glare capabilities without the matted down muted colors look that non-glare glass portrays. This glass usually increases the cost of the framed photograph by 20%.
            </p>
            <p>
            <strong>*Please note that on everything larger than 20"x30" plexiglass will be used when shipping.</strong>
            </p><p></p>
            <h2 style="color:#CCC !important;font-size:20px !important;">Laminated</h2>
            <p>
            As stated above, this is now my new default printing and mounting method. More recently I have been getting rid of the mat altogether and mounting the photograph on a heavier more robust substrate then laminating the photograph and putting it right into the frame. The photo is protected with a laminated process with no glass and placed in a oiled barn wood liner frame. The photograph is protected by a 3 mil, mat film that is acid free and contains a UV inhibitor. This process protects the image from uv light, gasses, finger prints, etc. It also has no glare whatsoever and really gives the appearance of looking right out a window. This process works really well with large prints and my panoramas. I would guess 70% of my images are now made this way. When you visit the gallery this is how the majority of them are presented. Keep in mind that because of the lack of mat the image will have to be ordered the next size up to fill the same space as it would with the traditional matted print. A 20x30 print matted would usually end up being 30x40 finished size where as a laminated 20x30 would be about 24x34 depending on the width of the frame.
            </p><p style="margin-top:35px !important;"></p>
            <h2 style="color:#CCC !important;font-size:20px !important;">Other Finishing Options</h2>
            <p>
            Below are more finishing options that are available. Please contact me directly when wanting one of the options below before ordering.
            </p>
            <h2 style="color:#CCC !important;font-size:20px !important;">Colorplak</h2>
            <p>
            Colorplak is an alternative picture framing process where your image is dry mounted onto Medium Density Fiberboard (MDF) and then sealed under heat and pressure with 80% UV protective matte finish vinyl lamination and finished with a beveled edge in your choice of over 30 colors. The final result is a nonglare, easy to clean, professional looking product at a fraction of the cost of traditional custom framing.
            </p>
            <p>
            These hang off the wall about 1. No frame is needed and they can be viewed from all angles without glare. The cost is about 30% on top of the loose print cost when ordering.
            </p>
            <h2 style="color:#CCC !important;font-size:20px !important;">Metal Prints</h2>
            <p>
            These prints are actually made by infusing dyes directly into specially coated aluminum sheets. Because the image is infused into the surface and not on it, your images will take on an almost magical luminescence. Metal Prints are available in 4 different surfaces: High Gloss, Satin, and Sheer with a Glossy or Matte finish. I feel the best finish by far is the glossy. The look is similar to the old cibachrome high contrast, high gloss look. You've never seen a more brilliant and impressive print! Colors are vibrant and the luminescence is breathtaking. Detail and resolution are unsurpassed. Because of the high gloss output you can expect to have glare on the image which is the trade off for the rich and vibrant color that comes with this process. No frame is needed and there are several options on finishes to hang it onto a wall.
            </p>
            <p>Call the artist directly for more information on mounting options for this process.</p>
            <p>
            Prices for the metal prints are about 2.5 times more than the loose print price. You must keep in mind, these are flush mounted with a black frame that is about 1 inch deep, ready to be hung.
            </p><p style="margin-top:35px !important;"></p>
            <h2 style="color:#CCC !important;font-size:20px !important;">Stretched Metallic Prints</h2>
            <p>
            Yet another brand new process where the image is printed on a metallic, glossy, photographic paper. After this point it is stretched around a wood frame just as a canvas wrap would be finished. No frame is needed which lowers the final cost and the images have a rich, saturated, glossy look. Please call for price quotes.
            </p>
            <h2 style="color:#CCC !important;font-size:20px !important;">Canvas</h2>
            <p>
            The method of printing on canvas gives the photograph yet a different look altogether. Do you enjoy the look of texture? Do you like the finish of a oil painting? Would you prefer no frame around the photograph or use of glass? Then a canvas print may be for you. Personally I don't really care for the look because these are photographs, not paintings, but some images do work on this media. Its all personal preference. You can just the canvas which will be provided with 2 inches or white space around the image to allow for stretching. We can also stretch the canvas for you on a wood frame. Look to pay about 15% more on my loose print prices on line. Stretching is an additional 15% on the cost.
            </p>
            <p>
            If you have another printing or framing option you wish to use that is not discussed here contact the artist directly and arrangements can be made.
            </p>
            </div>	
            <div class="col-lg-3 gall">
            <div class="sd_img" style="margin-top:32px !important;">
            <img src="../assets/images/museumglass-small.jpg">
            <p class="ph_title">Tru Vue museum glass</p>
            </div>
            <div class="sd_img">
            <img src="../assets/images/framecutout-small.jpg">
            <p class="ph_title">Mat Laminated</p>
            </div>
            <div class="sd_img">
            <img src="../assets/images/laminated-small.jpg">
            <p class="ph_title">Laminated</p>
            </div>
            <div class="sd_img">
            <img src="../assets/images/metal-small.jpg">
            </div>
            <div class="sd_img">
            <img src="../assets/images/metallic-small.jpg">
            <p class="ph_title">Metal Print</p>
            </div>
            <div class="sd_img">
            <img src="../assets/images/metallicwrap-small.jpg">
            <p class="ph_title">Stretched Metallic Print</p>
            </div>
            <div class="sd_img">
            <img src="../assets/images/canvaswrap-small.jpg">
            <p class="ph_title">Canvas</p>
            </div>
            </div>
				
		</div>
		{include file='footer.tpl'}
	</body>
</html>
