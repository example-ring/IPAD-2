<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- css,font -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/myPage.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

<!-- script -->

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<!-- Bootstrap JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- 사용자 지정 JavaScript -->
<script src="${pageContext.request.contextPath}/js/member_changePw.js"></script>

</head>

<body class="vh-100 overflow-hiddden">
	<!--nav------------------------------------------------------------------------------------------->
	<%@ include file="/jsp/common/header.jsp"%>

	<form
		action="${pageContext.request.contextPath}/member/myPage_modify.do"
		method="post" name="reg_frm" onsubmit="return checkPasswordMatch();">
		<div style="height: 60px; width: 100px;"></div>

		<!-- 배경  -->
		<div class="container-fluid" style="background-color: #F8F9FA;">
			<div style="height: 50px; width: 100px;"></div>

			<!-- 내용 --------------------------------------------------->
			<div class="container ">
				<h1 class="bolder">${myPage_view.name}님의 정보</h1>
			</div>

			<div class="container boxShadow">
				<div style="height: 50px; width: 100px; margin-top: 50px;"></div>

				<div class="container">
					<div class="input-form-backgroud row">
						<div class="input-form col-md-6 mx-auto">

							<table class="table table-borderless align-middle text-center">


								<tr>
									<td>아이디</td>

									<td>${myPage_view.id}</td>
								</tr>

								<tr>
									<td>비밀번호</td>
									<td><input type="password" id="pw" name="pw" value="${myPage_view.pw}">
										</td>
								</tr>

								<tr>
									<td>비밀번호 확인</td>

									<td><input type="password" id="pw_check" name="pw_check">
									</td>
								</tr>


								<tr>
									<td>이름</td>

									<td>${myPage_view.name}</td>
								</tr>

								<tr>
									<td>이메일</td>

									<td><input type="email" name="email"
										value="${myPage_view.email}"></td>

								</tr>


								<tr>
									<td>주소</td>

									<td><input type="text" name="addr"
										value="${myPage_view.addr}"></td>
								</tr>


								<tr>
									<td>생년월일</td>

									<td>${myPage_view.year}년${myPage_view.month}월
										${myPage_view.day}일</td>
								</tr>

								<tr>
									<td>주민등록번호</td>

									<td>${myPage_view.pin}</td>
								</tr>


							</table>


							<div class="btn-group">
							
								<button class="btn btn-light border" type="submit">수정</button>
								&nbsp;&nbsp;
								
								<div class="btn btn-light border">
								<a href="${pageContext.request.contextPath}/delete.do" style="text-decoration: none; color: black;">탈퇴</a>
								</div>
								
								&nbsp;&nbsp;
								
								<div class="btn btn-light border">
									<a href="${pageContext.request.contextPath}/main.do" style="text-decoration: none; color: black;">취소</a>
								</div>
							
							</div>

						</div>
					</div>
				</div>






			</div>



			<div style="height: 50px; width: 100px;"></div>
		</div>


	</form>
	<!-------------------------------------- ------------------------------------------------------->


	<%@ include file="/jsp/common/footer.jsp"%>>



</body>

</html>