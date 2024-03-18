<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- css,font -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
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
<script src="${pageContext.request.contextPath}/js/member_login.js"></script>
<title>Login</title>
</head>
    
<body class="vh-100 overflow-hiddden">
	
	<!--nav------------------------------------------------------------------------------------------->
	
	<%@ include file="/jsp/common/header.jsp"%>
    
 	<!-- content -->
 	
<div style="width: 50px; height: 200px;"></div>


<form method="post" name="reg_frm" action='${pageContext.request.contextPath}/member/loginOk.do' >
<div class="form-signin w-100 m-auto">


    <h1 class="h3 mb-3 fw-normal">로그인</h1>

    <div class="form-floating">
      <input name="id" type="text" class="form-control" id="floatingInput" >
      <label for="floatingInput">아이디</label>
    </div>
    <div class="form-floating">
      <input name="pw" type="password" class="form-control" id="floatingPassword" >
      <label for="floatingPassword">비밀번호</label>
    </div>

    <div class="form-check text-start my-3">
      <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        정보 저장
      </label><br>
      
    </div>
   <button class="btn btn-primary w-100 py-2" type="submit">로그인</button>
<a href="${pageContext.request.contextPath}/member/joinTs.do" class="btn btn-link">아직 회원이 아니신가요?</a><br>
<a href="${pageContext.request.contextPath}/member/findId.do" class="btn">아이디 찾기</a>
	<a href="${pageContext.request.contextPath}/member/findPw.do" class="btn">비밀번호 찾기</a>
	
</div>
	
	<div style="width: 50px; height: 200px;"></div>
</form>




	<!--footer------------------------------------------------------------------------------------------->

	<%@ include file="/jsp/common/footer.jsp"%>


</body>
</html>