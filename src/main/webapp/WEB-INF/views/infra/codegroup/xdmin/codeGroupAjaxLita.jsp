<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page session="true"%>

									<div>
										<span>Total : <c:out value="${vo.totalRows}" /></span>
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
																<%-- <td><c:out value="${list.CCGdelYn}" /></td> --%>
																<td><c:if test="${list.CCGdelYn eq 0}">
																		<c:out value="No" />
																	</c:if> <c:if test="${list.CCGdelYn eq 1}">
																		<c:out value="Yes" />
																	</c:if>
																</td>
																<br>
															</tr>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</tbody>
										</table>
									</div>
								
								<!-- pagination s -->
								<%@include file="../../util/pagination.jsp"%>
								<!-- pagination e -->
	<!-- End #main -->

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
		var excelUri = "/codeGroup/excelDownload"; /* #-> */
		var form = $("form[name=formList]");
		
		var seq = $("input:hidden[name=CCGseq]");
		goForm = function(keyValue) {
			/* if(key != 0) seq.val(btoa(key)); */
			seq.val(keyValue);
			form.attr("action", goUrlForm).submit();
		}


		goList = function(thisPage) {
			$("input:hidden[name=thisPage]").val(thisPage);
			setLita();
		}


		$('#btnForm').on("click", function() {
			goForm(0);
		});

		$("#btnExcel").click(function() {
			form.attr("action", excelUri).submit();
		});
	</script>


</body>

</html>