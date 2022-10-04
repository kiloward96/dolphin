<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>

<jsp:useBean id="CodeServiceImpl" class="com.gurugan.infra.modules.code.CodeServiceImpl" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="M_Adnan">
<title>Jumal - 즐거운 주말을 위한 Jumal 샵</title>

<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
<link rel="stylesheet" type="text/css" href="/resources/rs-plugin/css/settings.css" media="screen" />

<!-- Bootstrap Core CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="/resources/css/ionicons.min.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
<link href="/resources/css/style.css" rel="stylesheet">
<link href="/resources/css/responsive.css" rel="stylesheet">

<!-- JavaScripts -->
<script src="/resources/js/modernizr.js"></script>

<!-- Online Fonts -->
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body>
	<!-- Wrap -->
	<div id="wrap">

		<!-- header -->
		<header>
			<div class="sticky">
				<div class="container full-header">

					<!-- Logo -->
					<div class="logo">
						<a href="/"><img class="img-responsive" src="/resources/images/logo.png" alt=""></a>
					</div>
					<nav class="navbar ownmenu">
						<!-- NAV -->
						<div class="collapse navbar-collapse" id="nav-open-btn">
							<div class="search">
								<form>
									<input type="search" placeholder="Search Shop">
									<button type="button">
										<i class="icon-magnifier"></i>
									</button>
								</form>
							</div>
						</div>
						<!-- Nav Right -->
						<div class="nav-right">
							<ul class="navbar-right">

								<!-- USER INFO -->
								<li class="dropdown user-acc"><a class="dropdown-toggle" data-toggle="dropdown" role="button"><i class="icon-user"></i></a>
									<ul class="dropdown-menu">
										<li>
											<h6>
												HELLO!
												<c:out value="${sessName }" />
											</h6>
										</li>
										<li><a href="#">MY CART</a></li>
										<li><a href="/login">ACCOUNT INFO</a></li>
										<li><a id="btnLogout" cursor="pointer">LOG OUT</a></li>
									</ul>
								</li>

								<!-- USER BASKET -->
								<li class="dropdown user-basket"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true"><i class="icon-basket-loaded"></i></a></li>
							</ul>
						</div>
					</nav>
				</div>
				<div class="container">
					<nav class="navbar ownmenu">
						<ul class="nav">
							<li class="nav-item active"><a href="#." class="dropdown-toggle" data-toggle="dropdown">Home</a></li>
							<li><a href="#." class="dropdown-toggle" data-toggle="dropdown">Pages</a></li>
							<li><a href="about-us_01.html">About </a></li>
							<li><a href="contact.html"> contact</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</header>



		<!--======= HOME MAIN SLIDER =========-->
		<section class="home-slider">

			<!-- SLIDE Start -->
			<div class="tp-banner-container">
				<div class="tp-banner">
					<ul>
						<!-- SLIDE  -->
						<li data-transition="random" data-slotamount="7" data-masterspeed="300" data-saveperformance="off">
							<!-- MAIN IMAGE --> <img src="/resources/images/slide-bg-2-2.jpg" alt="slider" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat"> <!-- LAYERS -->

							<div class="tp-caption font-playfair sfb tp-resizeme" data-x="center" data-hoffset="0" data-y="center" data-voffset="-160" data-speed="800" data-start="500" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1"
								data-endspeed="300" style="z-index: 7; font-size: 22px; color: #fff; max-width: auto; max-height: auto; white-space: nowrap;"
							>The Latest Product from Jumal</div> <!-- LAYER NR. 2 -->
							<div class="tp-caption sfr font-extra-bold tp-resizeme" data-x="center" data-hoffset="0" data-y="center" data-voffset="-60" data-speed="800" data-start="800" data-easing="Power3.easeInOut" data-splitin="chars" data-splitout="none" data-elementdelay="0.07" data-endelementdelay="0.1"
								data-endspeed="300" style="z-index: 6; font-size: 175px; color: #fff; text-transform: uppercase; white-space: nowrap;"
							>summer</div> <!-- LAYER NR. 2 -->
							<div class="tp-caption sfr font-playfair tp-resizeme" data-x="center" data-hoffset="0" data-y="center" data-voffset="40" data-speed="800" data-start="1300" data-easing="Power3.easeInOut" data-splitin="chars" data-splitout="none" data-elementdelay="0.07" data-endelementdelay="0.1"
								data-endspeed="300" style="z-index: 6; font-size: 100px; color: #fff; text-transform: uppercase; white-space: nowrap;"
							>collection</div> <!-- LAYER NR. 4 -->
							<div class="tp-caption lfb tp-resizeme" data-x="center" data-hoffset="0" data-y="center" data-voffset="180" data-speed="800" data-start="2200" data-easing="Power3.easeInOut" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300" data-scrolloffset="0" style="z-index: 8;">
								<a href="#." class="btn btn-round">SHOP NOW</a>
							</div>
						</li>

						<!-- SLIDE  -->
						<li data-transition="random" data-slotamount="7" data-masterspeed="300" data-saveperformance="off">
							<!-- MAIN IMAGE --> <img src="/resources/images/slide-bg-2.jpg" alt="slider" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat"> <!-- LAYERS --> <!-- LAYER NR. 1 -->
							<div class="tp-caption font-playfair sfb tp-resizeme" data-x="center" data-hoffset="0" data-y="center" data-voffset="-150" data-speed="800" data-start="500" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.1" data-endelementdelay="0.1"
								data-endspeed="300" style="z-index: 7; font-size: 18px; color: #fff; max-width: auto; max-height: auto; white-space: nowrap;"
							>The Latest Product from ecoshop</div> <!-- LAYER NR. 2 -->
							<div class="tp-caption sfr font-regular tp-resizeme letter-space-4" data-x="center" data-hoffset="0" data-y="center" data-voffset="-50" data-speed="800" data-start="800" data-easing="Power3.easeInOut" data-splitin="chars" data-splitout="none" data-elementdelay="0.07"
								data-endelementdelay="0.1" data-endspeed="300" style="z-index: 6; font-size: 78px; color: #fff; text-transform: uppercase; white-space: nowrap;"
							>look beautiful</div> <!-- LAYER NR. 2 -->
							<div class="tp-caption sfr font-extra-bold tp-resizeme letter-space-4" data-x="center" data-hoffset="0" data-y="center" data-voffset="60" data-speed="800" data-start="1300" data-easing="Power3.easeInOut" data-splitin="chars" data-splitout="none" data-elementdelay="0.07"
								data-endelementdelay="0.1" data-endspeed="300" style="z-index: 6; font-size: 140px; color: #fff; text-transform: uppercase; white-space: nowrap;"
							>this season</div> <!-- LAYER NR. 4 -->
							<div class="tp-caption sfb font-extra-bold tp-resizeme" data-x="center" data-hoffset="120" data-y="center" data-voffset="200" data-speed="800" data-start="2200" data-easing="Power3.easeInOut" data-splitin="none" data-splitout="none" data-elementdelay="0.07" data-endelementdelay="0.1"
								data-endspeed="300" style="z-index: 6; font-size: 60px; color: #fff; text-transform: uppercase; white-space: nowrap;"
							>
								<small class="font-regular">$</small> 299
							</div> <!-- LAYER NR. 4 -->
							<div class="tp-caption lfb tp-scrollbelowslider tp-resizeme" data-x="center" data-hoffset="-120" data-y="center" data-voffset="200" data-speed="800" data-start="2200" data-easing="Power3.easeInOut" data-elementdelay="0.1" data-endelementdelay="0.1" data-endspeed="300" data-scrolloffset="0"
								style="z-index: 8;"
							>
								<a href="#." class="btn">BUY NOW</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</section>

		<!-- Content -->
		<div id="content">

			<!-- New Arrival -->
			<section class="padding-top-100 padding-bottom-100">
				<div class="container">

					<!-- Main Heading -->
					<div class="heading text-center">
						<h4>new arrival</h4>
						<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec faucibus maximus vehicula. Sed feugiat, tellus vel tristique posuere, diam</span>
					</div>
				</div>

				<!-- New Arrival -->
				<div class="arrival-block">

					<!-- Item -->
					<div class="item">
						<!-- Images -->
						<img class="img-1" src="/resources/images/item-img-1-1.jpg" alt=""> <img class="img-2" src="/resources/images/item-img-1-1-1.jpg" alt="">
						<!-- Overlay  -->
						<div class="overlay">
							<!-- Price -->
							<span class="price"><small>$</small>299</span>
							<div class="position-center-center">
								<a href="/resources/images/item-img-1-1.jpg" data-lighter><i class="icon-magnifier"></i></a>
							</div>
						</div>
						<!-- Item Name -->
						<div class="item-name">
							<a href="./product-detail.html">wooden chair</a>
							<p>Lorem ipsum dolor sit amet</p>
						</div>
					</div>

					<!-- Item -->
					<div class="item">
						<!-- Images -->
						<img class="img-1" src="/resources/images/item-img-1-2.jpg" alt=""> <img class="img-2" src="/resources/images/item-img-1-1-1.jpg" alt="">
						<!-- Overlay  -->
						<div class="overlay">
							<!-- Price -->
							<span class="price"><small>$</small>299</span>
							<div class="position-center-center">
								<a href="/resources/images/item-img-1-2.jpg" data-lighter><i class="icon-magnifier"></i></a>
							</div>
						</div>
						<!-- Item Name -->
						<div class="item-name">
							<a href="#.">MINIMALIST WOO TOYS</a>
							<p>Lorem ipsum dolor sit amet</p>
						</div>
					</div>

					<!-- Item -->
					<div class="item">
						<!-- Images -->
						<img class="img-1" src="/resources/images/item-img-1-3.jpg" alt=""> <img class="img-2" src="/resources/images/item-img-1-1-1.jpg" alt="">
						<!-- Overlay  -->
						<div class="overlay">
							<!-- Price -->
							<span class="price"><small>$</small>299</span>
							<div class="position-center-center">
								<a href="/resources/images/item-img-1-3.jpg" data-lighter><i class="icon-magnifier"></i></a>
							</div>
						</div>
						<!-- Item Name -->
						<div class="item-name">
							<a href="#.">Concrete Shaving Kit</a>
							<p>Lorem ipsum dolor sit amet</p>
						</div>
					</div>

					<!-- Item -->
					<div class="item">
						<!-- Images -->
						<img class="img-1" src="/resources/images/item-img-1-4.jpg" alt=""> <img class="img-2" src="/resources/images/item-img-1-1-1.jpg" alt="">
						<!-- Overlay  -->
						<div class="overlay">
							<!-- Price -->
							<span class="price"><small>$</small>299</span>
							<div class="position-center-center">
								<a href="/resources/images/item-img-1-4.jpg" data-lighter><i class="icon-magnifier"></i></a>
							</div>
						</div>
						<!-- Item Name -->
						<div class="item-name">
							<a href="#.">PARAGON PENDANT</a>
							<p>Lorem ipsum dolor sit amet</p>
						</div>
					</div>

					<!-- Item -->
					<div class="item">
						<!-- Images -->
						<img class="img-1" src="/resources/images/item-img-1-5.jpg" alt=""> <img class="img-2" src="/resources/images/item-img-1-1-1.jpg" alt="">
						<!-- Overlay  -->
						<div class="overlay">
							<!-- Price -->
							<span class="price"><small>$</small>299</span>
							<div class="position-center-center">
								<a href="/resources/images/item-img-1-5.jpg" data-lighter><i class="icon-magnifier"></i></a>
							</div>
						</div>
						<!-- Item Name -->
						<div class="item-name">
							<a href="#.">crative lamp</a>
							<p>Lorem ipsum dolor sit amet</p>
						</div>
					</div>

					<!-- Item -->
					<div class="item">
						<!-- Images -->
						<img class="img-1" src="/resources/images/item-img-1-6.jpg" alt=""> <img class="img-2" src="/resources/images/item-img-1-1-1.jpg" alt="">
						<!-- Overlay  -->
						<div class="overlay">
							<!-- Price -->
							<span class="price"><small>$</small>299</span>
							<div class="position-center-center">
								<a href="/resources/images/item-img-1-6.jpg" data-lighter><i class="icon-magnifier"></i></a>
							</div>
						</div>
						<!-- Item Name -->
						<div class="item-name">
							<a href="#.">ECO FRIENDLY</a>
							<p>Lorem ipsum dolor sit amet</p>
						</div>
					</div>

					<!-- Item -->
					<div class="item">
						<!-- Images -->
						<img class="img-1" src="/resources/images/item-img-1-7.jpg" alt=""> <img class="img-2" src="/resources/images/item-img-1-1-1.jpg" alt="">
						<!-- Overlay  -->
						<div class="overlay">
							<!-- Price -->
							<span class="price"><small>$</small>299</span>
							<div class="position-center-center">
								<a href="/resources/images/item-img-1-7.jpg" data-lighter><i class="icon-magnifier"></i></a>
							</div>
						</div>
						<!-- Item Name -->
						<div class="item-name">
							<a href="#.">GEOMETRY STOOL</a>
							<p>Lorem ipsum dolor sit amet</p>
						</div>
					</div>

					<!-- Item -->
					<div class="item">
						<!-- Images -->
						<img class="img-1" src="/resources/images/item-img-1-8.jpg" alt=""> <img class="img-2" src="/resources/images/item-img-1-1-1.jpg" alt="">
						<!-- Overlay  -->
						<div class="overlay">
							<!-- Price -->
							<span class="price"><small>$</small>299</span>
							<div class="position-center-center">
								<a href="/resources/images/item-img-1-8.jpg" data-lighter><i class="icon-magnifier"></i></a>
							</div>
						</div>
						<!-- Item Name -->
						<div class="item-name">
							<a href="#.">CERAMIC STONE VASE</a>
							<p>Lorem ipsum dolor sit amet</p>
						</div>
					</div>
				</div>
			</section>

			<!-- Popular Products -->
			<section class="padding-top-50 padding-bottom-150">
				<div class="container">

					<!-- Main Heading -->
					<div class="heading text-center">
						<h4>popular products</h4>
						<span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec faucibus maximus vehicula. Sed feugiat, tellus vel tristique posuere, diam</span>
					</div>

					<!-- Popular Item Slide -->
					<div class="papular-block block-slide">

						<!-- Item -->
						<div class="item">
							<!-- Item img -->
							<div class="item-img">
								<img class="img-1" src="/resources/images/product-1.jpg" alt=""> <img class="img-2" src="/resources/images/product-2.jpg" alt="">
								<!-- Overlay -->
								<div class="overlay">
									<div class="position-center-center">
										<div class="inn">
											<a href="/resources/images/product-1.jpg" data-lighter><i class="icon-magnifier"></i></a> <a href="#."><i class="icon-basket"></i></a> <a href="#."><i class="icon-heart"></i></a>
										</div>
									</div>
								</div>
							</div>
							<!-- Item Name -->
							<div class="item-name">
								<a href="#.">stone cup</a>
								<p>Lorem ipsum dolor sit amet</p>
							</div>
							<!-- Price -->
							<span class="price"><small>$</small>299</span>
						</div>

						<!-- Item -->
						<div class="item">
							<!-- Item img -->
							<div class="item-img">
								<img class="img-1" src="/resources/images/product-2.jpg" alt=""> <img class="img-2" src="/resources/images/product-2.jpg" alt="">
								<!-- Overlay -->
								<div class="overlay">
									<div class="position-center-center">
										<div class="inn">
											<a href="/resources/images/product-2.jpg" data-lighter><i class="icon-magnifier"></i></a> <a href="#."><i class="icon-basket"></i></a> <a href="#."><i class="icon-heart"></i></a>
										</div>
									</div>
								</div>
							</div>
							<!-- Item Name -->
							<div class="item-name">
								<a href="#.">gray bag</a>
								<p>Lorem ipsum dolor sit amet</p>
							</div>
							<!-- Price -->
							<span class="price"><small>$</small>299</span>
						</div>

						<!-- Item -->
						<div class="item">
							<!-- Item img -->
							<div class="item-img">
								<img class="img-1" src="/resources/images/product-3.jpg" alt=""> <img class="img-2" src="/resources/images/product-2.jpg" alt="">
								<!-- Overlay -->
								<div class="overlay">
									<div class="position-center-center">
										<div class="inn">
											<a href="/resources/images/product-3.jpg" data-lighter><i class="icon-magnifier"></i></a> <a href="#."><i class="icon-basket"></i></a> <a href="#."><i class="icon-heart"></i></a>
										</div>
									</div>
								</div>
							</div>
							<!-- Item Name -->
							<div class="item-name">
								<a href="#.">chiar</a>
								<p>Lorem ipsum dolor sit amet</p>
							</div>
							<!-- Price -->
							<span class="price"><small>$</small>299</span>
						</div>

						<!-- Item -->
						<div class="item">
							<!-- Item img -->
							<div class="item-img">
								<img class="img-1" src="/resources/images/product-4.jpg" alt=""> <img class="img-2" src="/resources/images/product-2.jpg" alt="">
								<!-- Overlay -->
								<div class="overlay">
									<div class="position-center-center">
										<div class="inn">
											<a href="/resources/images/product-4.jpg" data-lighter><i class="icon-magnifier"></i></a> <a href="#."><i class="icon-basket"></i></a> <a href="#."><i class="icon-heart"></i></a>
										</div>
									</div>
								</div>
							</div>
							<!-- Item Name -->
							<div class="item-name">
								<a href="#.">STool</a>
								<p>Lorem ipsum dolor sit amet</p>
							</div>
							<!-- Price -->
							<span class="price"><small>$</small>299</span>
						</div>
					</div>
				</div>
			</section>





			<!--======= FOOTER =========-->
			<footer>


				<!-- Rights -->
				<div class="about-footer">
					<div class="row">
						<img class="margin-bottom-30" src="/resources/images/logo-foot.PNG" alt="">
						<p>
							<i class="icon-pointer"></i> Gangdong-gu, Seoul, Korea.
						</p>
						<p>
							<i class="icon-call-end"></i> 010.1111.2222
						</p>
						<p>
							<i class="icon-envelope"></i> info@jumal.co.kr
						</p>
					</div>
				</div>

				<div class="rights">
					<p>© 2022 jumal All right reserved.</p>
					<div class="scroll">
						<a href="#wrap" class="go-up"><i class="lnr lnr-arrow-up"></i></a>
					</div>
				</div>
			</footer>

			<!--======= RIGHTS =========-->

		</div>
		<script src="/resources/js/jquery-1.11.3.min.js"></script>
		<script src="/resources/js/bootstrap.min.js"></script>
		<script src="/resources/js/own-menu.js"></script>
		<script src="/resources/js/jquery.lighter.js"></script>
		<script src="/resources/js/owl.carousel.min.js"></script>

		<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
		<script type="text/javascript" src="/resources/rs-plugin/js/jquery.tp.t.min.js"></script>
		<script type="text/javascript" src="/resources/rs-plugin/js/jquery.tp.min.js"></script>
		<script src="/resources/js/main.js"></script>
		<script src="/resources/js/main.js"></script>

		<script type="text/javascript">
			var URL_LOGIN_FORM = "/login";

			$("#btnLogout").on(
					"click",
					function() {
						$.ajax({
							async : true,
							cache : false,
							type : "post",
							url : "/member/logoutProc",
							data : {},
							success : function(response) {
								if (response.rt == "success") {
									location.href = URL_LOGIN_FORM;
								} else {
									// by pass
								}
							},
							error : function(jqXHR, textStatus, errorThrown) {
								alert("ajaxUpdate " + jqXHR.textStatus + " : "
										+ jqXHR.errorThrown);
							}
						});
					});
		</script>
</body>
</html>