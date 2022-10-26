<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html lang="Ko">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Jumal 관리자</title>
<meta content="" name="description">


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

<!-- Jquery CDN -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>


<!-- =======================================================
  * Template Name: NiceAdmin - v2.3.1
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
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
			<h1>코드그룹 관리</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item"><a href="/codeGroup/codeGroupList">코드그룹 목록</a></li>
					<li class="breadcrumb-item active">코드그룹 관리</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg">

					<div class="card">
						<div class="card-body">
							<form method="get" id="form" name="form">
								<h5 class="card-title fw-bold">코드그룹 등록</h5>
								<div class="row mt-3 mb-3">
									<div class="col">
										<label for="inputId" class="form-label">코드그룹 사용여부</label>
										<select class="form-select" name="CCGuseYn">
											<option value="1" <c:if test="${item.CCGuseYn eq 1}">selected</c:if>>Yes</option>
											<option value="0" <c:if test="${item.CCGuseYn eq 0}">selected</c:if>>No</option>
										</select>
									</div>
									<div class="col"></div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">코드그룹 번호</label>
											<input type="text" class="form-control" placeholder="자동생성" readonly name="CCGseq" value="<c:out value="${item.CCGseq }"/>">
										</div>
									</div>
									<div class="col">
										<div class="m-auto">
											<label for="CCGseqChar" id="basicSeqChar" class="form-label" >코드그룹 번호(Another)</label>
											<label for="CCGseqChar" id="alertSeqChar" class="form-label fw-bold text-danger" style="display:none;">코드그룹 번호(Another)</label>
											<input type="text" class="form-control" id="CCGseqChar" name="CCGseqChar" value="<c:out value="${item.CCGseqChar}"/>">
										</div>
									</div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<label for="CCGgroupName" id="basicGroupName" class="form-label">코드그룹 이름 (한글)</label>
											<label for="CCGgroupName" id="alertGroupName" class="form-label fw-bold text-danger" style="display:none;">코드그룹 이름 (한글)</label>
											<input type="text" class="form-control" id="CCGgroupName" name="CCGgroupName" value="<c:out value="${item.CCGgroupName}"/>">
										</div>
									</div>
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">코드그룹 이름 (영문)</label>
											<input type="text" class="form-control" id="CCGgroupNameEng" name="CCGgroupNameEng" value="<c:out value="${item.CCGgroupNameEng}"/>">
										</div>
									</div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<label for="inputId" class="form-label text bold">코드그룹 삭제 여부</label>
										<select class="form-select" name="CCGdelYn">
											<option value="0" <c:if test="${item.CCGdelYn eq 0}">selected</c:if>>No</option>
											<option value="1" <c:if test="${item.CCGdelYn eq 1}">selected</c:if>>Yes</option>
										</select>
									</div>
									<div class="col"></div>
								</div>
								<div class="row mt-3 mb-3">
									<div class="col">
										<div class="m-auto">
											<label for="inputId" class="form-label">설명</label>
											<textarea class="form-control" rows="3"></textarea>
										</div>
									</div>
									<div class="col">
									</div>
								</div>
								<div class="row">
									<div class="text-center mt-3 mb-3">
										<button type="button" class="btn btn-warning" id="btnList" name="btnList">
											<i class='bx bxs-save'> 목록</i>
										</button>
										<button type="button" class="btn btn-primary" id="btnSave" name="btnSave" >
											<i class='bx bxs-save'> 저장</i>
										</button>
										<button type="reset" class="btn btn-danger">
											<i class='bx bx-minus-circle'> 취소</i>
										</button>
									</div>
								</div>
							</form>

							<!-- form vo s -->
							<form name="formVo" id="formVo" method="post">
								<!-- *Vo.jsp s -->
								<%@include file="codeGroupVo.jsp"%>
								<!-- #-> -->
								<!-- *Vo.jsp e -->
							</form>
							<!-- form vo e -->
						</div>
					</div>
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
		var goUrlList = "/codeGroup/codeGroupList"; 			/* #-> */
		var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
		var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
//		var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
//		var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */

		var seq = $("input:text[name=CCGseq]");						/* #-> */

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
		   		/* keyName.val(atob(keyName.val())); */
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