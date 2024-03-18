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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap">

    <!-- 스크립트 -->
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/js/member_changePw.js"></script>
    <title>Find PW OK</title>
</head>

<body class="vh-100 overflow-hiddden">

    <!--nav------------------------------------------------------------------------------------------->
    <%@ include file="/jsp/common/header.jsp"%>

    <!-- content -->

    <div style="width: 50px; height: 200px;"></div>

    <form action="${pageContext.request.contextPath}/main.do" method="post" name="reg_frm"
        onsubmit="return checkPasswordMatch();">

        <div class="form-find w-100 m-auto">

            <div class="text-center">
                <h1 class="h3 mb-3 fw-normal">비밀번호 확인</h1>

            
                    <h4>가입하신 비밀번호는 <strong><c:out value="${sessionScope.pw}" /></strong>입니다</h4>
  

                <div class="row">

                    <div class="col-md-12">

                        <div style="width: 50px; height: 30px;"></div>

                        <h6>신규 비밀번호 변경하기</h6>
                        <div style="width: 50px; height: 20px;"></div>
                        <div class=form-group>
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <input type="password" name="pw" id="pw" placeholder="신규 비밀번호" required
                                    autofocus class="form-control">
                            </div>
                        </div>
                        <div class=form-group>
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <input type="password" name="pw_check" id="pw_check" placeholder="신규 비밀번호 확인"
                                    required autofocus class="form-control">
                            </div>
                        </div>
                    </div>
                </div>
                <div style="width: 50px; height: 50px;"></div>
                <div class="d-flex justify-content-between">
                    <button class="btn btn-primary btn-lg w-50 py-2" type="submit">변경</button>&nbsp;&nbsp;&nbsp;
                    <a href="${pageContext.request.contextPath}/main.do" class="btn btn-primary btn-lg w-50 py-2">메인</a>
                </div>
            </div>
        </div>
    </form>

    <!--footer------------------------------------------------------------------------------------------->
    <%@ include file="/jsp/common/footer.jsp"%>
</body>

</html>