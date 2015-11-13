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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		
		<script type="text/javascript" src="{$baseURL}/assets/javascript/modal_script.js"></script>
        <script type="text/javascript">
		  	$(document).ready(function() {
			    $("#col-cnt").on('shown.bs.collapse', function(){
					$("#col-cnt-btn").html('Hide this content');
			    });
				$("#col-cnt").on('hidden.bs.collapse', function(){
					$("#col-cnt-btn").html('See More');
			    });
				$("#col-cnt2").on('shown.bs.collapse', function(){
					$("#col-cnt-btn2").html('Hide this content');
			    });
				$("#col-cnt2").on('hidden.bs.collapse', function(){
					$("#col-cnt-btn2").html('See More');
			    });
				$("#col-cnt3").on('shown.bs.collapse', function(){
					$("#col-cnt-btn3").html('Hide this content');
			    });
				$("#col-cnt3").on('hidden.bs.collapse', function(){
					$("#col-cnt-btn3").html('See More');
			    });
				$("#col-cnt4").on('shown.bs.collapse', function(){
					$("#col-cnt-btn4").html('Hide this content');
			    });
				$("#col-cnt4").on('hidden.bs.collapse', function(){
					$("#col-cnt-btn4").html('See More');
			    });
				$("#col-cnt5").on('shown.bs.collapse', function(){
					$("#col-cnt-btn5").html('Hide this content');
			    });
				$("#col-cnt5").on('hidden.bs.collapse', function(){
					$("#col-cnt-btn5").html('See More');
			    });
				$("#col-cnt6").on('shown.bs.collapse', function(){
					$("#col-cnt-btn6").html('Hide this content');
			    });
				$("#col-cnt6").on('hidden.bs.collapse', function(){
					$("#col-cnt-btn6").html('See More');
			    });
				$("#col-cnt7").on('shown.bs.collapse', function(){
					$("#col-cnt-btn7").html('Hide this content');
			    });
				$("#col-cnt7").on('hidden.bs.collapse', function(){
					$("#col-cnt-btn7").html('See More');
			    });
				$("#col-cnt8").on('shown.bs.collapse', function(){
					$("#col-cnt-btn8").html('Hide this content');
			    });
				$("#col-cnt8").on('hidden.bs.collapse', function(){
					$("#col-cnt-btn8").html('See More');
			    });
				$("#col-cnt9").on('shown.bs.collapse', function(){
					$("#col-cnt-btn9").html('Hide this content');
			    });
				$("#col-cnt9").on('hidden.bs.collapse', function(){
					$("#col-cnt-btn9").html('See More');
			    });
			});
		</script>
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
                            <div class="col-md-12"><h1 style="text-align:center !important; margin:0 !important; padding-bottom:25px !important;">Limited 8 Day Grand Canyon River Run Workshop</h1></div>
							<div class="col-md-12 workshop"><img class="ws-main-img img-responsive" src="../assets/images/workshop-featured-photo.png"></div><div class="clearfix"></div>
                            <div class="col-md-2"></div> 
                            <div style="margin-bottom:25px !important;" class="col-md-8 responsive-video"><iframe width="560" height="315" src="https://www.youtube.com/embed/O6zzpg2Eu5Q" frameborder="0" allowfullscreen></iframe></div>
                            <div class="col-md-2"></div><div class="clearfix"></div> 
                            <div class="col-md-8">
                            <p>
                            Join us for the 8 day Photography Workshop with Willie Holdman in the Grand Canyon that will take place April 11-18 in 2016. We have added a valuable extra day to allow for more time to photograph at some of the key spots. This will make a HUGE difference!
                            </p>
                            <p>We will spend eight days rafting and floating down the Colorado River, which runs through one of the greatest wonders of the world, The Grand Canyon. Visit waterfalls, see turquoise colored rivers, and experience the wonder of the deep side canyons. You will also be able to view trickling springs and grottos filled with desert wildflowers. This is a once in a lifetime opportunity to experience the Grand Canyon and capture it's magic with your own camera.</p>
                            <p>Willie has personally floated down the Grand Canyon numerous times on photography expeditions. He has teamed up with Western River Expeditions to offer this exclusive river run experience. This trip will be a photography workshop in every sense of the word. We will plan our adventures based on the best location and lighting for each time of day.</p>
                            </div>
                            <div class="col-md-4 img-wsp"><a href="http://www.willieholdman.com/Utah_photography/view.asp?page=1&cat=all&pic=2650120001"><img class="img-responsive" src="../assets/images/grandcanyon.jpg"></a></div><div class="clearfix"></div>
                            <div class="col-md-12">
                            <p>This is an all inclusive, fully catered trip. You will enjoy exquisite four star meals cooked by our guides. We will concentrate on our photography. Everything is provided except your camera gear. A basic understanding of photography, and knowing how to use your camera will really help you have the best experience possible.</p>
                            <p>Visit the <a href="http://www.westernriver.com/trips/grand6day/">Western River Expeditions</a> web site to see more details about this trip and don't forget to check out the sample photographs, including photos Willie has taken on past visits on the <a href="http://www.westernriver.com/trips/grand6day/photos.php">photos page</a>.</p>
                            <p>Willie has made arrangements with Western River Expeditions to get $200.00 off the normal price of this trip. There will also be a $200.00 workshop fee paid to Willie for the additional instruction. Willie has also agreed to let Western River Expeditions use some of the photographs taken on this trip in exchange for the discounted rate. This will also allow us to photograph at our own pace and on a different schedule than usual. These trips are very popular and only a certain number of people are allowed to go down the Grand Canyon each year. Some individuals have waited for up to 20 years to obtain a permit to float through the grand canyon.</p>
                            <p>As another bonus we will hold a photography competition where one of the participants will receive a free 3 or 4 day river trip down cataract canyon which starts near Moab and ends in Lake Powell.</p>
                            <p>Total cost of trip and instruction: $3185.00</p><p></p>
                            <p>UPDATE-ONLY ONE SPOT LEFT! The link below is for the 2016 departure.</p>
                            <p></p>
                            <p><i>"I've floated a lot of rivers but this is by far the Grand-Daddy of them all...Great scenery...Great Rapids...Great food!"</i> -Willie Holdman</p>
                            <p class="lb"><a href="http://secure.westernriver.com/express/reservation/results.jsf?activityIds=180362">Click Here to reserve your spot for the Grand Canyon River Run Workshop on April 11-18 of 2016.</a></p>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 wsp">
                            <p><h2 class="other-wsp">Other Workshops Available for 2015</h2></p>
                            <p></p><div class="clearfix"></div>
                            <!-- <a href="#"> -->
                            <div class="featuredPageItem galleryFeaturedProducts workboxLinkAttach col-lg-3 col-md-6 ws">
                            <img class="img-wsh"  src="../assets/images/Grand-Canyon-Workshop-Photo.jpg">
                            <a href="product.php?id=2" class="workboxLink ws-title">Grand Canyon Workshop</a>
                            <p class="ws-price">$200</p>
                            <p class="ws-date">April 11-18, 2016</p>
                            <p class="ws-span">This is the workshop fee only for 2016</p>
                            <p class="ws-avail"><h2 class="ws-spot">1 Spots Available</h2></p>
                            </div>
                            <!-- </a> -->
                            <!-- <a href="#"> -->
                            <div class="featuredPageItem galleryFeaturedProducts workboxLinkAttach col-lg-3 col-md-6 ws">
                            <img class="img-wsh" src="../assets/images/Spring-Workshop.jpg">
                            <a href="product.php?id=3" class="workboxLink ws-title">Grand Canyon Workshop</a>
                            <p class="ws-price">$200</p>
                            <p class="ws-date">April 11-18, 2016</p>
                            <p class="ws-span">This is the workshop fee only for 2016</p>
                            <p class="ws-avail"><h2 class="ws-spot">1 Spots Available</h2></p>
                            </div>
                            <!-- </a>  -->
                            <!-- <a href="#">   -->
                            <div class="featuredPageItem galleryFeaturedProducts workboxLinkAttach col-lg-3 col-md-6 ws">
                            <img class="img-wsh" src="../assets/images/Summer-Workshop.jpg">
                            <a href="product.php?id=4" class="workboxLink ws-title">Grand Canyon Workshop</a>
                            <p class="ws-price">$200</p>
                            <p class="ws-date">April 11-18, 2016</p>
                            <p class="ws-span">This is the workshop fee only for 2016</p>
                            <p class="ws-avail"><h2 class="ws-spot">1 Spots Available</h2></p>
                            </div>
                            <!-- </a>   -->
                            <!-- <a href="#">   -->
                            <div class="featuredPageItem galleryFeaturedProducts workboxLinkAttach col-lg-3 col-md-6 ws">
                            <img class="img-wsh" src="../assets/images/Fall-Workshop.jpg">
                            <a href="product.php?id=5" class="workboxLink ws-title">Grand Canyon Workshop</a>
                            <p class="ws-price">$200</p>
                            <p class="ws-date">April 11-18, 2016</p>
                            <p class="ws-span">This is the workshop fee only for 2016</p>
                            <p class="ws-avail"><h2 class="ws-spot">1 Spots Available</h2></p>
                            </div>
                            <!-- </a>   -->
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-md-12" style="margin-top:25px !important;">
                            <p><h2>About the instructor</h2></p>
                            <p></p>
                            <p>Willie Holdman is a native Utahan and started experiencing the wonders of nature at an early age by assisting his father, Floyd, on photography assignments for National Geographic throughout the country. He managed to slip out and photograph the rural areas of Utah while at Brigham Young University where he received his BFA degree with an emphasis in photography. Willie resides at the base of majestic Mt. Timpanogos in Midway, Utah. Although he has photographed nature all over the world, it can't compare with the versatility and beauty of his home state, Utah. Whether it is high in an alpine meadow, or low in the red rock desert, this is home.</p>
                            <p>Willie's award-winning work has been used in numerous publications throughout the country and is collected by multiple corporate and personal identities; some of which include Robert Redford, Senator Orin Hatch, and Google. His work has been featured many times in Outdoor Photographer and has been used for the 2002 winter Olympics and is also displayed at the SLC Airport. Some of his other products are a calendar on Utah, posters, and screen savers for computers, and a hardcover book called <em>Timpanogos</em> as well as one in the works called <em>Utah, Mountains to Deserts</em>. His images have been chosen numerous times for the cover of the Utah Travel Council calendar.</p>
                            <p><h2  class="lb">To Register: Select one of the workshops above or contact Willie Holdman at <a href="mailto:willie@holdman.com">willie@holdman.com</a></h2></p>
                            </div>
                            <div class="col-lg-12">
                             <div><h3>What should I expect from this workshop?</h3><button id="col-cnt-btn" type="button" class="btn btn-info" data-toggle="collapse" data-target="#col-cnt">See More</button></div>
                              <div id="col-cnt" class="collapse">
                              <p>We will be doing a fair amount of walking and hiking around and descent conditioning will be a big bonus in your comfort in the field.</p>
                              <p>We will get up early each morning and go to a predetermined spot. These locations will be chosen based on Willie's vast experience and knowledge of the seasons and local weather to allow for the best photography opportunities. Most of the time will be spent capturing Mother Nature in her glory. The main focus of these workshops will be in the field, shooting. The main goal of this workshop is to come away with an image of your own, that you would be proud to hang on your wall. Count on being outside during the optimal light hours of sunrise and sunset. You may be required to bring a sack lunch on certain days but most of the time we should be close enough to eat in one of the local eateries.</p>
                              <p>In the middle of the day or evenings, after the light is gone, we will spend time on the computer critiquing and going over digital processing and basic techniques to optimize your photographs. More details will be given at the workshop. This workshop is for you. We do not pursue our own photographic endeavors. We concentrate on what's best for the photographers and how we can build upon your existing skills and help you get a great shot.</p>
