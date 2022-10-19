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
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Jumal 관리자</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<!-- <link href="assets/img/favicon.png" rel="icon"> -->
<link href="/resources/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="/resources/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="/resources/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="/resources/assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="/resources/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="/resources/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="/resources/assets/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/resources/assets/css/style.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: NiceAdmin - v2.3.1
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<!-- Jquery CDN -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

</head>

<body>

	<!-- ======= Header ======= -->
	<header id="header" class="header fixed-top d-flex align-items-center">

		<div class="d-flex align-items-center justify-content-between">
			<a href="index.html" class="logo d-flex align-items-center"> <img src="/resources/assets/img/logo.png" alt=""> <span class="jumal d-none d-lg-block">Jumal</span>
			</a> <i class="bi bi-list toggle-sidebar-btn"></i>
		</div>
		<!-- End Logo -->

		<div class="search-bar">
			<div class="search-form d-flex align-items-center">
				<!--         <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button> -->
				<a href="/code/codeList" class="code-title  d-flex align-items-center"> <span class="d-none d-lg-block nav-link active">코드 관리</span>
				</a> <a href="/codeGroup/codeGroupList" class="code-title d-flex align-items-center"> <span class="d-none d-lg-block nav-link">코드 그룹 관리</span>
				</a> <a href="/member/memberList" class="code-title d-flex align-items-center"> <span class="d-none d-lg-block nav-link">사용자 관리</span>
				</a>
			</div>
		</div>

		<div class="search-bar">
			<div class="search-form d-flex align-items-center">
				<input type="text" name="query" placeholder="Search" title="Enter search keyword">
				<button type="submit" title="Search">
					<i class="bi bi-search"></i>
				</button>
			</div>
		</div>
		<!-- End Search Bar -->

		<nav class="header-nav ms-auto">
			<ul class="d-flex align-items-center">

				<li class="nav-item d-block d-lg-none"><a class="nav-link nav-icon search-bar-toggle " href="#"> <i class="bi bi-search"></i>
				</a></li>
				<!-- End Search Icon-->

				<li class="nav-item dropdown"><a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown"> <i class="bi bi-bell"></i> <span class="badge bg-primary badge-number">4</span>
				</a> <!-- End Notification Icon -->

					<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
						<li class="dropdown-header">You have 4 new notifications <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="notification-item"><i class="bi bi-exclamation-circle text-warning"></i>
							<div>
								<h4>Lorem Ipsum</h4>
								<p>Quae dolorem earum veritatis oditseno</p>
								<p>30 min. ago</p>
							</div></li>

						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="notification-item"><i class="bi bi-x-circle text-danger"></i>
							<div>
								<h4>Atque rerum nesciunt</h4>
								<p>Quae dolorem earum veritatis oditseno</p>
								<p>1 hr. ago</p>
							</div></li>

						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="notification-item"><i class="bi bi-check-circle text-success"></i>
							<div>
								<h4>Sit rerum fuga</h4>
								<p>Quae dolorem earum veritatis oditseno</p>
								<p>2 hrs. ago</p>
							</div></li>

						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="notification-item"><i class="bi bi-info-circle text-primary"></i>
							<div>
								<h4>Dicta reprehenderit</h4>
								<p>Quae dolorem earum veritatis oditseno</p>
								<p>4 hrs. ago</p>
							</div></li>

						<li>
							<hr class="dropdown-divider">
						</li>
						<li class="dropdown-footer"><a href="#">Show all notifications</a></li>

					</ul> <!-- End Notification Dropdown Items --></li>
				<!-- End Notification Nav -->

				<li class="nav-item dropdown"><a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown"> <i class="bi bi-chat-left-text"></i> <span class="badge bg-success badge-number">3</span>
				</a> <!-- End Messages Icon -->

					<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
						<li class="dropdown-header">You have 3 new messages <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="message-item"><a href="#"> <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
								<div>
									<h4>Maria Hudson</h4>
									<p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
									<p>4 hrs. ago</p>
								</div>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="message-item"><a href="#"> <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
								<div>
									<h4>Anna Nelson</h4>
									<p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
									<p>6 hrs. ago</p>
								</div>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="message-item"><a href="#"> <img src="assets/img/messages-3.jpg" alt="" class="rounded-circle">
								<div>
									<h4>David Muldon</h4>
									<p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
									<p>8 hrs. ago</p>
								</div>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li class="dropdown-footer"><a href="#">Show all messages</a></li>

					</ul> <!-- End Messages Dropdown Items --></li>
				<!-- End Messages Nav -->

				<li class="nav-item dropdown pe-3"><a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown"> <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle"> <span class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
				</a> <!-- End Profile Iamge Icon -->

					<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li class="dropdown-header">
							<h6>Kevin Anderson</h6> <span>Web Designer</span>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center" href="users-profile.html"> <i class="bi bi-person"></i> <span>My Profile</span>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center" href="users-profile.html"> <i class="bi bi-gear"></i> <span>Account Settings</span>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center" href="pages-faq.html"> <i class="bi bi-question-circle"></i> <span>Need Help?</span>
						</a></li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center" href="#"> <i class="bi bi-box-arrow-right"></i> <span>Sign Out</span>
						</a></li>

					</ul> <!-- End Profile Dropdown Items --></li>
				<!-- End Profile Nav -->

			</ul>
		</nav>
		<!-- End Icons Navigation -->

	</header>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<aside id="sidebar" class="sidebar">

		<ul class="sidebar-nav" id="sidebar-nav">

			<li class="nav-item"><a class="nav-link collapsed" href="index.html"> <i class="bi bi-grid"></i> <span>Dashboard</span>
			</a></li>
			<!-- End Dashboard Nav -->

			<li class="nav-item"><a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#"> <i class="bi bi-menu-button-wide"></i><span>Components</span><i class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
					<li><a href="components-alerts.html"> <i class="bi bi-circle"></i><span>Alerts</span>
					</a></li>
					<li><a href="components-accordion.html"> <i class="bi bi-circle"></i><span>Accordion</span>
					</a></li>
					<li><a href="components-badges.html"> <i class="bi bi-circle"></i><span>Badges</span>
					</a></li>
					<li><a href="components-breadcrumbs.html"> <i class="bi bi-circle"></i><span>Breadcrumbs</span>
					</a></li>
					<li><a href="components-buttons.html"> <i class="bi bi-circle"></i><span>Buttons</span>
					</a></li>
					<li><a href="components-cards.html"> <i class="bi bi-circle"></i><span>Cards</span>
					</a></li>
					<li><a href="components-carousel.html"> <i class="bi bi-circle"></i><span>Carousel</span>
					</a></li>
					<li><a href="components-list-group.html"> <i class="bi bi-circle"></i><span>List group</span>
					</a></li>
					<li><a href="components-modal.html"> <i class="bi bi-circle"></i><span>Modal</span>
					</a></li>
					<li><a href="components-tabs.html"> <i class="bi bi-circle"></i><span>Tabs</span>
					</a></li>
					<li><a href="components-pagination.html"> <i class="bi bi-circle"></i><span>Pagination</span>
					</a></li>
					<li><a href="components-progress.html"> <i class="bi bi-circle"></i><span>Progress</span>
					</a></li>
					<li><a href="components-spinners.html"> <i class="bi bi-circle"></i><span>Spinners</span>
					</a></li>
					<li><a href="components-tooltips.html"> <i class="bi bi-circle"></i><span>Tooltips</span>
					</a></li>
				</ul></li>
			<!-- End Components Nav -->

			<li class="nav-item"><a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#"> <i class="bi bi-journal-text"></i><span>Forms</span><i class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
					<li><a href="forms-elements.html"> <i class="bi bi-circle"></i><span>Form Elements</span>
					</a></li>
					<li><a href="forms-layouts.html"> <i class="bi bi-circle"></i><span>Form Layouts</span>
					</a></li>
					<li><a href="forms-editors.html"> <i class="bi bi-circle"></i><span>Form Editors</span>
					</a></li>
					<li><a href="forms-validation.html"> <i class="bi bi-circle"></i><span>Form Validation</span>
					</a></li>
				</ul></li>
			<!-- End Forms Nav -->

			<li class="nav-item"><a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#"> <i class="bi bi-layout-text-window-reverse"></i><span>Tables</span><i class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
					<li><a href="tables-general.html"> <i class="bi bi-circle"></i><span>General Tables</span>
					</a></li>
					<li><a href="tables-data.html"> <i class="bi bi-circle"></i><span>Data Tables</span>
					</a></li>
				</ul></li>
			<!-- End Tables Nav -->

			<li class="nav-item"><a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#"> <i class="bi bi-bar-chart"></i><span>Charts</span><i class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
					<li><a href="charts-chartjs.html"> <i class="bi bi-circle"></i><span>Chart.js</span>
					</a></li>
					<li><a href="charts-apexcharts.html"> <i class="bi bi-circle"></i><span>ApexCharts</span>
					</a></li>
					<li><a href="charts-echarts.html"> <i class="bi bi-circle"></i><span>ECharts</span>
					</a></li>
				</ul></li>
			<!-- End Charts Nav -->

			<li class="nav-item"><a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#"> <i class="bi bi-gem"></i><span>Icons</span><i class="bi bi-chevron-down ms-auto"></i>
			</a>
				<ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
					<li><a href="icons-bootstrap.html"> <i class="bi bi-circle"></i><span>Bootstrap Icons</span>
					</a></li>
					<li><a href="icons-remix.html"> <i class="bi bi-circle"></i><span>Remix Icons</span>
					</a></li>
					<li><a href="icons-boxicons.html"> <i class="bi bi-circle"></i><span>Boxicons</span>
					</a></li>
				</ul></li>
			<!-- End Icons Nav -->

			<li class="nav-heading">Pages</li>

			<li class="nav-item"><a class="nav-link collapsed" href="users-profile.html"> <i class="bi bi-person"></i> <span>Profile</span>
			</a></li>
			<!-- End Profile Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed" href="pages-faq.html"> <i class="bi bi-question-circle"></i> <span>F.A.Q</span>
			</a></li>
			<!-- End F.A.Q Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed" href="pages-contact.html"> <i class="bi bi-envelope"></i> <span>Contact</span>
			</a></li>
			<!-- End Contact Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed" href="pages-register.html"> <i class="bi bi-card-list"></i> <span>Register</span>
			</a></li>
			<!-- End Register Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed" href="pages-login.html"> <i class="bi bi-box-arrow-in-right"></i> <span>Login</span>
			</a></li>
			<!-- End Login Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed" href="pages-error-404.html"> <i class="bi bi-dash-circle"></i> <span>Error 404</span>
			</a></li>
			<!-- End Error 404 Page Nav -->

			<li class="nav-item"><a class="nav-link collapsed" href="pages-blank.html"> <i class="bi bi-file-earmark"></i> <span>Blank</span>
			</a></li>
			<!-- End Blank Page Nav -->

		</ul>

	</aside>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>코드 관리</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item"><a href="/product/productList">제품 목록</a></li>
					<li class="breadcrumb-item active">제품 관리</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg">
					<!-- <form id="form" name="form" method="post" > -->
					<form id="form" name="form" method="post" autocomplete="off" enctype="multipart/form-data">
						<input type="hidden" id="AllowedNy" name="AllowedNy">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title fw-bold">제품 등록</h5>
								<div class="row mt-3 mb-3">
									<%-- <div class="col">
										<label for="inputId" class="form-label text bold">코드 그룹</label>
										<c:if test="${empty list}">
										<select class="form-select" name="CCcommonCodeGroup_seq">
												<!-- <option value="" selected>선택</option> -->
										<c:forEach items="${list}" var="list" varStatus="status">
												<option value="<c:out value="${list.CCGseq}"></c:out>"><c:out value="${list.CCGgroupName}" /></option>
												<c:if test="${empty item.CCGseq }">selected</c:if><c:out value="${list.CCGgroupName}" />
										</c:forEach>
										</select>
									</div> --%>
									<div class="col">
										<label for="inputId" class="form-label text bold">제품 판매 상태</label>
										<select class="form-select" id="PDstatus" name="PDstatus">
											<option value="1" <c:if test="${item.PDstatus eq 1}">selected</c:if>>품절</option>
											<option value="0" <c:if test="${item.PDstatus eq 0}">selected</c:if>>재고있음</option>
										</select>
									</div>
									<div class="col"></div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<label for="PDseq" class="form-label">제품 번호</label>
											<input type="text" class="form-control" placeholder="자동생성" readonly id="PDseq" name="PDseq" value="<c:out value="${item.PDseq }"/>">
										</div>
									</div>
									<div class="col">
										<div class="m-auto">
											<label for="PDproductName" class="form-label">제품 명</label>
											<input type="text" class="form-control" id="PDproductName" name="PDproductName" value="<c:out value="${item.PDproductName }"/>">
										</div>
									</div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<label for="PDprice" class="form-label">제품 가격</label>
											<%-- <input type="text" class="form-control" id="PDprice" name="PDprice" value="<fmt:formatNumber value="${item.PDprice}" pattern="#,###"/>"> --%>
											<input type="text" class="form-control" id="PDprice" name="PDprice" value="<c:out value="${item.PDprice}"/>">
										</div>
									</div>
									<div class="col">
										<div class="m-auto">
											<label for="PDstock" class="form-label">수량</label>
											<input type="text" class="form-control" id="PDstock" name="PDstock" value="<c:out value="${item.PDstock }"/>">
										</div>
									</div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<c:set var="listCodeCategory" value="${CodeServiceImpl.selectListCachedCode('17')}" />
											<label for="PDcategory" class="form-label">제품 카테고리</label>
											<%-- <input type="text" class="form-control" id="PDcategory" name="PDcategory" value="<c:out value="${item.PDcategory }"/>"> --%>
											<select class="form-select" id="PDcategory" name="PDcategory">
												<option value="" <c:if test="${item.PDcategory eq 0}">selected</c:if>>카테고리 선택</option>
												<c:forEach items="${listCodeCategory}" var="listCategory" varStatus="statusCategory">
													<option value="<c:out value="${listCategory.CCseq }"/>" <c:if test="${listCategory.CCseq eq item.PDcategory }"> selected </c:if>>
														<c:out value="${listCategory.CCcodeName }" /></option>
												</c:forEach>
											</select>
										</div>
									</div>
									<div class="col">
										<label for="PDdelYn" class="form-label text bold">제품 삭제 여부</label>
										<select class="form-select" name="PDdelYn">
											<option value="0" <c:if test="${item.PDdelYn eq 0}">selected</c:if>>No</option>
											<option value="1" <c:if test="${item.PDdelYn eq 1}">selected</c:if>>Yes</option>
										</select>
									</div>
								</div>
							 	<div class="row mt-3 mb-3">
									<c:set var="type" value="2" />
									<!-- #-> -->
									<c:set var="name" value="uploadImg" />
									<!-- #-> -->
									<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0" />
									<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq" />
									<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile" />
									<label for="uploadImg" class="addImgBtn" style="cursor: pointer;">+</label>
									<input type="file" class="upload-hidden" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
									<div id="<c:out value="${name }"/>Preview" class="addScroll">
										<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
											<c:if test="${listUploaded.type eq type }">
												<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" style="display: inline-block; height: 95px;">
													<img src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded" width="85px" height="85px" style="cursor: pointer;" onClick="openViewer(<c:out value="${listUploaded.type }"/>, <c:out value="${listUploaded. sort }"/>);">
													<div style="position: relative; top: -85px; left: 5px">
														<span style="color: red; cursor: pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')">X</span>
													</div>
												</div>
											</c:if>
										</c:forEach>
									</div>
									<%--   <div class="filebox clearfix">
										<div class="inputFile">
											<c:set var="type" value="2" />
											<c:set var="name" value="uploadImg" />
											<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0" />
											<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq" />
											<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile" />
											<label for="uploadImg" class="addImgBtn" style="cursor: pointer;">+</label>
											<input class="upload-hidden" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
											<!-- <input type="file" id="productUploadedImage" name="productUploadedImage" class="upload-hidden" accept=".jpg, .png, .gif" multiple> -->
											<!-- <button type="button" id="btnReset" class="btn btn-danger">리셋</button> -->
										</div>
										<ul id="Preview" class="sortable">
										</ul>
									</div> --%> 
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">설명</label>
											<textarea class="form-control" rows="3" id="formGroupExampleInput"></textarea>
										</div>
									</div>
									<div class="col"></div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<table>
												<label for="inputId" class="form-label"><h5 class="card-title fw-bold">제품 옵션</h5></label>
												<tr>
													<th>옵션 순번</th>
													<th>옵션 구분</th>
													<th>옵션 명</th>
													<th>옵션 삭제 여부</th>
												</tr>
												<c:set var="listCodeOptionMain" value="${CodeServiceImpl.selectListCachedCode('3')}" />
												<c:forEach items="${option}" var="option" varStatus="status">
													<tr>
														<input type="hidden" id="POproductSeq" name="POproductSeq" value="<c:out value="${option.POproductSeq }"/>">
														<td><input type="text" class="form-control" id="POseq" name="POseq" readonly value="<c:out value="${option.POseq }"/>"></td>
														<td><select class="form-select" id="POoptionMain" name="POoptionMain">
																<%-- <input type="text" class="form-control" id="POoptionmain" name="POoptionmain" value="<c:out value="${option.POoptionmain }"/>"> --%>
																<option value="" <c:if test="${option.POoptionMain eq 0}">selected</c:if>>옵션 선택</option>
																<c:forEach items="${listCodeOptionMain}" var="listOptionMain" varStatus="statusOptionMain">
																	<option value="<c:out value="${option.POoptionMain }"/>" <c:if test="${listOptionMain.CCseq eq option.POoptionMain }"> selected </c:if>>
																		<c:out value="${listOptionMain.CCcodeName }" /></option>
																</c:forEach>
															</select></td>
														<td><input type="text" class="form-control" id="POoptionSub" name="POoptionSub" value="<c:out value="${option.POoptionSub }"/>"></td>
														<td><select class="form-select" name="POdelYn">
																<option value="0" <c:if test="${option.POdelYn eq 0}">selected</c:if>>No</option>
																<option value="1" <c:if test="${option.POdelYn eq 1}">selected</c:if>>Yes</option>
															</select></td>
													</tr>
												</c:forEach>
											</table>
										</div>
									</div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="row">
										<div class="text-center mt-3 mb-3">
											<button type="button" class="btn btn-success" id="btnSave" name="btnSave">
												<i class='bx bxs-save'> 저장</i>
											</button>
											<button type="reset" class="btn btn-danger">
												<i class='bx bx-minus-circle'> 취소</i>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
					<form name="formVo" id="formVo" method="get">
						<!-- *Vo.jsp s -->
						<%@include file="productVo.jsp"%>
						<!-- #-> -->
						<!-- *Vo.jsp e -->
					</form>
				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
		</div>
		<div class="credits">
			<!-- All the links in the footer should remain intact. -->
			<!-- You can delete the links only if you purchased the pro version. -->
			<!-- Licensing information: https://bootstrapmade.com/license/ -->
			<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
			Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="/resources/assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="/resources/assets/vendor/chart.js/chart.min.js"></script>
	<script src="/resources/assets/vendor/echarts/echarts.min.js"></script>
	<script src="/resources/assets/vendor/quill/quill.min.js"></script>
	<script src="/resources/assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="/resources/assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="/resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="/resources/assets/js/main.js"></script>

	<script type="text/javascript">
		//	var CCGseqChar = document.getElementById("CCGseqChar");
		//	var CCGgroupName = document.getElementById("CCGgroupName");

		//		function CGsubmit() {
		//	  		if(CCGseqChar.value == '' || CCGseqChar.value == null) {
		//				document.getElementById("basicSeqChar").style.display = 'none';
		//				document.getElementById("alertSeqChar").style.display = 'block';
		//				
		//				return false;

		//			} else if (CCGgroupName.value == '' || CCGgroupName.value == null ) {
		//				document.getElementById("basicGroupName").style.display = 'none';
		//				document.getElementById("alertGroupName").style.display = 'block';

		//				return false;

		//			} else {
		//				alert(document.getElementById("CCGseqChar").value); 	 			
		//				document.getElementById("inputForm").submit();

		//				return true;

		//	 		}
		//		}
		var goUrlList = "/product/productList"; /* #-> */
		var goUrlInst = "/product/productInst"; /* #-> */
		var goUrlUpdt = "/product/productUpdt"; /* #-> */
		//		var goUrlUele = "/code/codeUele";				/* #-> */
		//		var goUrlDele = "/code/codeDele";				/* #-> */

		var seq = $("input:text[name=PDseq]"); /* #-> */

		var form = $("form[name=form]");
		var formVo = $("form[name=formVo]");

		$("#btnSave").on("click", function() {
			if (seq.val() == "0" || seq.val() == "") {
				alert("insert");
				// insert
				//if (validationInst() == false) return false;
				form.attr("action", goUrlInst).submit();
			} else {
				alert("update");
				// update
				// keyName.val(atob(keyName.val()));
				//if (validationUpdt() == false) return false;
				form.attr("action", goUrlUpdt).submit();
			}

		});
		$("#btnList").on("click", function() {
			formVo.attr("action", goUrlList).submit();
		});
		
		
		/* file validiation s */
		const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
		const MAX_TOTAL_FILE_SIZE = 25 * 1024 * 1024;	//	25M
		const MAX_TOTAL_FILE_NUMBER = 5;				//	5

		function kbToMb(bytes) {
		    var e = Math.floor(Math.log(bytes)/Math.log(1024));
		
		    if(e == "-Infinity") return 0;
		    else return (bytes/Math.pow(1024, Math.floor(e))).toFixed(2).slice(0, -3);
		}
		
		// 이미지 전용
		var extArray1 = new Array();
		extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];

		// 문서관련
		var extArray2 = new Array();
		extArray2 = ["txt","pdf","hwp","doc","docx","xls","xlsx","ppt","pptx","html"];
		
		checkUploadedTotalFileNumber = function(obj, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) {
			if(allowedMaxTotalFileNumber < (filesCount + uploadedFilesCount)){
				alert("전체 파일 갯수는 "+ allowedMaxTotalFileNumber +"개 까지 허용됩니다.");
//				$("#file"+seq).val("");
//				obj.val("");
				return false;
			}
		}


		checkUploadedExt = function(objName, seq, div) {
			var ext = objName.split('.').pop().toLowerCase();
			var extArray = eval("extArray" + div);
			
			if(extArray.indexOf(ext) == -1) {
				alert("허용된 확장자가 아닙니다.");
//				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

			if(obj.size > allowedEachFileSize){
				alert("각 첨부 파일 사이즈는 "+kbToMb(allowedEachFileSize)+"MB 이내로 등록 가능합니다.");
				$("#file"+seq).val("");
				return false;
			}
		}


		checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
			if(totalSize > allowedTotalFileSize){
				alert("전체 용량은 "+kbToMb(allowedTotalFileSize)+"M를 넘을 수 없습니다.");
				$("#file"+seq).val("");
				return false;
			}
		}
		/* file validiation e */
		
		upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {

			//			objName 과 seq 는 jsp 내에서 유일 하여야 함.
			//			memberProfileImage: 1
			//			memberImage: 2
			//			memberFile : 3

			//			uiType: 1 => 이미지형
			//			uiType: 2 => 파일형
			//			uiType: 3 => 프로필형

			var files = $("#" + objName + "")[0].files;
			var filePreview = $("#" + objName + "Preview");
			var numbering = [];
			var maxNumber = 0;

			if (uiType == 1) {
				var uploadedFilesCount = document.querySelectorAll("#"
						+ objName + "Preview > div > img").length;
				var tagIds = document.querySelectorAll("#" + objName
						+ "Preview > div");

				for (var i = 0; i < tagIds.length; i++) {
					var tagId = tagIds[i].getAttribute("id").split("_");
					numbering.push(tagId[2]);
				}

				if (uploadedFilesCount > 0) {
					numbering.sort();
					maxNumber = parseInt(numbering[numbering.length - 1])
							+ parseInt(1);
				}
			} else if (uiType == 2) {
				var uploadedFilesCount = document.querySelectorAll("#"
						+ objName + "Preview > li").length;
				var tagIds = document.querySelectorAll("#" + objName
						+ "Preview > li");

				for (var i = 0; i < tagIds.length; i++) {
					var tagId = tagIds[i].getAttribute("id").split("_");
					numbering.push(tagId[2]);
				}

				if (uploadedFilesCount > 0) {
					numbering.sort();
					maxNumber = parseInt(numbering[numbering.length - 1])
							+ parseInt(1);
				}
			} else {
				// by pass
			}

			$("#" + objName + "MaxNumber").val(maxNumber);

			var totalFileSize = 0;
			var filesCount = files.length;
			var filesArray = [];

			allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
			allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
			allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;

			if (checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber,
					filesCount, uploadedFilesCount) == false) {
				return false;
			}

			for (var i = 0; i < filesCount; i++) {
				if (checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) {
					return false;
				}
				if (checkUploadedEachFileSize(files[i], seq,
						allowedEachFileSize) == false) {
					return false;
				}

				totalFileSize += files[i].size;

				filesArray.push(files[i]);
			}

			if (checkUploadedTotalFileSize(seq, totalFileSize,
					allowedTotalFileSize) == false) {
				return false;
			}

			if (uiType == 1) {
				for (var i = 0; i < filesArray.length; i++) {
					var file = filesArray[i];

					var picReader = new FileReader();
					picReader.addEventListener("load", addEventListenerCustom(
							objName, seq, i, file, filePreview, maxNumber));
					picReader.readAsDataURL(file);
				}
			} else if (uiType == 2) {
				for (var i = 0; i < filesCount; i++) {
					addUploadLi(objName, seq, i,
							$("#" + objName + "")[0].files[i].name,
							filePreview, maxNumber);
				}
			} else if (uiType == 3) {
				var fileReader = new FileReader();
				fileReader.onload = function() {
					$("#uploadImgProfilePreview")
							.attr("src", fileReader.result); /* #-> */
				}
				fileReader.readAsDataURL($("#" + objName + "")[0].files[0]);
			} else {
				return false;
			}
			return false;
		}
		
		/* fileUpload s 221019 */
		addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
		return function(event) {
			var imageFile = event.target;
			var sort = parseInt(maxNumber) + i;

			var divImage = "";
			divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
			divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "85px" height="85px">';
			divImage += '	<div style="position: relative; top:-85px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
			divImage += '</div> ';
			
			filePreview.append(divImage);
	    };
	}
	
	
	delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
		
		$("#imgDiv_"+type+"_"+sort).remove();
		
		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

		if(objDeleteSeq.val() == "") {
			objDeleteSeq.val(deleteSeq);
		} else {
			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
		}
		
		if(objDeletePathFile.val() == "") {
			objDeletePathFile.val(pathFile);
		} else {
			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
		}
	}
	
	
	addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

		var sort = parseInt(maxNumber) + i;
		
		var li ="";
		li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
		li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
		li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
		li += name;
		li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
		li +='</li>';
		
		filePreview.append(li);
	}
	
	
	delLi = function(objName, type, sort, deleteSeq, pathFile) {
		
		$("#li_"+type+"_"+sort).remove();

		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

		if(objDeleteSeq.val() == "") {
			objDeleteSeq.val(deleteSeq);
		} else {
			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
		}
		
		if(objDeletePathFile.val() == "") {
			objDeletePathFile.val(pathFile);
		} else {
			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
		}
	}
	
	openViewer = function (type, sort) {
		$("#modalImgViewer").modal("show");
	}
		/* fileUpload e 221019 */
		
		
		
		
		

		/* fileUpload s 221018 */
