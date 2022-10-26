<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>
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

<!-- Datepicker -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="/resources/js/jquery-ui-timepicker-addon.js"></script>

<!-- =======================================================
  * Template Name: NiceAdmin - v2.3.1
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->

<script type="text/javascript">
	$(document).ready(
			function() {
				$.datepicker.setDefaults($.datepicker.regional['ko']);
				$("#shStartDate")
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
										$("#shEndDate").datepicker("option",
												"minDate", selectedDate);
									}

								});
				$("#shEndDate")
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
										$("#shStartDate").datepicker("option",
												"maxDate", selectedDate);
									}

								});
			});
</script>


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
			<h1>코드 관리</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active">코드 목록</li>
					<li class="breadcrumb-item"><a onclick="/code/codeView">코드 관리</a></li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg">
					<form id="formList" name="formList" method="post">
						<input type="hidden" name="CCseq">
						<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
						<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
						<input type="hidden" name="checkboxSeqArray">
						<div class="card">
							<div class="card-body">
								<div class="row mt-3 mb-3">
									<div class="container text-center" style="clear: both;">
										<div class="row">
											<div class="col-2">
												<select class="form-select m-1" id="shDelYn" name="shDelYn">
													<option value="" <c:if test="${empty vo.shDelYn}">selected</c:if>>삭제유무</option>
													<option value="2" <c:if test="${vo.shDelYn eq 2}">selected</c:if>>ALL</option>
													<option value="1" <c:if test="${vo.shDelYn eq 1}">selected</c:if>>Yes</option>
													<option value="0" <c:if test="${vo.shDelYn eq 0}">selected</c:if>>No</option>
												</select>
											</div>
											<div class="col-2">
												<select class="form-select m-1" id="shDate" name="shDate">
													<option value="" <c:if test="${empty vo.shDate}">selected</c:if>>날짜검색기준</option>
													<option value="1" <c:if test="${vo.shDate eq 1}">selected</c:if>>등록일</option>
													<option value="2" <c:if test="${vo.shDate eq 2}">selected</c:if>>수정일</option>
												</select>
											</div>
											<div class="col-2">
												<input class="form-control m-1" type="text" id="shStartDate" name="shStartDate" value="<c:out value="${vo.shStartDate}"/>" placeholder="~일부터">
											</div>
											<div class="col-2">
												<input class="form-control m-1" type="text" id="shEndDate" name="shEndDate" value="<c:out value="${vo.shEndDate}"/>" placeholder="~일까지">
											</div>
										</div>
										<!-- <div class="d-flex p-2"> -->
										<div class="row mt-3 mb-3">
											<div class="col-2">
												<select class="form-select m-1" id="shOption" name="shOption">
													<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색조건 1</option>
													<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드 번호</option>
													<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 코드</option>
													<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드 명</option>
												</select>
											</div>
											<div class="col-2">
												<input class="form-control m-1" type="search" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"/>" placeholder="키워드">
											</div>
											<div class="col-2">
												<select class="form-select m-1" id="shOption" name="shOption2">
													<option value="" <c:if test="${empty vo.shOption2}">selected</c:if>>검색조건 2</option>
													<option value="1" <c:if test="${vo.shOption2 eq 1}">selected</c:if>>코드 번호</option>
													<option value="2" <c:if test="${vo.shOption2 eq 2}">selected</c:if>>코드그룹 코드</option>
													<option value="3" <c:if test="${vo.shOption2 eq 3}">selected</c:if>>코드 명</option>
												</select>
											</div>
											<div class="col-2">
												<input class="form-control m-1" type="search" id="shValue2" name="shValue2" value="<c:out value="${vo.shValue2}"/>" placeholder="키워드">
											</div>
											<div class="col-2">
												<button class="btn btn-primary" type="submit">
													<i class="fa-brands fa-searchengin"></i> 통합검색
												</button>
											</div>
										</div>
										<div class="row">
										<div class="col-1">
											<span class="">Total : <c:out value="${vo.totalRows}" /></span>
										</div>
										<div class="col-11"></div>
										</div>
									</div>
								</div>
								<div class="row">
									<table class="table table-light table-hover" id="userList">
										<thead>
											<tr class="table">
												<th scope="col"><input class="form-check-input" type="checkbox" name="flexCheck" onclick="selectAll(this);"></th>
												<th scope="col">No</th>
												<th scope="col">코드 그룹 코드</th>
												<th scope="col">코드 그룹 코드 이름 (한글)</th>
												<th scope="col">코드</th>
												<th scope="col">코드 이름 (한글)</th>
												<th scope="col">코드 이름 (영문)</th>
												<th scope="col">사용</th>
												<th scope="col">순서</th>
												<th scope="col">등록일</th>
												<th scope="col">수정일</th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${fn:length(list) eq 0}">
													<tr>
														<td class="text-center" colspan="12">데이터가 없습니다.</td>
												</c:when>
												<c:otherwise>
													<c:forEach items="${list}" var="list" varStatus="status">
														<tr style="cursor: pointer;" onclick="javascript:goForm(<c:out value="${list.CCseq }"/>)">
															<td onclick="event.cancelBubble=true"><input class="form-check-input" type="checkbox" name="flexCheck"></td>
															<td><c:out value="${list.CCseq}" /></td>
															<td><c:out value="${list.CCcommonCodeGroup_seq}" /></td>
															<td><c:out value="${list.CCGgroupName}" /></td>
															<td><c:out value="${list.CCseqChar}" /></td>
															<td><c:out value="${list.CCcodeName}" /></td>
															<td><c:out value="${list.CCcodeNameEng}" /></td>
															<td><c:out value="${list.CCuseYn}" /></td>
															<td><c:out value="${list.CCsort}" /></td>
															<td><fmt:formatDate value="${list.CCregDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
															<td><fmt:formatDate value="${list.CCmodDate}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
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
					</form>
					<form name="formVo" id="formVo" method="get">
						<!-- *Vo.jsp s -->
						<%@include file="codeVo.jsp"%>
						<!-- #-> -->
						<!-- *Vo.jsp e -->
					</form>
				</div>
			</div>
		</section>

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
		var goUrlForm = "/code/codeForm";
		var goUrlList = "/code/codeList"; /* #-> */
		var form = $("form[name=formList]");

		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
		}

		var seq = $("input:hidden[name=CCseq]");

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