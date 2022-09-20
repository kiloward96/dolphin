<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Jumal 관리자</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="/resources/js/jquery-ui-timepicker-addon.js"></script>

<script type="text/javascript">
	$(document).ready(
			function() {
				$.datepicker.setDefaults($.datepicker.regional['ko']);
				$("#startDate")
						.datepicker(
								{
									changeMonth : true,
									changeYear : true,
									nextText : '다음 달',
									prevText : '이전 달',
									dayNames : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dateFormat : "yy-mm-dd",
									/* maxDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가) */
									onClose : function(selectedDate) {
										//시작일(startDate) datepicker가 닫힐때
										//종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
										$("#endDate").datepicker("option",
												"minDate", selectedDate);
									}

								});
				$("#endDate")
						.datepicker(
								{
									changeMonth : true,
									changeYear : true,
									nextText : '다음 달',
									prevText : '이전 달',
									dayNames : [ '일요일', '월요일', '화요일', '수요일',
											'목요일', '금요일', '토요일' ],
									dayNamesMin : [ '일', '월', '화', '수', '목',
											'금', '토' ],
									monthNamesShort : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									monthNames : [ '1월', '2월', '3월', '4월',
											'5월', '6월', '7월', '8월', '9월',
											'10월', '11월', '12월' ],
									dateFormat : "yy-mm-dd",
									/* maxDate: 0,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가) */
									onClose : function(selectedDate) {
										// 종료일(endDate) datepicker가 닫힐때
										// 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
										$("#startDate").datepicker("option",
												"maxDate", selectedDate);
									}

								});
			});