</div>
                            </div>
                            <div class="col-lg-12">
                             <div><h3>What do the Wasatch Mountains have to offer?</h3><button id="col-cnt-btn2" type="button" class="btn btn-info" data-toggle="collapse" data-target="#col-cnt2">See More</button></div>
                              <div id="col-cnt2" class="collapse"><p>Willie Holdman Photographs provides individuals an opportunity to explore the backcountry of Utah, one of the most breathtaking natural scenic places on earth. Your Instructor, Willie, has thoroughly explored every nook and cranny along the peaks of the Wasatch Front in the North, to the red rock canyons and vistas of the South. My home has always been here in the Wasatch mountains of Utah. Though I have traveled extensively, I can't seem to find a match to the beauty and versatility of the place I call home. Multiple things come into play while trying to make a memorable photograph. Drive, determination, desire, knowledge, skill, technique, location and luck. If you have the first three "D"s, we can help you with the other four, the last one is left up to Mother Nature.<p>
<p>Place yourself in the beautiful mountains of Utah. The small quaint town of Midway is situated 20 minutes from the Sundance resort in Provo canyon, Park City and Deer Valley in Utah. All the Wasatch Mountain Workshops will be headquartered here. With the majestic Timpanogos Mountain to the south, lakes on either side, and the Provo River winding its way through the valley, you will feel like a kid in a candy shop....only it will be eye-candy.... in every direction.</p>
<p>Ever wonder what the pros do when preparing for a photo shoot? How they choose where to go? What lens they pick and why? Wonder how they get such great images? All these questions will be answered and more.</p></div>
                            </div>
                            <div class="col-lg-12">
                             <div><h3>Who is it for?</h3><button id="col-cnt-btn3" type="button" class="btn btn-info" data-toggle="collapse" data-target="#col-cnt3">See More</button></div>
                              <div id="col-cnt3" class="collapse"><p>These nature photography workshops are for beginners, amateurs, or professionals who just want to take their own photographs in a spectacular setting. Each workshop will be classified to the level and experience you will need to maximize your photography experience. All attendees should have a SLR camera and know how it operates. Having a tripod isnt necessary, but it would be great to bring one. The majority of the workshop will be focused on digital capture.<p>
