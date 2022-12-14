<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>

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
<!-- test -->
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />

<!-- Kakao Map API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- <script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7f53c37dc4421e758709ee1ef160750b&libraries=services"></script> -->


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
					<li class="breadcrumb-item"><a href="/member/memberList">사용자 목록</a></li>
					<li class="breadcrumb-item active">사용자 관리</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section">
			<div class="row">
				<div class="col-lg">
					<div class="card">
						<div class="card-body">
							<form id="form" name="form" method="post" enctype="multipart/form-data">
								<input type="hidden" id="MBseq" name="MBseq" value="<c:out value="${item.MBseq }"/>">
								<div class="container mt-2 mb-5">
									<div class="row">
										<div class="row mt-5">
											<div class="col-5 d-flex justify-content-start">
												<h4>기본정보</h4>
											</div>
										</div>
										<div class="row">
											<div class="col">
												<div class="form-floating mt-3">
													<input class="form-control shadow-sm" type="text" id="MBid" name="MBid" value="<c:out value="${item.MBid}" />">
													<label for="input_id">아이디</label>
												</div>
											</div>
										</div>
										<div class="row">
											<span class="alert_subtext" id="result_id">사용가능한 ID 입니다.</span>
										</div>
										<div class="row">
											<div class="col">
												<div class="form-floating mt-2">
													<input class="form-control shadow-sm" type="password" id="MBpassword" name="MBpassword" value="<c:out value="${item.MBpassword}" />">
													<label for="input_password">비밀번호</label>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col">
												<div class="form-floating mt-3">
													<input class="form-control shadow-sm" type="password" placeholder="Password Check" id="input_password_chk" value="<c:out value="${item.MBpassword}" />">
													<label for="input_password_chk">비밀번호확인</label>
												</div>
											</div>
										</div>
										<div class="row">
											<span class="alert_subtext" id="result_password">비밀번호가 일치합니다.</span>
										</div>
										<div class="row">
											<div class="col">
												<div class="form-floating mt-2">
													<input class="form-control shadow-sm" type="text" placeholder="name" id="input_name" value="<c:out value="${item.MBname}" />">
													<label for="input_name">이름</label>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col  d-flex align-items-end">
												<div class="form-floating mt-3 mobile-box">
													<input class="form-control shadow-sm" type="text" placeholder="mobile" id="MBmobile" name="MBmobile" value="<c:out value="${item.MBmobile}" />">
													<label for="input_mobile">Mobile</label>
												</div>
												<button type="button" class="btn btn-primary ms-4 opacity-75 mobile-btn">전송</button>
											</div>
											<div class="row">
												<span class="alert_subtext mobile" id="send_certnumber">인증번호가 전송되었습니다.</span>
											</div>
										</div>
										<div class="row">
											<div class="col d-flex align-items-end">
												<div class="form-floating mt-2 mobile-box">
													<input class="form-control shadow-sm" type="text" placeholder="certnumber" id="input_certnumber">
													<label for="input_certnumber">인증번호</label>
												</div>
												<button type="button" class="btn btn-primary ms-4 opacity-75 mobile-btn">인증확인</button>
											</div>
											<div class="row">
												<span class="form-label alert_subtext mobile" id="result_certnumber">본인인증완료</span>
											</div>
										</div>
										<div class="row">
											<div class="col">
												<div class="form-floating mt-2">
													<input class="form-control shadow-sm" type="email" id="MBemail" name="MBemail" value="<c:out value="${item.MBemail}" />">
													<label for="input_email">Email</label>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="form-check form-check-inline email_subtext">
												<input class="form-check-input" type="checkbox" id="confirm_emailAd" value="option1">
												<label class="form-check-label ps-2" for="confirm_emailAd">구매내역 및 혜택 Email 수신 동의</label>
											</div>
										</div>
										<div class="row mt-5">
											<div class="col-5 d-flex justify-content-start">
												<h4>기본 배송지</h4>
											</div>
											<div class="row">
												<span class="alert_subtext mobile" id="result_certnumber">택배 배송 받으실 주소를 입력해주세요.</span>
											</div>
											<div class="row">
												<div class="col d-flex align-items-end">
													<div class="form-floating mt-2 mobile-box">
														<input class="form-control shadow-sm" type="text" readonly placeholder="zipcode" id="addressZipcode" name="addressZipcode">
														<label for="input_zipcode">인증번호</label>
													</div>
													<button type="button" class="btn btn-primary ms-4 opacity-75 mobile-btn" onclick="searchAddress()">주소검색</button>
												</div>
											</div>
											<div class="row">
												<div class="col">
													<div class="form-floating mt-4">
														<input class="form-control shadow-sm" type="text" readonly placeholder="도로명/지번주소" id="addressMain" name="addressMain">
														<label for="input_postAddress">도로명/지번주소</label>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col">
													<div class="form-floating mt-4">
														<input class="form-control shadow-sm" type="text" placeholder="상세주소" id="addressDetail" name="addressDetail">
														<label for="input_detailAddress">상세주소</label>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col">
													<div class="form-floating mt-4">
														<input class="form-control shadow-sm" type="text" readonly placeholder="참고항목" id="addressMore" name="addressMore">
														<label for="input_detailAddress">참고항목</label>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col">
													<div class="form-floating mt-4">
														<input class="form-control shadow-sm" type="text" readonly placeholder="위도" id="x" name="x">
														<label for="input_detailAddress">위도</label>
													</div>
												</div>
												<div class="col">
													<div class="form-floating mt-4">
														<input class="form-control shadow-sm" type="text" readonly placeholder="경도" id="y" name="y">
														<label for="input_detailAddress">경도</label>
													</div>
												</div>
											</div>
											<div>
												<div id="wrap" style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 5px 0; position: relative">
													<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1" onclick="foldDaumPostcode()" alt="접기 버튼">
												</div>
											</div>
											<div class="row mt-4 mb-2">
												<div class="col">
													<div class="form-floating mt-4 mb-5">
														<button type="button" class="btn btn-success w-100" id="btnSave" name="btnSave">
															<i class="fa-solid fa-play me-3"></i>가입하기
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="mt-5 mb-5" id="footer">
										<!-- start -->
										<div class="filebox clearfix">
											<div class="inputFile">
												<label for="memberUploadedImage" class="addImgBtn">+</label>
												<input type="file" id="memberUploadedImage" name="memberUploadedImage" class="upload-hidden" accept=".jpg, .png, .gif" multiple>
												<button type="button" id="btnReset" class="btn btn-danger">리셋</button>
											</div>
											<ul id="Preview" class="sortable"></ul>
										</div>
										<div class="row">
										<input type="file" id="AddTest" name="AddTest" multiple>
												<input type="file" id="AddTest2" name="AddTest2" accept=".jpg, .png, .gif">
												<button type="button" id="TestGo" class="btn btn-success">TEST</button>
										</div>
										<!-- end -->
									</div>
								</div>
							</form>
						</div>
						<form name="formVo" id="formVo" method="get">
							<!-- *Vo.jsp s -->
							<%@include file="memberVo.jsp"%>
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
		var goUrlList = "/member/memberList"; /* #-> */
		var goUrlInst = "/member/memberInst"; /* #-> */
		var goUrlUpdt = "/member/memberUpdt"; /* #-> */
		//		var goUrlUele = "/code/codeUele";				/* #-> */
		//		var goUrlDele = "/code/codeDele";				/* #-> */

		var seq = $("input:hidden[name=MBseq]"); /* #-> */

		var form = $("form[name=form]");
		var formVo = $("form[name=formVo]");

		$("#btnSave").on("click", function() {
			if (seq.val() == "0" || seq.val() == "") {
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
		$("#btnList").on("click", function() {
			formVo.attr("action", goUrlList).submit();
		});

		// Kakao Map

		// 우편번호 찾기 찾기 화면을 넣을 element
		var element_wrap = document.getElementById('wrap');

		function foldDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_wrap.style.display = 'none';
		}

		function searchAddress() {
			// 현재 scroll 위치를 저장해놓는다.
			var currentScroll = Math.max(document.body.scrollTop,
					document.documentElement.scrollTop);
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("addressMore").value = extraAddr;

							} else {
								document.getElementById("addressMore").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('addressZipcode').value = data.zonecode;
							document.getElementById("addressMain").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("addressDetail").focus();

							/* lat and lng from address s */

							// 주소-좌표 변환 객체를 생성
							//	var geocoder = new daum.maps.services.Geocoder();
							// 주소로 좌표를 검색
							//	geocoder.addressSearch(roadAddr, function(result, status) {
							// 정상적으로 검색이 완료됐으면,
							//		if (status == daum.maps.services.Status.OK) {
							//			document.getElementById("ifmaLatArray0").value=result[0].y;
							//			document.getElementById("ifmaLngArray0").value=result[0].x;
							//		}
							//	});
							/* lat and lng from address e */

							// iframe을 넣은 element를 안보이게 한다.
							// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
							element_wrap.style.display = 'none';

							// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
							document.body.scrollTop = currentScroll;
						},
						// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
						onresize : function(size) {
							element_wrap.style.height = size.height + 'px';
						},
						width : '100%',
						height : '100%'
					}).embed(element_wrap);

			// iframe을 넣은 element를 보이게 한다.
			element_wrap.style.display = 'block';

		}

		/* test 221006 s */
		
		$(function() {
				$("#TestGo").on("click", function(obj){
				// jquery식 file pasing
			//	var totalFileSize = 0;
				var obj = $("input:file[name=AddTest]")[0].files;
				var obj2 = $("input:file[name=AddTest2]")[0].files;
				var total2 = obj + obj2;
				var fileCount = obj.length;
				var totalFileCount = obj.length + obj2.length;
				var totalFileSize = obj.size + obj2.size;
				
			//	allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
			//	allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
			//	var obj = $("input:file[name=AddTest]")[0].files;
			//	var obj2 = $("input:file[name=AddTest2]")[0].files;
				
				//js 방식
			//	var obj = document.getElementById("AddTest").files;
			//	var obj2 = document.getElementById("AddTest2").files;
				
			//	alert(obj);
			//	alert(obj.length);
				// alert(obj.name);
				console.log(obj.name);
				
				for(var i=0; i<totalFileCount; i++){
					if(!validationFile(obj, totalFileCount)) {
						return false;
					}
				}
				
			//	alert(obj2);
			//	alert(obj2.length);
				// alert(obj2.name);
				
				for(var i=0; i<obj2.length; i++){
				//	alert(obj2[i].name + " : " + obj2[i].size);
				}
			
				//alert(obj.length + obj2.length);
				
				
				
				
				function validationFile(obj, totalFileCount, totalFileSize) {
					const maxSize = 160000;
					const maxCount = 5;
					var totalCount = 0;
			//		var totalSize += $("input:file[name=AddTest2]")[0].files[i].size;
			//		totalCount += obj[i].length;
			//		totalCount += obj2[i].length;
					var extDeiny = new RegExp(
							"(.*?)\.(exe|sh|zip|alz|sql|pdf|hwp)$");
					
					if(totalFileSize > maxSize) {
						alert("파일은 최대 20MB 까지 업로드 가능합니다.");
						$('#AddTest').val("");
						$('#AddTest2').val("");
						return false;
					}
					if((obj.length) > maxCount) {
						alert("파일은 최대 5개 까지 업로드 가능합니다.");
						$('#AddTest').val("");
						return false;
					}
					if(totalFileCount > maxCount) {
						alert("전체 파일은 최대 5개 까지 업로드 가능합니다.");
						console.log(total2.name);
						$('#AddTest').val("");
						$('#AddTest2').val("");
						return false;
					}
					if(extDeiny.test(obj.name)) {
						console.log(obj.name);
						alert('이미지파일만 업로드');
						$('#AddTest').val("");
						return false;
					}
			//		if(obj.name)
					
					else {
						
					}
					
				}
				
				
				
			
				
			});
		});

		$(function() {
			//드래그 앤 드롭
			$(".sortable").sortable();
			
			
			//이미지 등록
			$("#memberUploadedImage")
					.change(
							function(e) {
								//div 내용 비워주기
								/* $('#Preview').empty(); */

								var files = e.target.files;
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
										$("#memberUploadedImage").val(""); //파일 초기화
										return false;
									}

									if (regex.test(fileName)) {
										alert('확장자명을 확인해주세요.');
										$("#memberUploadedImage").val(""); //파일 초기화
										return false;
									}
									return true;
								}

								function preview(arr) {
									arr.forEach(function(f) {
												//파일명이 길면 파일명...으로 처리
												/*
												var fileName = f.name;
												if(fileName.length > 10){
												    fileName = fileName.substring(0,7)+"...";
												}
												 */
												 console.log(arr);
												 
												 console

												//div에 이미지 추가
												var str = '<li class="ui-state-default" id="imgChild">';
												//str += '<span>'+fileName+'</span><br>';
												
												//이미지 파일 미리보기
												if (f.type.match('image.*')) {
													//파일을 읽기 위한 FileReader객체 생성
													var reader = new FileReader();
													reader.onload = function(e) {
														//파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
														str += '<img src="'+ e.target.result +'" value="' + f.name + '" width=100 height=100>';
														str += '<button type="button" class="btn" id="delImg">x</button>';
														str += '<span>'+ f.name +'</span>';
														str += '</li>';
														$(str).appendTo('#Preview');
													}
													reader.readAsDataURL(f);
												} else {
													//이미지 파일 아닐 경우 대체 이미지
													/*
													str += '<img src="/resources/img/fileImg.png" title="'+f.name+'" width=60 height=60 />';
													$(str).appendTo('#Preview');
													 */
												}
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

		});

		/* test 221006 e */
	</script>

</body>

</html>