/*		 $(function() {
		//드래그 앤 드롭
			$(".sortable").sortable();

			//이미지 등록
			$("#uploadImg")
					.change(
							function(objName, type, i, name, filePreview, maxNumber) {
								//div 내용 비워주기
								/* $('#Preview').empty(); */

/*								var files = e.target.files;
								var arr = Array.prototype.slice.call(files);

								//업로드 가능 파일인지 체크
								for (var i = 0; i < files.length; i++) {
									if (!checkExtension(files[i].name,
											files[i].size)) {
										return false;
									}
								}
								preview(arr);

								function checkExtension(fileName, fileSize) {
									var regex = new RegExp(
											"(.*?)\.(exe|sh|zip|alz|sql)$");
									var maxSize = 20971520; //20MB

									if (fileSize >= maxSize) {
										alert('이미지 크기가 초과되었습니다.');
										$("#uploadImg").val(""); //파일 초기화
										return false;
									}

									if (regex.test(fileName)) {
										alert('확장자명을 확인해주세요.');
										$("#uploadImg").val(""); //파일 초기화
										return false;
									}
									return true;
								}

								function preview(arr) {
									arr
											.forEach(function(f) {
												//파일명이 길면 파일명...으로 처리
												/*
												var fileName = f.name;
												if(fileName.length > 10){
												    fileName = fileName.substring(0,7)+"...";
												}
												 */
												 /*												console.log(arr);
												//div에 이미지 추가
												var str = '';
												//str += '<span>'+fileName+'</span><br>';

												//이미지 파일 미리보기
												if (f.type.match('image.*')) {
													//파일을 읽기 위한 FileReader객체 생성
													var reader = new FileReader();
													reader.onload = function(objName, type, i, name, filePreview, maxNumber) {
														//파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
														var sort = parseInt(maxNumber) + i;
														str += '<li id="li_'+type+'_'+sort+'" class="ui-state-default">';
														str += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
														str += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
														str += '<img src="'+ e.target.result +'" value="' + f.name + '" width=100 height=100>';
														str += '<button type="button" class="btn" id="delImg">x</button>';
														str += '</li>';
														filePreview.append(li);
														//$(str).appendTo('#Preview');
													}
													reader.readAsDataURL(f);
												} else {
													//이미지 파일 아닐 경우 대체 이미지
													/*
													str += '<img src="/resources/img/fileImg.png" title="'+f.name+'" width=60 height=60 />';
													$(str).appendTo('#Preview');
													 */
/*													}
											})
								}
							})

			//이미지 삭제
		$(document).on("click", "#delImg", function() {
				$("#imgChild").remove();
			});

			//전체 이미지 리셋
			$("#btnReset").on("click", function() {
				$('#Preview').empty();
			});

		}); */
		/* fileUpload e 221018 */
	</script>

</body>

</html>