<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- css,font -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/findId.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap">

<!-- 스크립트 -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<title>Find ID OK</title>
</head>

<body class="vh-100 overflow-hiddden">

	<!--nav------------------------------------------------------------------------------------------->

	<%@ include file="/jsp/common/header.jsp"%>

	<!-- content -->

	<div style="width: 50px; height: 200px;"></div>


	<form action="${pageContext.request.contextPath}/member/login.do" method="post">
	
	<div class="form-find w-100 m-auto">


  	<div class="text-center">
  <h1 class="h3 mb-3 fw-normal">아이디 확인</h1>
  
  	<c:if test="${not empty findId}">
                    <h4>가입하신 아이디는 <strong><c:out value="${findId}" /></strong>입니다</h4>
                </c:if>
  	
  	<div style="width: 50px; height: 100px;"></div>
 <button class="btn btn-primary btn-lg w-100 py-2" type="submit">로그인 화면으로</button>



</div>
	
	




	<div style="width: 50px; height: 200px;"></div>
	
	</div>
	
	</form>


	<!--footer------------------------------------------------------------------------------------------->

	<%@ include file="/jsp/common/footer.jsp"%>
</body>
</html>