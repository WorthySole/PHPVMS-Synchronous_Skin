<!DOCTYPE HTML>
<!--
	Synchronous by TEMPLATED
    templated.co @templatedco
    Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
	<head>
		<title><?php echo $page_title; ?></title>
		<?php echo $page_htmlhead; ?>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
		<!--[if lte IE 8]><script src="<?php echo SITE_URL?>/lib/skins/synchronous/js/html5shiv.js"></script><![endif]-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		<script src="<?php echo SITE_URL?>/lib/skins/synchronous/js/skel.min.js"></script>
		<script src="<?php echo SITE_URL?>/lib/skins/synchronous/js/skel-panels.min.js"></script>
		<script src="<?php echo SITE_URL?>/lib/skins/synchronous/js/init.js"></script>
		
		<script src="<?php echo SITE_URL?>/lib/skins/synchronous/js/scrollMonitor.js"></script>
		
			<link href="<?php echo SITE_URL?>/lib/skins/synchronous/css/skel-noscript.css" rel="stylesheet" media="all"  />
			<link href="<?php echo SITE_URL?>/lib/skins/synchronous/css/style.css" rel="stylesheet" media="all"  />
			<link href="<?php echo SITE_URL?>/lib/skins/synchronous/css/style-desktop.css" rel="stylesheet" media="all"  />
		
		<!--[if lte IE 8]><link rel="stylesheet" href="<?php echo SITE_URL?>/lib/skins/synchronous/css/ie/v8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="<?php echo SITE_URL?>/lib/skins/synchronous/css/ie/v9.css" /><![endif]-->
	</head>

	<body>
	<?php echo $page_htmlreq; ?>
	<?php
$airlines = OperationsData::getAllAirlines();
foreach($airlines as $airline)
?>

	
		<div id="wrapper">
					
			<!-- Header -->
			<div id="header">
				<div class="container"> 
					
					<!-- Logo -->
					<div id="logo">
						<h1><a href="#"><?php echo $airline->name ;?></a></h1>
						<span>YOUR VIRTUAL AIRLINE!</span>
					</div>
					
			
				</div>
			</div>
			<!-- /Header -->
			<!-- Nav -->
					<nav id="menu">
  <h1 id="sitename"><?php echo $airline->name ;?></h1>
											<?php
			/*	You can modify this template into a table or something, by default
				it's list elements inside of a UL. Here's a link with some info:
				
				http://articles.sitepoint.com/article/css-anthology-tips-tricks-4/2
			 */
			Template::Show('core_navigation.tpl');
			?>
					</nav>
					<!--Side Bar-->
			<div id="page">
				<div class="container">
					<div class="row">
						<div class="3u">
							<section id="sidebard2">
							<div class="titlebar">UTC / GMT TIME</div>
                                <div class="box"><iframe src="http://free.timeanddate.com/clock/i4mhqfxk/fn9/fs16/fc9ff/tc000/ftb/bas2/bat1/bacfff/pa8/tt0/tw1/tm1/td2/th1/ta1/tb4" frameborder="0" width="100%" height="60"></iframe></div>
                                <div class="titlebar">Recent News</div>
                                <div class="box"><?php PopUpNews::PopUpNewsList(5); ?></div>
								<div class="titlebar">VA Statistics</div>
                                <div class="box"><?php Template::Show('stats.tpl');?></div>
								<div class="titlebar">Newest Pilots</div>
                                <div class="box"><?php MainController::Run('Pilots', 'RecentFrontPage', 5); ?></div>
                                <div class="titlebar">Users Online</div>
                                <div class="box"><p><i>There have been <?php echo count($usersonline)?> user(s), and <?php echo count($guestsonline);?> guest(s) online in the past <?php echo Config::Get('USERS_ONLINE_TIME')?> minutes.</i></div>
                                <div class="titlebar"><?php echo $airline->name ;?> Partners</div>
                                <div class="box"><?php Template::Show('partners.tpl');?></div>
								
							</section>
						</div>
						
						<!--Main Content -->
						<div class="9u skel-cell-important">
							<section id="content" >
								<script src="<?php echo SITE_URL?>/lib/skins/synchronous/js/slide.js"></script>						
								
								<?php echo $page_content;?>

							</section>
						</div>
					</div>

				</div>	
			</div>


			<!-- Footer -->
			<div id="footer">
				<div class="container">
					<div class="row">
						<div class="3u">
							<section id="box1">
								<header>
									<h2>Nulla facilisi</h2>
								</header>
								<ul class="style3">
									<li class="first">
										<p class="date"><a href="#">10.03.2012</a></p>
										<p><a href="#">Vestibulum sem magna, elementum ut, vestibulum facilisis. Nulla facilisi. Cum sociis natoque penatibus.</a></p>
									</li>
									<li>
										<p class="date"><a href="#">10.03.2012</a></p>
										<p><a href="#">Pellentesque erat erat, tincidunt in, eleifend, malesuada bibendum. Suspendisse sit amet  in eros bibendum condimentum. </a> </p>
									</li>
								</ul>
							</section>
						</div>
						<div class="6u">
							<section id="box2">
								<header>
									<h2>Donec dictum metus</h2>
								</header>
								<div> <a href="#" class="image full"><img src="<?php echo SITE_URL?>/lib/skins/synchronous/images/pics02.jpg" alt=""></a> </div>
								<p>Nulla enim eros, porttitor eu, tempus id, varius non, nibh. Duis enim nulla, luctus eu, dapibus lacinia, venenatis id, quam. Vestibulum imperdiet, magna nec eleifend rutrum, nunc lectus vestibulum velit, euismod lacinia quam nisl id lorem. Quisque erat. Vestibulum pellentesque, justo mollis pretium suscipit, justo nulla blandit libero, in blandit augue justo quis nisl.</p>
							</section>
						</div>
						<div class="3u">
							<section id="box3">
								<header>
									<h2>Gravida ipsum</h2>
								</header>
								<ul class="style1">
									<li class="first"><a href="#">Pellentesque quis elit non lectus eleifend purus condimentum.</a></li>
									<li><a href="#">Lorem ipsum dolort, consectetuer adipiscing dictum metus sapien.</a></li>
									<li><a href="#">Phasellus nec dictum metus in sapien pellentesque congue.</a></li>
									<li><a href="#">Cras vitae metus aliquam risus dictum metus in sapien pharetra.</a></li>
									<li><a href="#">Duis non dictum metus in sapien ante in metus commodo euismod lobortis.</a></li>
								</ul>
							</section>
						</div>
					</div>
				</div>
			</div>

			<!-- Copyright -->
			<div id="copyright">
				<div class="container">
				<a href="http://www.phpvms.net" target="_blank">powered by phpVMS</a><br>
					Design: <a href="http://templated.co">TEMPLATED</a> Images: <a href="http://unsplash.com">Unsplash</a> (<a href="http://unsplash.com/cc0">CC0</a>)
				</div>
			</div>
			
		</div>
	</body>
</html>
