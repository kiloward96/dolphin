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
			<h1>코드 관리</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="/dashBoard">Home</a></li>
					<li class="breadcrumb-item"><a href="/product/productList">제품 목록</a></li>
					<li class="breadcrumb-item active">제품 관리</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg">
					<form id="form" name="form" method="post" autocomplete="off" enctype="multipart/form-data">
						<input type="hidden" id="AllowedNy" name="AllowedNy">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title fw-bold">제품 등록</h5>
								<div class="row mt-3 mb-3">
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
								<div class="row mt-sm-4">
									<div class="col-sm-6 mt-3 mt-sm-0">
										<c:set var="type" value="2" />
										<!-- #-> -->
										<c:set var="name" value="uploadImg" />
										<!-- #-> -->
										<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0" />
										<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq" />
										<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile" />
										<label for="uploadImg" class="btn btn-primary input-file-button">이미지첨부</label>
										<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 1, 0, 0, 1);">
										<div id="<c:out value="${name }"/>Preview" class="addScroll">
											<c:forEach items="${imgList}" var="listUploaded" varStatus="statusUploaded">
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
									</div>
									<div class="col-sm-6 mt-3 mt-sm-0">
										<c:set var="type" value="3" />
										<!-- #-> -->
										<c:set var="name" value="uploadFile" />
										<!-- #-> -->
										<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0" />
										<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq" />
										<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile" />
										<label for="uploadFile" class="btn btn-primary input-file-button">파일첨부</label>
										<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 0, 2, 0, 0, 2);">
										<div class="addScroll">
											<ul id="<c:out value="${name }"/>Preview" class="list-group">
												<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
													<c:if test="${listUploaded.type eq type }">
														<li id="li_<c:out value="${type }"/>_<c:out value="${listUploaded.sort }"/>" class="list-group-item d-flex justify-content-between align-items-center"><a href="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" download="<c:out value="${listUploaded.originalName }"/>" class="text-decoration-none"><c:out value="${listUploaded.originalName }" /></a> <span class="badge bg-danger rounded-pill"
															onClick="delLi('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${listUploaded.sort }"/>, <c:out value="${listUploaded.seq }"/>, '<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>')"
														><i class="fa-solid fa-x" style="cursor: pointer;"></i></span></li>
													</c:if>
												</c:forEach>
											</ul>
										</div>
									</div>
								</div>
								<%-- <c:set var="type" value="2" />
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
									</div>--%>
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
									</div> 
								</div>--%>
								<div class="row mt-3 mb-3">
									<div class="col">
										<%-- <div class="m-auto">
											<label for="inputId" class="form-label">이미지</label>
											<c:forEach items="${imgList}" var="imgList" varStatus="status">
												<input type="hidden" id="<c:out value="${uuidName }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0" />
												<input type="hidden" id="<c:out value="${uuidName }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq" />
												<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile" />
												<div id="imgDiv_<c:out value="${imgList.type }"/>_<c:out value="${imgList.sort }"/>" style="display: inline-block; height: 95px;">
													<img src="<c:out value="${imgList.path }"/><c:out value="${imgList.uuidName }"/>" class="rounded" width="85px" height="85px" style="cursor: pointer;" onClick="openViewer(<c:out value="${imgList.type }"/>, <c:out value="${imgList. sort }"/>);">
													<div style="position: relative; top: -85px; left: 5px">
														<span style="color: red; cursor: pointer;" onClick="delImgDiv('<c:out value="${imgList.originalName }"/>', <c:out value="${imgList.type }"/>,<c:out value="${imgList.sort }"/>, <c:out value="${imgList.seq }"/>, '<c:out value="${imgList.path }"/><c:out value="${imgList.uuidName }"/>')">X</span>
													</div>
												</div>
											</c:forEach>
										</div> --%>
									</div>
									<div class="col"></div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="m-auto">
										<label for="opList" class="form-label"><h5 class="card-title fw-bold">제품 옵션</h5></label>
										<table class="table table-hover text-center" id="opList">
											<thead>
												<tr class="table">
													<th class="col-2">옵션 순번</th>
													<th class="col-4">옵션 구분</th>
													<th class="col-4">옵션 명</th>
													<th class="col">옵션 삭제 여부</th>
												</tr>
											</thead>
											<tbody>
												<c:set var="listCodeOptionMain" value="${CodeServiceImpl.selectListCachedCode('3')}" />
												<c:choose>
													<c:when test="${fn:length(option) eq 0}">
														<tr>
															<td class="text-center" colspan="4">데이터가 없습니다.</td>
														</tr>
													</c:when>
													<c:otherwise>
														<c:forEach items="${option}" var="option" varStatus="status">
															<tr>
																<input type="hidden" id="POproductSeq" name="POproductSeq" value="<c:out value="${option.POproductSeq }"/>">
																<td>
																	<input type="text" class="form-control" id="POseq" name="POseq" readonly value="<c:out value="${option.POseq }"/>">
																</td>
																<td>
																	<select class="form-select" id="POoptionMain" name="POoptionMain">
																		<%-- <input type="text" class="form-control" id="POoptionmain" name="POoptionmain" value="<c:out value="${option.POoptionmain }"/>"> --%>
																		<option value="" <c:if test="${option.POoptionMain eq 0}">selected</c:if>>옵션 선택</option>
																		<c:forEach items="${listCodeOptionMain}" var="listOptionMain" varStatus="statusOptionMain">
																			<option value="<c:out value="${option.POoptionMain }"/>" <c:if test="${listOptionMain.CCseq eq option.POoptionMain }"> selected </c:if>>
																				<c:out value="${listOptionMain.CCcodeName }" /></option>
																		</c:forEach>
																	</select>
																</td>
																<td>
																	<input type="text" class="form-control" id="POoptionSub" name="POoptionSub" value="<c:out value="${option.POoptionSub }"/>">
																</td>
																<td>
																	<select class="form-select" name="POdelYn">
																		<option value="0" <c:if test="${option.POdelYn eq 0}">selected</c:if>>No</option>
																		<option value="1" <c:if test="${option.POdelYn eq 1}">selected</c:if>>Yes</option>
																	</select>
																</td>
															</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>
												<tr>
													<td>
														<input type="text" class="form-control" id="POseq" name="POseq" readonly placeholder="자동생성">
													</td>
													<td>
														<select class="form-select" id="POoptionMain" name="POoptionMain">
																<option value="">옵션 선택</option>
															<c:forEach items="${option}" var="option" varStatus="status">
																<c:forEach items="${listCodeOptionMain}" var="listOptionMain" varStatus="statusOptionMain">
																	<option value="<c:out value="${option.POoptionMain }"/>" <c:if test="${listOptionMain.CCseq eq option.POoptionMain }"> selected </c:if>>
																		<c:out value="${listOptionMain.CCcodeName }" /></option>
																</c:forEach>
															</c:forEach>
														</select>
													</td>
													<td>
														<input type="text" class="form-control" id="POoptionSub" name="POoptionSub" placeholder="세부 옵션을 입력하세요">
													</td>
													<td>
														<select class="form-select" name="POdelYn">
															<option value="0">No</option>
															<option value="1">Yes</option>
														</select>
													</td>
												</tr>
											<tbody>
										</table>
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
											<!-- <button type="submit" class="btn btn-primary">
												<i class='bx bxs-save'> 제출</i>
											</button> -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
					<form name="formVo" id="formVo" method="post">
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

		var keyValue = $("input:text[name=PDseq]"); /* #-> */

		var form = $("form[name=form]");
		var formVo = $("form[name=formVo]");
		
		var doubleSubmitFlag = false;
		 
	/* 	function fncSubmit(form){
		    if(doubleSubmitFlag){
		        alert('제출 중입니다.');
		        return false;
		    }else {
		        doubleSubmitFlag = true;
		        formName.submit();
		    }
		} */

		
		
		$("#btnSave").on("click", function() {
			if (keyValue.val() == "0" || keyValue.val() == "") {
				alert("insert");
				// insert
				//if (validationInst() == false) return false;
				form.attr("action", goUrlInst).submit();
			} else {
				alert("update");
				// update
				//keyValue.val(atob(keyValue.val()));
				//if (validationUpdt() == false) return false;
				form.attr("action", goUrlUpdt).submit();
				console.log(keyValue.val);
				return true;
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
	
//		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//		memberProfileImage: 1
//		memberImage: 2
//		memberFile : 3

//		uiType: 1 => 이미지형
//		uiType: 2 => 파일형
//		uiType: 3 => 프로필형

		var files = $("#" + objName +"")[0].files;
		var filePreview = $("#" + objName +"Preview");
		var numbering = [];
		var maxNumber = 0;
		
		if(uiType == 1) {
			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
			var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
			
			for(var i=0; i<tagIds.length; i++){
				var tagId = tagIds[i].getAttribute("id").split("_");
				numbering.push(tagId[2]);
			}
			
			if(uploadedFilesCount > 0){
				numbering.sort();
				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
			}
		} else if(uiType == 2){
			var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > li").length;
			var tagIds = document.querySelectorAll("#" + objName + "Preview > li");

			for(var i=0; i<tagIds.length; i++){
				var tagId = tagIds[i].getAttribute("id").split("_");
				numbering.push(tagId[2]);
			}
			
			if(uploadedFilesCount > 0){
				numbering.sort();
				maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
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
		
		if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
		
		for (var i=0; i<filesCount; i++) {
			if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
			if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

			totalFileSize += files[i].size;
			
			filesArray.push(files[i]);
		}

		if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
		
		if (uiType == 1) {
			for (var i=0; i<filesArray.length; i++) {
				var file = filesArray[i];

				var picReader = new FileReader();
			    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
			    picReader.readAsDataURL(file);
			}			
		} else if(uiType == 2) {
			for (var i = 0 ; i < filesCount ; i++) {
				addUploadLi(objName, seq, i, $("#" + objName +"")[0].files[i].name, filePreview, maxNumber);
			}
		} else if (uiType == 3) {
			var fileReader = new FileReader();
			 fileReader.onload = function () {
				 $("#uploadImgProfilePreview").attr("src", fileReader.result);		/* #-> */
			 }	
			 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
		} else {
			return false;
		}
		return false;
	}
	
	
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

	</script>

</body>

</html>