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
					<li class="breadcrumb-item"><a onclick="location.href='/code/codeList'">코드 목록</a></li>
					<li class="breadcrumb-item active">코드 관리</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg">
					<form method="get" id="form" name="form" method="post">
					<input type="hidden" id="AllowedNy" name="AllowedNy">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title fw-bold">코드 등록</h5>
								<div class="row mt-3 mb-3">
									<div class="col">
										<label for="inputId" class="form-label text bold">코드 그룹</label>
										<%-- <c:if test="${empty list}"> --%>
										<%-- <select class="form-select" name="CCcommonCodeGroup_seq">
												<!-- <option value="" selected>선택</option> -->
										<c:forEach items="${list}" var="list" varStatus="status">
												<option value="<c:out value="${list.CCGseq}"></c:out>"><c:out value="${list.CCGgroupName}" /></option>
												<c:if test="${empty item.CCGseq }">selected</c:if><c:out value="${list.CCGgroupName}" />
										</c:forEach>
										</select> --%>
										<select class="form-select" name="CCcommonCodeGroup_seq">
											<!-- <option value="" selected>선택</option> -->
											<c:forEach items="${list}" var="list" varStatus="status">
												<c:choose>
													<c:when test="${empty item.CCseq}">
														<option value="<c:out value="${list.CCGseq}"></c:out>"><c:out value="${list.CCGgroupName}" /></option>
													</c:when>
													<c:otherwise>
														<option value="<c:out value="${list.CCGseq}"/>"
															<c:if test="${list.CCGseq eq item.CCcommonCodeGroup_seq}">selected</c:if>><c:out value="${list.CCGgroupName}" />
														</option>
													</c:otherwise>
												</c:choose>
											</c:forEach>
										</select>
									</div>
									<div class="col">
										<label for="inputId" class="form-label text bold">코드 사용여부</label>
										<select class="form-select" name="CCuseYn">
											<option value="1" <c:if test="${item.CCuseYn eq 1}">selected</c:if>>Yes</option>
											<option value="0" <c:if test="${item.CCuseYn eq 0}">selected</c:if>>No</option>
										</select>
									</div>
									<div class="col"></div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">코드 번호</label>
											<input type="text" class="form-control" placeholder="자동생성" readonly name="CCseq" value="<c:out value="${item.CCseq }"/>">
										</div>
									</div>
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">코드 번호(Another)</label>
											<input type="text" class="form-control" id="CCseqChar" name="CCseqChar" value="<c:out value="${item.CCseqChar }"/>">
											<div class="fw-bold feedback" id="IdFeedback" name="IdFeedback"></div>
										</div>
									</div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">코드 이름 (한글)</label>
											<input type="text" class="form-control" id="CCcodeName" name="CCcodeName" value="<c:out value="${item.CCcodeName }"/>">
										</div>
									</div>
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">코드 이름 (영문)</label>
											<input type="text" class="form-control" id="CCcodeNameEng" name="CCcodeNameEng" value="<c:out value="${item.CCcodeNameEng }"/>">
										</div>
									</div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">순서</label>
											<input type="text" class="form-control" id="CCsort" name="CCsort" value="<c:out value="${item.CCsort }"/>">
										</div>
									</div>
									<div class="col">
										<label for="inputId" class="form-label text bold">코드 삭제 여부</label>
										<select class="form-select" name="CCdelYn">
											<option value="0" <c:if test="${item.CCdelYn eq 0}">selected</c:if>>No</option>
											<option value="1" <c:if test="${item.CCdelYn eq 1}">selected</c:if>>Yes</option>
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
									<%-- 	<c:forEach items="${list2}" var="list2" varStatus="status">
											<label for="inputId" class="form-label">예비1 (varchar type)</label>
											<input type="text" class="form-control" id="CCGgroupName" name="CCGgroupName" value="<c:out value="${list2.CCGseq }"/>">
										</c:forEach> --%>
										</div>
									</div>
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">예비2 (varchar type)</label>
											<input type="text" class="form-control" id="formGroupExampleInput">
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
		var goUrlList = "/code/codeList"; 			/* #-> */
		var goUrlInst = "/code/codeInst"; 			/* #-> */
		var goUrlUpdt = "/code/codeUpdt";				/* #-> */
//		var goUrlUele = "/code/codeUele";				/* #-> */
//		var goUrlDele = "/code/codeDele";				/* #-> */

		var seq = $("input:text[name=CCseq]");						/* #-> */

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
		
		$("#CCseqChar").on("focusout", function(){
			
			

				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					/* ,dataType:"json" */
					,url: "/code/checkId"
					/* ,data : $("#formLogin").serialize() */
					,data : { "CCseqChar" : $("#CCseqChar").val() }
					,success: function(response) {
						if(response.rt == "success") {
							document.getElementById("CCseqChar").classList.remove('is-invalid');
							document.getElementById("CCseqChar").classList.add('is-valid');
		
							document.getElementById("IdFeedback").classList.remove('invalid-feedback');
							document.getElementById("IdFeedback").classList.add('valid-feedback');
							document.getElementById("IdFeedback").innerText = "사용 가능 합니다.";
							
							document.getElementById("AllowedNy").value = 1;
							
						} else {
							document.getElementById("CCseqChar").classList.remove('is-valid');
							document.getElementById("CCseqChar").classList.add('is-invalid');
							
							document.getElementById("IdFeedback").classList.remove('valid-feedback');
							document.getElementById("IdFeedback").classList.add('invalid-feedback');
							document.getElementById("IdFeedback").innerText = "사용 불가능 합니다";
							
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