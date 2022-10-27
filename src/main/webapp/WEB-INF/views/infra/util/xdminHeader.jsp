<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<header id="header" class="header fixed-top d-flex align-items-center">

		<div class="d-flex align-items-center justify-content-between">
			<a href="/dashBoard" class="logo d-flex align-items-center"> <img src="/resources/assets/img/logo.png" alt=""> <span class="jumal d-none d-lg-block">Jumal</span>
			</a> <i class="bi bi-list toggle-sidebar-btn"></i>
		</div>
		<!-- End Logo -->

		<nav class="header-nav ms-auto">
			<ul class="d-flex align-items-center">

				<li class="nav-item d-block d-lg-none"><a class="nav-link nav-icon search-bar-toggle " href="#"> <i class="bi bi-search"></i>
				</a></li>
				<!-- End Search Icon-->

				<li class="nav-item dropdown pe-3"><a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown"> <img src="/resources/assets/img/profile-img.jpg" alt="Profile" class="rounded-circle"> <span class="d-none d-md-block dropdown-toggle ps-2"><c:out value="${sessName }" /></span>
				</a> <!-- End Profile Iamge Icon -->

					<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
						<li class="dropdown-header">
							<h6><c:out value="${sessName }" /></h6> <span><c:out value="${sessId }" /></span>
						</li>
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center" href="users-profile.html"> <i class="bi bi-person"></i> <span>My Profile</span>
						</a></li>
				
						<li>
							<hr class="dropdown-divider">
						</li>

						<li><a class="dropdown-item d-flex align-items-center" href="#" id="btnLogout"> <i class="bi bi-box-arrow-right"></i> <span>Sign Out</span>
						</a></li>

					</ul> <!-- End Profile Dropdown Items --></li>
				<!-- End Profile Nav -->

			</ul>
		</nav>
		<!-- End Icons Navigation -->

	</header>
	
	<script type="text/javascript">
			var URL_LOGIN_FORM = "/login";

			$("#btnLogout").on(
					"click",
					function() {
						$.ajax({
							async : true,
							cache : false,
							type : "post",
							url : "/member/logoutProc",
							data : {},
							success : function(response) {
								if (response.rt == "success") {
									location.href = URL_LOGIN_FORM;
								} else {
									// by pass
								}
							},
							error : function(jqXHR, textStatus, errorThrown) {
								alert("ajaxUpdate " + jqXHR.textStatus + " : "
										+ jqXHR.errorThrown);
							}
						});
					});
		</script>