<p>A laptop computer would be a big plus in editing your images for review in the evening; however, we will not be using the computer while in the field. The workshops will never exceed 10 attendees. 4 attendees is the minimum requirement to hold the workshop.</p>
</div>
                            </div>
                            <div class="col-lg-12">
                             <div><h3>What topics are covered</h3><button id="col-cnt-btn4" type="button" class="btn btn-info" data-toggle="collapse" data-target="#col-cnt4">See More</button></div>
                              <div id="col-cnt4" class="collapse">
<p>Location</p>
<p>The art of seeing</p>
<p>Adding depth and meaning to your photographs</p>
<p>Camera settings when and where</p>
<p>Optimizing your photographs after Raw</p>
<p>How Professionals get remarkable photographs and how you can too</p><p><p>
<p>When the weekend is over, attendees will have a solid understanding of many basic and advanced principles related to nature photography, and the digital darkroom. There will be plenty of time throughout the workshop and in the field to ask Willie one-on-one questions.</p>
</div>
                            </div>
                            <div class="col-lg-12">
                             <div><h3>What's included in the cost of the workshop?</h3><button id="col-cnt-btn5" type="button" class="btn btn-info" data-toggle="collapse" data-target="#col-cnt5">See More</button></div>
                              <div id="col-cnt5" class="collapse">
                              <p>3 full days with photography instructor Willie Holdman</p>
