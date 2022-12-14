<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<div class="container px-0 mt-2">
	<div class="row">
		<div class="col">
			<!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
			<ul class="pagination justify-content-center mb-0">
				<!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
				<c:if test="${vo.thisPage eq vo.startPage}">
					<li class="page-item disabled"><a class="page-link" href="javascript:goList(1)" aria-label="first"> <i class="fa-solid fa-angles-left"></i></a></li>
				</c:if>
				<c:if test="${vo.thisPage gt vo.startPage}">
					<li class="page-item"><a class="page-link" href="javascript:goList(1)" aria-label="first"> <i class="fa-solid fa-angles-left"></i></a></li>
				</c:if>
				<c:if test="${vo.startPage gt vo.pageNumToShow}">
					<li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
				</c:if>
				<c:if test="${vo.startPage lt vo.pageNumToShow}">
					<li class="page-item disabled"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
				</c:if>
				<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
					<c:choose>
						<c:when test="${i.index eq vo.thisPage}">
							<li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${vo.endPage ne vo.totalPages}">
					<li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li>
				</c:if>
				<c:if test="${vo.endPage eq vo.totalPages }">
					<li class="page-item disabled"><a class="page-link" href="javascript:goList(${vo.endPage - 1})"><i class="fa-solid fa-angle-right"></i></a></li>
				</c:if>
				<c:if test="${vo.thisPage ne vo.totalPages }">
					<li class="page-item"><a class="page-link" href="javascript:goList(${vo.totalPages})" aria-label="last"> <i class="fa-solid fa-angles-right"></i></a></li>
					<!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
				</c:if>
				<c:if test="${vo.thisPage eq vo.totalPages }">
					<li class="page-item disabled"><a class="page-link" href="javascript:goList(${vo.totalPages})" aria-label="last"> <i class="fa-solid fa-angles-right"></i></a></li>
					<!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
				</c:if>
			</ul>
		</div>
	</div>
</div>

<script src="https://kit.fontawesome.com/8d31d55045.js" crossorigin="anonymous"></script>