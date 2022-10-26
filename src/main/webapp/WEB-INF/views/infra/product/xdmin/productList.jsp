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
	<%@include file="../../util/xdminHeader.jsp"%>
	<!-- End Header -->

	<!-- ======= Sidebar ======= -->
	<%@include file="../../util/xdminSidebar.jsp"%>
	<!-- End Sidebar-->

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>제품 관리</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/code/codeList">Home</a></li>
					<li class="breadcrumb-item active">제품 목록</li>
					<li class="breadcrumb-item">제품 관리</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->
		<section class="section">
			<form id="formList" name="formList" method="post">
				<input type="hidden" name="PDseq">
				<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
				<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
				<input type="hidden" name="checkboxSeqArray">
				<div class="row">
					<div class="col-lg">
						<div class="card">
							<div class="card-body">
								<div class="row mt-3 mb-3">
									<div class="container" style="clear: both;">
										<div class="d-flex p-2">
											<select class="form-select m-1">
												<option selected>검색조건 1</option>
												<option value="1">제품명</option>
												<option value="2">카테고리</option>
											</select>
											<input class="form-control m-1" type="search" placeholder="키워드">
											<select class="form-select m-1">
												<option selected>검색조건 2</option>
												<option value="1">제품명</option>
												<option value="2">카테고리</option>
											</select>
											<input class="form-control m-1" type="search" placeholder="키워드">
											<select class="form-select m-1">
												<option selected>검색조건 3</option>
												<option value="1">제품명</option>
												<option value="2">카테고리</option>
											</select>
											<input class="form-control m-1" type="search" placeholder="키워드">
											<select class="form-select m-1">
												<option selected>검색조건 4</option>
												<option value="1">제품명</option>
												<option value="2">카테고리</option>
											</select>
											<input class="form-control m-1" type="search" placeholder="키워드">
											<div class="col m-1" style="line-height: 10px;">
												<button class="btn btn-primary" type="submit" style="width: 120px;">
													<i class="fa-brands fa-searchengin"></i> 통합검색
												</button>
											</div>
										</div>
										<div class="row">
											<%-- <c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2')}" /> --%>
											<table class="table table-light table-hover text-center" id="userList">
												<thead>
													<tr class="table">
														<th scope="col"><input class="form-check-input" type="checkbox" name="flexCheck" onclick="selectAll(this);"></th>
														<th scope="col">No</th>
														<th scope="col">제품명</th>
														<th scope="col">가격</th>
														<th scope="col">수량</th>
														<th scope="col">카테고리</th>
														<th scope="col">등록일</th>
														<th scope="col">판매상태</th>
														<th scope="col">삭제여부</th>
													</tr>
												</thead>
												<tbody>
													<c:choose>
														<c:when test="${fn:length(list) eq 0}">
															<tr>
																<td class="text-center" colspan="11">데이터가 없습니다.</td>
														</c:when>
														<c:otherwise>
															<c:forEach items="${list}" var="list" varStatus="status">
																<tr style="cursor: pointer;" onclick="javascript:goForm(<c:out value="${list.PDseq }"/>)">
																	<th scope="col" onclick="event.cancelBubble=true"><input class="form-check-input" type="checkbox" name="flexCheck"></th>
																	<th scope="col"><c:out value="${list.PDseq}" /></th>
																	<td><c:out value="${list.PDproductName}" /></td>
																	<%-- <td><c:out value="${list.PDprice}" /></td> --%>
																	<td><fmt:formatNumber value="${list.PDprice}" pattern="#,###"/>원</td>
																	<td><c:out value="${list.PDstock}" /></td>
																	<td><c:out value="${list.PDcategory}" /></td>
																	<%-- <td><c:out value="${list.MBgender}"/></td> --%>
																	<td><fmt:formatDate value="${list.PDuploadDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
																	<td><c:out value="${list.PDstatus}" /></td>
																	<td><c:out value="${list.PDdelYn}" /></td>
																</tr>
															</c:forEach>
														</c:otherwise>
													</c:choose>
												</tbody>
											</table>
										</div>
									</div>

									<!-- pagination s -->
									<%@include file="../../util/pagination.jsp"%>
									<!-- pagination e -->

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
				</div>
			</form>
		</section>
		<form name="formVo" id="formVo" method="get">
			<!-- *Vo.jsp s -->
			<%@include file="productVo.jsp"%>
			<!-- #-> -->
			<!-- *Vo.jsp e -->
		</form>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<%@include file="../../util/xdminFooter.jsp"%>
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
		var goUrlForm = "/product/productForm";
		var goUrlList = "/product/productList"; /* #-> */
		var form = $("form[name=formList]");

		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}

		var seq = $("input:hidden[name=PDseq]");

		$('#btnForm').on("click", function() {
			goForm(0);
		});

		goForm = function(keyValue) {
		/* if(keyValue != 0) seq.val(btoa(keyValue)); */
			seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}
	</script>

	<!-- FontAwsome Icon Src -->
	<script src="https://kit.fontawesome.com/8d31d55045.js" crossorigin="anonymous"></script>

</body>

</html>