</script>


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

				<li class="nav-item dropdown pe-3"><a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown"> <img src="/resources/assets/img/profile-img.jpg" alt="Profile" class="rounded-circle"> <span class="d-none d-md-block dropdown-toggle ps-2">K.
							Anderson</span>
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
			<h1>코드그룹 관리</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">코드그룹 목록</li>
					<li class="breadcrumb-item"><a href="page-code-list.html">코드 그룹 관리</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->
		<form method="get" id="formList" name="formList">

			<section class="section">
				<div class="row">
					<div class="col-lg">
						<div class="card">
							<div class="card-body">
								<div class="row mt-3 mb-3">
									<div class="container" style="clear: both;">
										<input type="hidden" name="CCGseq">
										<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
										<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
										<input type="hidden" name="checkboxSeqArray">
										<table class="text-center tw-bold">
											<tr>
												<td><select class="form-select m-1" id="shDelYn" name="shDelYn">
														<option value="" <c:if test="${empty vo.shDelYn}">selected</c:if>>삭제유무</option>
														<option value="2" <c:if test="${vo.shDelYn eq 2}">selected</c:if>>ALL</option>
														<option value="1" <c:if test="${vo.shDelYn eq 1}">selected</c:if>>Yes</option>
														<option value="0" <c:if test="${vo.shDelYn eq 0}">selected</c:if>>No</option>
													</select></td>
												<td><select class="form-select m-1" id="shDate" name="shDate">
														<option value="" <c:if test="${empty vo.shDate}">selected</c:if>>날짜검색기준</option>
														<option value="1" <c:if test="${vo.shDate eq 1}">selected</c:if>>등록일</option>
														<option value="2" <c:if test="${vo.shDate eq 2}">selected</c:if>>수정일</option>
													</select></td>
												<td><input class="form-control m-1" type="text" id="startDate" name="shStartDate" value="<c:out value="${vo.shStartDate}"/>" placeholder="~일부터"></td>
												<td><input class="form-control m-1" type="text" id="endDate" name="shEndDate" value="<c:out value="${vo.shEndDate}"/>" placeholder="~일까지"></td>
											</tr>
											<tr>
												<td><select class="form-select m-1" id="shOption" name="shOption">
														<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색조건 1</option>
														<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드 번호</option>
														<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 코드</option>
														<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드그룹 명</option>
													</select></td>
												<td><input class="form-control m-1" type="search" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"/>" placeholder="키워드"></td>
												<td><select class="form-select m-1" id="shOption" name="shOption2">
														<option value="" <c:if test="${empty vo.shOption2}">selected</c:if>>검색조건 2</option>
														<option value="1" <c:if test="${vo.shOption2 eq 1}">selected</c:if>>코드 번호</option>
														<option value="2" <c:if test="${vo.shOption2 eq 2}">selected</c:if>>코드그룹 코드</option>
														<option value="3" <c:if test="${vo.shOption2 eq 3}">selected</c:if>>코드그룹 명</option>
													</select></td>
												<td><input class="form-control m-1" type="search" id="shValue2" name="shValue2" value="<c:out value="${vo.shValue2}"/>" placeholder="키워드"></td>
												<td>
													<div class="col m-1" style="line-height: 10px;">
														<button class="btn btn-primary" type="submit" style="width: 120px;">
															<i class="fa-brands fa-searchengin"></i> 통합검색
														</button>
													</div>
												</td>
											</tr>
											<!-- <td>
											<select class="form-select m-1">
												<option selected>검색조건 3</option>
												<option value="1">코드 그룹 코드</option>
												<option value="2">등록일</option>
												<option value="3">수정일</option>
											</select>
											</td> -->
											<!-- <input class="form-control m-1" type="search" placeholder="키워드"> -->
										</table>
									</div>

									<div>
										<span>Total : <c:out value="${vo.totalRows}" /></span>
										</tr>
									</div>
									<div class="row">
										<table class="table table-light table-hover" id="codeGroupList">
											<thead>
												<tr class="table">
													<th scope="col"><input class="form-check-input" type="checkbox" name="selectGroup" onclick="selectAll(this);"></th>
													<th scope="col">No</th>
													<th scope="col">코드 그룹 코드</th>
													<th scope="col">코드 그룹 이름 (한글)</th>
													<th scope="col">코드 그룹 이름 (영문)</th>
													<th scope="col">코드 수량</th>
													<th scope="col">등록일</th>
													<th scope="col">수정일</th>
													<th scope="col">삭제유무</th>
												</tr>
											</thead>
											<tbody>
												<c:choose>
													<c:when test="${fn:length(list) eq 0}">
														<tr>
															<td class="text-center" colspan="12">데이터가 없습니다.</td>
														</tr>
													</c:when>
													<c:otherwise>
														<c:forEach items="${list}" var="list" varStatus="status">
															<%-- <tr style="cursor: pointer;" onclick="location.href='/codeGroup/codeGroupView?CCGseq=<c:out value="${list.CCGseq}"/>'" > --%>
															<tr style="cursor: pointer;" onclick="javascript:goForm(<c:out value="${list.CCGseq }"/>)">
																<!-- <tr style="cursor: pointer;" id="goForm" name="goForm"> -->
																<th scope="col" onclick="event.cancelBubble=true"><input class="form-check-input" type="checkbox" name="selectGroup"></th>
																<th scope="col"><c:out value="${list.CCGseq }" /></th>
																<td><c:out value="${list.CCGseqChar}" /></a></td>
																<td><c:out value="${list.CCGgroupName}" /></td>
																<td><c:out value="${list.CCGgroupNameEng}" /></td>
																<td><c:out value="${list.xCCcount}" /></td>
																<td><fmt:formatDate value="${list.CCGregDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
																<td><fmt:formatDate value="${list.CCGmodDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
																<td><c:out value="${list.CCGdelYn}" /></td>
																<br>
															</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</tbody>
										</table>
									</div>
								</div>
								<%@include file="../../util/pagination.jsp"%>
								<div class="container">
									<div class="row">
										<div class="col">
											<button type="button" class="btn btn-outline-danger m-2" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
												<i class="fa-solid fa-circle-minus"></i> 삭제
											</button>

											<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<h5 class="modal-title" id="staticBackdropLabel">데이터 삭제 경고알림</h5>
															<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
														</div>
														<div class="modal-body">정말 삭제하시겠습니까?</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-primary" onclick="location.href='./memberList.html'">Yes</button>
															<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="col d-flex justify-content-end">
											<button type="button" class="btn btn-outline-success m-2" id="btnForm" name="btnForm">
												<i class="fa-solid fa-circle-plus"></i> 추가
											</button>
											<button type="button" class="btn btn-outline-danger m-2">
												<i class="fa-solid fa-pen-to-square"></i> 삭제
											</button>
											<button type="button" class="btn btn-outline-warning m-2">
												<i class="fa-solid fa-pen-to-square"></i> 수정
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</form>

		</section>
		<form name="formVo" id="formVo" method="get">
			<!-- *Vo.jsp s -->
			<%@include file="codeGroupVo.jsp"%>
			<!-- #-> -->
			<!-- *Vo.jsp e -->
		</form>

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
		var goUrlForm = "/codeGroup/codeGroupForm";
		var goUrlList = "/codeGroup/codeGroupList"; /* #-> */
		var form = $("form[name=formList]");

		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}

		var seq = $("input:hidden[name=CCGseq]");

		$('#btnForm').on("click", function() {
			goForm(0);
		});

		goForm = function(keyValue) {
			/* if(keyValue != 0) seq.val(btoa(keyValue)); */
			seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
	</script>


</body>

</html>