<p>Transportation to and from shooting locations</p>
<p>A 20x30 photographic print of your best photograph to take back with you</p>
<p>Dinner with the group on the final night</p>
                              </div>
                            </div>
                            <div class="col-lg-12">
                             <div><h3>What about lodging?</h3><button id="col-cnt-btn6" type="button" class="btn btn-info" data-toggle="collapse" data-target="#col-cnt6">See More</button></div>
                              <div id="col-cnt6" class="collapse">
<p>visit each web site to see what accommodations fit your style. All of these are located right here in midway.</p>
<p>Invited Inn - www.invitedinn.com Blue Boar - www.theblueboarinn.com Zermatt Resort - www.zermattresort.com Homestead - www.homesteadresort.com - Holiday Inn -www. holidayinn.com. The Holiday Inn is where our home base is and where I reserve a conference room for our indoor sessions. This will also be the place we start and end each day.</p>
<p>Mention you are with the Willie Holdman Photography Workshop, and you will get 10-20% off rates. You can also stay in Park City if you wish since it is only a 20 minute drive.</p>
<p><strong>Lodging:</strong> For Capital Reef we will be staging out of Torrey, Utah, where several hotels are located. I usually stay at Days Inn but the Best Western sure is nice and offers great views. Honestly I usually camp out when I'm there so that is an option as well.</p>
<p><strong>Other Workshop Locations:</strong> Midway, Utah</p>
</div>
                            </div>
                            <div class="col-lg-12">
                             <div><h3>How much does this all cost?</h3><button id="col-cnt-btn7" type="button" class="btn btn-info" data-toggle="collapse" data-target="#col-cnt7">See More</button></div>
                              <div id="col-cnt7" class="collapse">
