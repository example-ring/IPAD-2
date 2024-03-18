<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession"%>
<%@ page import="java.util.Enumeration"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- css,font -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/board_write.css">
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
<script src="${pageContext.request.contextPath}/js/board_write.js"></script>
<title>Write Page</title>
</head>

<body class="vh-100 overflow-hiddden">

	<!--nav------------------------------------------------------------------------------------------->

	<%@ include file="/jsp/common/header.jsp"%>

	<form action='${pageContext.request.contextPath}/board/write.do'
		method="post">
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
							<h4>글 작성</h4>
						</div>

						<div style="width: 50px; height: 50px;"></div>

						<div class="newWrite">
							<table class="table table-bordered border-light-3">
								<thead>
									<tr>
										<th>제목</th>
										<td><label> <input type="text" name="bTitle"
												placeholder=" 제목"> <input type="checkbox"
												class="btn-check" id="btn-check" autocomplete="off">
										</label></td>
									</tr>

									<tr>
										<th>이름</th>
										<td><label> <input name="bName" type="text"
												value="${sessionScope.name}" readonly>
										</label></td>
									</tr>


								</thead>

								<tr>
									<th>내용</th>
									<td><textarea name="bContent" id="text" cols="100"
											rows="30" placeholder=" 내용"></textarea></td>
								</tr>


								<tr>
									<th>파일</th>
									<td>
										<div class="input-group mb-3">
											<input type="file" class="form-control" id="inputGroupFile01">
										</div>

										<div class="input-group mb-3">
											<input type="file" class="form-control" id="inputGroupFile02">
										</div>
									</td>
								</tr>

								<tr>
									<th>답변 알림</th>
									<td><label>${sessionScope.name} 님의 이메일: ${sessionScope.email}
									</label>


										<div style="width: 50px; height: 20px;"></div>

										<div class="form-check">
											<input class="form-check-input" type="radio"
												name="exampleRadios" id="exampleRadios1" value="option1"
												checked> <label class="form-check-label"
												for="exampleRadios1"> 수신 허용 </label>
										</div>
										<div class="form-check">
											<input class="form-check-input" type="radio"
												name="exampleRadios" id="exampleRadios2" value="option2">
											<label class="form-check-label" for="exampleRadios2">
												수신 비허용 </label>
										</div></td>


								</tr>

							</table>

							<!-- 글 작성 테이블 하단 -->

							<div class="submitBtn">
								<button type="submit" class="btn btn-light border"
									id="btn-check">등록하기</button>

								<button type="reset" class="btn btn-light border" id="btn-check">
									재작성</button>

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