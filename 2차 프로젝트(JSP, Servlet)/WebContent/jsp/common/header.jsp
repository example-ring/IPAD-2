
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
	
<nav class="navbar fixed-top navbar-expand-lg">
	<div class="container">
		<!-- LOGO -->
		<a class="navbar-brand fs-4" href="/IPAD/index.jsp"><img src="${pageContext.request.contextPath}/img/logo.png" alt=""></a>
		<!-- Toggle BTN(모바일 비율 아이콘) -->
		<button class="navbar-toggler shadow-none border-0 " type="button"
			data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- sidebar -->
		<div class="offcanvas offcanvas-start sidebar" tabindex="-1"
			id="offcanvasNavbar">
			<!-- sidebar header -->
			<div class="offcanvas-header border-bottom">
				<h5 class="offcanvas-title" id="offcanvasNavbarLabel"><img src="${pageContext.request.contextPath}/img/logo.png" alt=""></h5>
				<button type="button" class="btn-close shadow-none"
					data-bs-dismiss="offcanvas"></button>
			</div>
			<!-- sidebar body -->
			<div class="offcanvas-body d-flex flex-column flex-lg-row p-4 p-lg-0">
				<ul class="navbar-nav justify-content-center fs-5 flex-grow-1 pe-3">
					<li class="nav-item mx-5"><a class="nav-link"
						href="${pageContext.request.contextPath}/locationRecommand/recommand.do">지역추천</a></li>
					<li class="nav-item mx-5"><a class="nav-link"
						href="${pageContext.request.contextPath}/SaleAnalysis/search.do">매출분석</a></li>
					<li class="nav-item dropdown mx-5">
						<div class="dropdown-center">
							<a class="nav-link dropdown-toggle" href="#" role="button"
								data-bs-toggle="dropdown">입지분석</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item"
									href="${pageContext.request.contextPath}/locationAnalysis/population.do">인구분석</a></li>
								<li><a class="dropdown-item"
									href="${pageContext.request.contextPath}/locationAnalysis/hospital.do">치과현황</a></li>
								<li><a class="dropdown-item"
									href="${pageContext.request.contextPath}/locationAnalysis/map.do">지도</a></li>
							</ul>
						</div>
					</li>
					<li class="nav-item mx-5"><a class="nav-link"
						href="${pageContext.request.contextPath}/board/list.do">Q&A</a>
					</li>
				</ul>
				<div class="d-flex flex-column flex-lg-row justify-content-center align-items-center gap-3">
                    <c:choose>
                        <c:when test="${empty sessionScope.ValidMem}">
                            <!-- 세션에 로그인 정보가 없는 경우 -->
                            <a href="${pageContext.request.contextPath}/member/login.do" class="text-dark">로그인</a>
                            <a id="loginBtn" href="${pageContext.request.contextPath}/member/joinTs.do" class="text-white text-decoration-none px-3 py-1 rounded-4">회원가입</a>
                        </c:when>
                        <c:otherwise>
                            <!-- 세션에 로그인 정보가 있는 경우 -->
                            <a href="${pageContext.request.contextPath}/member/myPage_view.do" class="text-dark"> 환영합니다, ${sessionScope.name}님</a>
                            <a id="loginBtn" href="${pageContext.request.contextPath}/member/logout.do" class="text-white text-decoration-none px-3 py-1 rounded-4">로그아웃</a>
                        </c:otherwise>
                    </c:choose>
			</div>

			</div>
		</div>
	</nav>