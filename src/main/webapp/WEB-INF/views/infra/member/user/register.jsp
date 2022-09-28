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

<!-- Jquery CDN -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

</head>
<body>
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
								<li class="dropdown user-acc"><a href="/member/login" class="dropdown-toggle" role="button"><i class="icon-user"></i></a></li>

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
	</div>
	</header>
	</div>



	<!--======= SUB BANNER =========-->

	<!-- Content -->
	<div id="content">

		<!--======= PAGES INNER =========-->
		<section class="chart-page padding-bottom-100">
			<div class="container">

				<!-- Payments Steps -->
				<div class="shopping-cart">

					<!-- SHOPPING INFORMATION -->
					<div class="cart-ship-info register">
						<div class="row d-flex justify-content-center">

							<!-- ESTIMATE SHIPPING & TAX -->
							<div class="container">
								<h6>REGISTER</h6>
								<form id="form" name="form" method="post">
								<input type="hidden" id="MBseq" name="MBseq">
								<input type="hidden" id="AllowedNy" name="AllowedNy">
									<ul class="row">
										<!-- ID -->
										<li class="col-md-5"><label><span id="idLabel"> *ID </span><input type="text" id="MBid" name="MBid">
										</label></li>

										<!-- NAME -->
										<li class="col-md-5"><label> *NAME <input type="text" id="MBname" name="MBname">
										</label></li>

										<li class="col-md-5"><label> *PASSWORD <input type="password" id="MBpassword" name="MBpassword">
										</label></li>

										<li class="col-md-5"><label> *PASSWORD CHECK <input type="password" id="MBpasswordCheck" name="MBpasswordCheck">
										</label></li>
										
										<li class="col-md-5"><label> *EMAIL ADDRESS <input type="text" id="MBemail" name="MBemail">
										</label></li>
										
										<li class="col-md-5"><label> *PHONE <input type="text" id="MBmobile" name="MBmobile">
										</label></li>
									</ul>
									<br><br>
									<h6>BASIC ADDRESS</h6>
									<ul class="row">
										<li class="col-md-5"><label> ZIP CODE <input type="text" name="addressZipCode" value="" placeholder="">
										</label>
										</li>
										<li class="col-md-2"><label>
												<button type="submit" class="btn" style="margin-top: 25px;">SEARCH</button>
										</label></li>
										<li class="col-md-8"><label>ADDRESS <input type="text" name="addressMain" value="" placeholder="">
										</label></li>
										<li class="col-md-8"><label>DETAIL ADDRESS <input type="text" name="addressDetail" value="" placeholder="">
										</label></li>
										<li class="col-md-8"><label>REFERENCE ADDRESS <input type="text" name="addressMore" value="" placeholder="">
										</label></li>

										<!-- PHONE -->
										<li class="d-flex justify-content-center col-md-6">
											<button type="button" class="btn" id="btnSave" name="btnSave">REGISTER NOW</button>
										</li>
									</ul>
								</form>
							</div>
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

var goUrlList = "/member/memberList"; 			/* #-> */
var goUrlInst = "/member/memberInst"; 			/* #-> */
var goUrlUpdt = "/member/memberUpdt";				/* #-> */
//var goUrlUele = "/code/codeUele";				/* #-> */
//var goUrlDele = "/code/codeDele";				/* #-> */

var seq = $("input:hidden[name=MBseq]");						/* #-> */

var form = $("form[name=form]");
var formVo = $("form[name=formVo]");


$("#btnSave").on("click", function(){
	if (seq.val() == "0" || seq.val() == ""){
		alert("test2");
   		// insert
   		//if (validationInst() == false) return false;
   		form.attr("action", goUrlInst).submit();
   	} else {
   		alert("test");
   		// update
   		//keyName.val(atob(keyName.val()));
   		//if (validationUpdt() == false) return false;
   		form.attr("action", goUrlUpdt).submit();
   	}
	
}); 
$("#btnList").on("click", function(){
	formVo.attr("action", goUrlList).submit();
});


$("#MBid").on("focusout", function(){
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: "/member/checkId"
		/* ,data : $("#formLogin").serialize() */
		,data : { "MBid" : $("#MBid").val() }
		,success: function(response) {
			if(response.rt == "success") {
				$('#idLabel').css({'color':'green','font-weight':'bold'});
				$('#MBid').css({'color':'green','font-weight':'bold','border-color':'Green'});
				$('#idLabel').text(' *ID 사용 가능');
				/* document.getElementById("MBid").classList.remove('is-invalid');
				document.getElementById("MBid").classList.add('is-valid'); */

				/* document.getElementById("IdFeedback").classList.remove('invalid-feedback');
				document.getElementById("IdFeedback").classList.add('valid-feedback'); */
			 	/* document.getElementById("IdFeedback").innerText = "사용 가능 합니다."; */
				
				document.getElementById("AllowedNy").value = 1;
				
			} else {
				$('#idLabel').css({'color':'red','font-weight':'bold'});
				$('#MBid').css({'color':'red','font-weight':'bold','border-color':'red'});
				$('#idLabel').text(' *ID 사용 불가');
				/* document.getElementById("MBid").classList.remove('is-valid');
				document.getElementById("MBid").classList.add('is-invalid');
				
				document.getElementById("IdFeedback").classList.remove('valid-feedback');
				document.getElementById("IdFeedback").classList.add('invalid-feedback');
				document.getElementById("IdFeedback").innerText = "사용 불가능 합니다"; */
				
				document.getElementById("AllowedNy").value = 0;
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