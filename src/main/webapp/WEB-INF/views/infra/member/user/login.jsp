<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

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

<!-- Jquery CDN -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


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
									<button type="submit">
										<i class="icon-magnifier"></i>
									</button>
								</form>
							</div>
						</div>
						<!-- Nav Right -->
						<div class="nav-right">
							<ul class="navbar-right">

								<!-- USER INFO -->
								<li class="user-acc"><a class="dropdown-toggle" data-toggle="dropdown" role="button"><i class="icon-user"></i></a>
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
									</ul></li>

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
	</div>

	<!-- Content -->
	<div id="content">

		<!--======= PAGES INNER =========-->
		<section class="chart-page padding-top-100 padding-bottom-100">
			<div class="container">

				<!-- Payments Steps -->
				<div class="shopping-cart">

					<!-- SHOPPING INFORMATION -->
					<div class="cart-ship-info">
						<div class="row">

							<!-- ESTIMATE SHIPPING & TAX -->
							<form id="form" name="form" method="post">
								<div class="col-sm-7">
									<h6>LOGIN YOUR ACCOUNT</h6>
									<ul class="row">

										<!-- Name -->
										<li class="col-md-12"><label> USERNAME <input type="text" id="MBid" name="MBid">
										</label></li>
										<!-- LAST NAME -->
										<li class="col-md-12"><label> PASSWORD <input type="password" id="MBpassword" name="MBpassword">
										</label></li>

										<!-- LOGIN -->
										<li class="col-md-4">
											<button type="button" class="btn" id="btnLogin" name="btnLogin">LOGIN</button>
										</li>

										<!-- CREATE AN ACCOUNT -->
										<li class="col-md-3">
											<div class="checkbox margin-0 margin-top-20">
												<input id="autoLogin" class="styled" type="checkbox">
												<label for="checkbox1"> Auto Login</label>
											</div>
										</li>

										<!-- SIGN UP -->
										<li class="col-md-2">
											<div class="checkbox margin-0 margin-top-20 text-right">
												<a href="/register">SIGN UP</a>
											</div>
										</li>

										<!-- FORGET PASS -->
										<li class="col-md-3">
											<div class="checkbox margin-0 margin-top-20 text-right">
												<a href="#.">Forget Password</a>
											</div>
										</li>
									</ul>
								</div>

								<!-- SUB TOTAL -->
								<div class="col-sm-5">
									<h6>LOGIN WITH</h6>

									<ul class="login-with">
										<li><a href="#."><i class="fa fa-facebook"></i>FACEBOOK</a></li>
										<li><a href="#."><i class="fa fa-google"></i>GOOGLE</a></li>
										<li><a href="#."><i class="fa fa-n"></i>NAVER</a></li>
										<li><a href="#."><i class="fa fa-comment"></i>KAKAO</a></li>
									</ul>
									sessSeq:
									<c:out value="${sessSeq }" />
									<br>
									sessName:
									<c:out value="${sessName }" />
									<br>
									sessId:
									<c:out value="${sessId }" />
									<br>
									sessGrade:
									<c:out value="${sessGrade }" />
									<br>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>


	</div>

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
	const URL_INDEX_MAIN = "/";
	const URL_LOGIN_FORM = "/login";
	
		$("#btnLogin").on(
				"click",
				function() {
				/* 	if (validation() == false)
						return false;
 */
					$.ajax({
						async : true,
						cache : false,
						type : "post"
						/* ,dataType:"json" */
						,
						url : "/member/loginProc"
						/* ,data : $("#formLogin").serialize() */
						,
						data : {
							"MBid" : $("#MBid").val(),
							"MBpassword" : $("#MBpassword").val(),
//							"autoLogin" : $("#autoLogin").is(":checked")
						},
						success : function(response) {
							if (response.rt == "success") {
								alert("로그인성공")
									location.href = URL_INDEX_MAIN
								/* if (response.changePwd == "true") {
									location.href = URL_CHANGE_PWD_FORM;
								} else {
									location.href = URL_INDEX_MAIN;
								} */
							} else {
								alert("회원없음");
							}
						},
						error : function(jqXHR, textStatus, errorThrown) {
							alert("ajaxUpdate " + jqXHR.textStatus + " : "
									+ jqXHR.errorThrown);
						}
					});
				});
	
	$("#btnLogout").on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/logoutProc"
			,data: {}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = URL_LOGIN_FORM;
				} else {
					// by pass
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	</script>
</body>
</html>