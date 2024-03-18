<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- css,font -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/board_content_view.css">
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
<script
	src="${pageContext.request.contextPath}/js/board_content_view.js"></script>
<title>ContentView Page</title>
</head>

<body class="vh-100 overflow-hiddden">

	<!--nav------------------------------------------------------------------------------------------->

	<%@ include file="/jsp/common/header.jsp"%>
	
	<form action= "${pageContext.request.contextPath}/board/reply.do" method="post">

	
	<!-- 전체 -->

	<div class="container">

		<div class="row">

			<div style="width: 50px; height: 100px;"></div>

	
			<div class="container">
				<h1 style="font-weight: bolder;">Q&A</h1>
			</div>

			<!-- 글 작성 테이블 -->

			<div class="container">

				<div class="row">

					<div style="width: 50px; height: 100px;"></div>
						

					<div>
						<h4>답변</h4>
					</div>

					<div style="width: 50px; height: 50px;"></div>
	
					<div>
					
						<table class="table table-bordered border-light-3">
									<input type="hidden" name="bId" value="${reply_view.bId}" >
									<input type="hidden" name="bGroup" value="${reply_view.bGroup}">
									<input type="hidden" name="bStep" value="${reply_view.bStep}">
									<input type="hidden" name="bIndent" value="${reply_view.bIndent}">
								
								<tr>
									<td>No</td>
									<td>${reply_view.bId}</td>
								</tr>

								<tr>
									<td>조회수</td>
									<td>${content_view.bHit}</td>
								</tr>

								<tr>
									<td>이름</td>
									<td><input type="text" name="bName" value="${reply_view.bName}" ></td>
								</tr>

								<tr>
									<td>제목</td>
									<td><input type="text" name="bTitle" value="${reply_view.bTitle}">[답변]</td>
								</tr>

								<tr>
									<td>내용</td>
									<td>
										<textarea name="bContent" cols="100" rows="8">${reply_view.bContent}
										
										---------------------- [Reply] ----------------------</textarea>
									</td>
									
								</tr>

							
						</table>
					
						<!-- 글 작성 테이블 하단 -->

						<div class="submitBtn">
							
							<td colspan="2"><input type="submit" value="답변">&nbsp;&nbsp;
							
							 <a href="${pageContext.request.contextPath}/board/list.do">글 목록</a>
							
							</td>
							
						</div>

					</div>

				</div>

			</div>



			<div style="width: 50px; height: 100px;"></div>

		</form>
			<!--footer------------------------------------------------------------------------------------------->

			<%@ include file="/jsp/common/footer.jsp"%>
</body>
</html>