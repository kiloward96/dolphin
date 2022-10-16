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
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

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
				<a href="/code/codeList" class="code-title  d-flex align-items-center"> <span class="d-none d-lg-block nav-link active">코드 관리</span> </a> 
				<a href="/codeGroup/codeGroupList" class="code-title d-flex align-items-center"> <span class="d-none d-lg-block nav-link">코드 그룹 관리</span> </a>
				<a href="/member/memberList" class="code-title d-flex align-items-center"> <span class="d-none d-lg-block nav-link">사용자 관리</span> </a>
			</div>
		</div>

		<div class="search-bar">
			<form class="search-form d-flex align-items-center">
				<input type="text" name="query" placeholder="Search" title="Enter search keyword">
				<button type="submit" title="Search">
					<i class="bi bi-search"></i>
				</button>
			</form>
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
					<li class="breadcrumb-item"><a href="/product/productList">상품 목록</a></li>
					<li class="breadcrumb-item active">상품 관리</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg">
					<form id="form" name="form" method="post">
					<input type="hidden" id="AllowedNy" name="AllowedNy">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title fw-bold">상품 등록</h5>
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
										<select class="form-select" name="CCuseYn">
											<option value="1" <c:if test="${item.PDstatus eq 1}">selected</c:if>>품절</option>
											<option value="0" <c:if test="${item.PDstatus eq 0}">selected</c:if>>재고있음</option>
										</select>
									</div>
									<div class="col"></div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">제품 번호</label>
											<input type="text" class="form-control" placeholder="자동생성" readonly name="PDseq" value="<c:out value="${item.PDseq }"/>">
										</div>
									</div>
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">제품 명</label>
											<input type="text" class="form-control" id="PDproductName" name="PDproductName" value="<c:out value="${item.PDproductName }"/>">
										</div>
									</div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">제품 가격</label>
											<%-- <input type="text" class="form-control" id="PDprice" name="PDprice" value="<fmt:formatNumber value="${item.PDprice}" pattern="#,###"/>"> --%>
											<input type="text" class="form-control" id="PDprice" name="PDprice" value="<c:out value="${item.PDprice}"/>">
										</div>
									</div>
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">수량</label>
											<input type="text" class="form-control" id="PDstock" name="PDstock" value="<c:out value="${item.PDstock }"/>">
										</div>
									</div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">제품 카테고리</label>
											<input type="text" class="form-control" id="PDcategory" name="PDcategory" value="<c:out value="${item.PDcategory }"/>">
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
											<th>메인 옵션</th>
											<th>상세 옵션</th>
											<th>옵션 삭제 여부</th>
											</tr>
											<c:set var="listCodeOptionMain" value="${CodeServiceImpl.selectListCachedCode('3')}" />
											<c:set var="listCodeOptionSub" value="${CodeServiceImpl.selectListCachedCode('13')}" />
											<c:forEach items="${option}" var="option" varStatus="status">
											<tr>
											<input type="hidden" id="POproductSeq" name="POproductSeq" value="<c:out value="${option.POproductSeq }"/>">
											<td><input type="text" class="form-control" id="POseq" name="POseq" value="<c:out value="${option.POseq }"/>"></td>
														<td>
															<%-- <input type="text" class="form-control" id="POoptionmain" name="POoptionmain" value="<c:out value="${option.POoptionmain }"/>"> --%> 
															<select class="form-select" id="POoptionMain" name="POoptionMain">
																<option value="" <c:if test="${option.POoptionMain eq 0}">selected</c:if>>옵션 선택</option>
															<c:forEach items="${listCodeOptionMain}" var="listOptionMain" varStatus="statusOptionMain">
																<option value="<c:out value="${option.POoptionMain }"/>" <c:if test="${listOptionMain.CCseq eq option.POoptionMain }"> selected </c:if>>
																	<c:out value="${listOptionMain.CCcodeName }" /></option>
															</c:forEach>
															</select> 
														</td>
														<td>
															<%-- <input type="text" class="form-control" id="POoptionSub" name="POoptionSub" value="<c:out value="${option.POoptionSub }"/>"> --%> 
															<select class="form-select" id="POoptionSub" name="POoptionSub">
																<option value="" <c:if test="${option.POoptionSub eq 0}">selected</c:if>>상세 옵션 선택</option>
																<c:forEach items="${listCodeOptionSub}" var="listOptionSub" varStatus="statusOptionSub">
																	<%-- <c:if test="${option.POoptionMain eq 6 }"> --%>
																	<option value="<c:out value="${option.POoptionSub }"/>" <c:if test="${listOptionSub.CCseq eq option.POoptionSub }"> selected </c:if>>
																		<c:out value="${listOptionSub.CCcodeName }" /></option>
																</c:forEach>
															</select>
														</td>
														<td><input type="text" class="form-control" id="POdelYn" name="POdelYn" value="<c:out value="${option.POdelYn }"/>"></td>
											</tr>
											</c:forEach>
											</table>
										</div>
									</div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">예비3 (varchar type)</label>
											<input type="text" class="form-control" id="formGroupExampleInput">
										</div>
									</div>
									<div class="col">
										<div class="m-auto"></div>
									</div>
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
		var goUrlList = "/product/productList"; 			/* #-> */
		var goUrlInst = "/product/productInst"; 			/* #-> */
		var goUrlUpdt = "/product/productUpdt";				/* #-> */
//		var goUrlUele = "/code/codeUele";				/* #-> */
//		var goUrlDele = "/code/codeDele";				/* #-> */

		var seq = $("input:text[name=PDseq]");						/* #-> */

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
		   		// keyName.val(atob(keyName.val()));
		   		//if (validationUpdt() == false) return false;
		   		form.attr("action", goUrlUpdt).submit();
		   	}
			
		}); 
		$("#btnList").on("click", function(){
			formVo.attr("action", goUrlList).submit();
		});
		
	</script>

</body>

</html>