<p>Cost for the wasatch workshop is $595. The Capital Reef is $695.00</p>
<p>$300 deposit is required to reserve your spot with the remainder due 2 weeks before the workshop.</p>
<p>Please make sure you are committed to come. If something comes up where you can't attend we would be happy to give you credit for another workshop.</p>
</div>
                            </div>
                            <div class="col-lg-12">
                             <div><h3>Do you offer private workshops?</h3><button id="col-cnt-btn8" type="button" class="btn btn-info" data-toggle="collapse" data-target="#col-cnt8">See More</button></div>
                              <div id="col-cnt8" class="collapse">
                              <p>Want to go out one-on-one and receive personal instruction? Want to hike to Willie's favorite locations and vistas? We offer private workshops to cater specifically for what you want. Contact us for details and schedules. The Charge is $125 an hour with an 5 hour minimum or $900 for a full day....and I mean full!</p>
                              </div>
                            </div>
                            <div class="col-lg-12">
                             <div><h3>Do you offer a waiting list?</h3><button id="col-cnt-btn9" type="button" class="btn btn-info" data-toggle="collapse" data-target="#col-cnt9">See More</button></div>
                              <div id="col-cnt9" class="collapse">
                              <p>Waiting list: You may sign up for our waiting list and if we have a cancellation you will be contacted.</p>
                              <p>If you have any questions about the workshops, please don't hesitate to contact Willie Holdman at willie@holdman.com</p>
                              </div>
                            </div><div class="clearfix"></div>
                            <h2 class="lb2"></h2>
                            <div class="col-md-12" style="margin-top:35px !important;">
                            <div><h2 class="wsh">Workshop Testimonials</h2></div>
                            <div class="testi">
                            <p>"I attended a two day Canon workshop in Portland a few weeks ago that cost $1,000. It was good, but not as good as yours! The Utah landscapes are really breathtaking and you took us to some great spots that I had never seen before.<p><p>All in all, I would highly recommend your workshop to my friends and associates from both coasts looking at a Utah outdoor photo vacation workshop. It was an honor to learn from you."</p>
                            </div>
                            <div class="cust">John M. Provo, Utah</div>
                            </div>
                            <div class="col-md-12" style="margin-top:35px !important;">
                            <div class="testi">
                            <p>"Willie, thank you so much for a incredible workshop! This workshop was over the top. It was even better then I imagined, the scenery, the expertise, the weather, the people, everything was perfect! Thank you!"<p>
                            </div>
                            <div class="cust">Bruce O., Ogden, Utah</div>
                            </div>
                            <div class="col-md-12" style="margin-top:35px !important;">
                            <div class="testi">
                            <p>Number one, the seminar is a 10. Spending time in the field with a Landscape expert like Willie Holdman is an invaluable learning experience. Number two, being in the field, shooting photos with Willie right next to you, helping with composition, camera settings and his ideas on what he would shoot and when, is beyond amazing.<p>
                            </div>
                            <div class="cust">Warren D., Charleston, Utah</div>
                            </div>
                            <div class="col-md-12" style="margin-top:35px !important;">
                            <div class="testi">
                            <p>"I was a bit nervous coming into the workshop because I had no photography background. I left having had a great time with you and the other photographers, and now feel drawn into this world of nature photography. I am indebted to you for that."<p>
                            </div>
                            <div class="cust">Jay C. Chicago, Illinois</div>
                            </div>
                            <div class="col-md-12" style="margin-top:35px !important;">
                            <div class="testi">
                            <p>"You were very patient with us .Even answering the same question over and over. On some work shops I've been on the leader was more concerned about getting the shot than helping those who had paid for the class. I felt like I was imposing.Your passion for photography is contagious. Sharing how and what you see was most valuable."<p>
                            </div>
                            <div class="cust">Gus, Provo, Utah</div>
                            </div>   
                            <div class="col-md-12" style="margin-top:35px !important;">
                            <div class="testi">
                            <p>"I would rate it a 9 out of 10. The in the field part was great and the locations were awesome. The way you explained things was easy for me to follow."<p>
                            </div>
                            <div class="cust">Johnny B., Oklahoma</div>
                            </div>
                            <div class="col-md-12" style="margin-top:35px !important;">
                            <div class="testi">
                            <p>"Thank for providing an excellent workshop. I learned a tremendous amount and the workshop exceeded my expectations."<p>
                            </div>
                            <div class="cust">Ryan P. Spanish Fork, Utah</div>
                            </div>
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
