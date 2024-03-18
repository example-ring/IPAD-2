<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	href="${pageContext.request.contextPath}/css/board_list.css">
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
<script src="${pageContext.request.contextPath}/js/board_content_view.js"></script>
<title>List</title>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        // content-view-link 클래스를 가진 요소를 찾아 클릭 이벤트에 대한 핸들러 등록
        var elements = document.getElementsByClassName("content-view-link");
        
        // elements의 길이를 확인 (디버깅 용도로 console.log 추가)
        console.log("elements length:", elements.length);

        for (var i = 0; i < elements.length; i++) {
            elements[i].addEventListener("click", function() {
                // 경고 창 띄우기
                alert('글을 열람하시려면 로그인이 필요합니다.');
            });
        }
    });
</script>
</head>

<body class="vh-100 overflow-hiddden">

	<!--nav------------------------------------------------------------------------------------------->

	<%@ include file="/jsp/common/header.jsp"%>

	<!-- content -->
	<div class="container">

		<div class="row">

			<div style="width: 50px; height: 100px;"></div>


			<div class="container">
				<h1 style="font-weight: bolder;">Q&A</h1>
			</div>

			<div class="container boxShadow">


				<!-- 내용 -->


				<div class="tab-content" id="myTabContent">

					<div style="width: 50px; height: 100px;"></div>

					<!-- 게시판 -->

					<div>

						<div class="contents container">


							<!-- 게시판 제목 -->
							<div class="h2-title">
								<h4 style="float: left;">게시글</h4>
							</div>

							<!-- 게시판 검색 -->

							<div class="search">
								<input class="form-control" list="datalistOptions" type="text"
									placeholder="검색어 입력">

								<datalist id="datalistOptions">
									<option value="병원 입지">
									<option value="개업 절차">
									<option value="매출">
									<option value="폐업 문의">
								</datalist>

								<img id="searchImg"
									src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
							</div>


							<!-- 게시판 테이블 -->
							<div style="width: 50px; height: 30px;"></div>

							<div class="board">

								<table class="table table-group-divider">
									<thead>
										<tr>
											<th>번호</th>
											<th></th>
											<th>작성자</th>
											<th>제목</th>
											<th>날짜</th>
											<th>조회수</th>
										</tr>
									</thead>


									<tbody class="table border-light-3">

										<c:forEach items="${list}" var="bDto">
											<tr>
												<td>${bDto.bId}</td>
												<td></td>
												<td>${bDto.bName}</td>
												<td><c:forEach begin="1" end="${bDto.bIndent}">↪</c:forEach>

													<c:choose>

														<c:when test="${not empty sessionScope.ValidMem}">

															<a
																href="<c:url value='content_view.do'/>?bId=${bDto.bId}">${bDto.bTitle}</a>
														</c:when>

														<c:otherwise>

															<span class="content-view-link" data-bid="${bDto.bId}">로그인이 필요합니다.</span>
														</c:otherwise>
													</c:choose></td>
												<td><span>${bDto.bDate}</span></td>
												<td>${bDto.bHit}</td>
											</tr>
										</c:forEach>

									</tbody>


									<!-- C:forEach -->


								</table>

							</div>
						</div>



					</div>

					<!-- 글쓰기 버튼 -->


					<c:if test="${not empty sessionScope.ValidMem}">
						<a type="button" class="btn"
							style="background-color: #E9ECEF; float: right; width: 100px;"
							href="${pageContext.request.contextPath}/board/write_view.do">
							글쓰기 </a>
					</c:if>

					<c:if test="${empty sessionScope.ValidMem}">
						<p>글을 열람하시려면 로그인이 필요합니다.</p>
					</c:if>


					<div style="width: 50px; height: 50px;"></div>

					<!-- 페이지 네이션 -->

					<div style="width: 50px; height: 50px;"></div>

					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<li class="page-item disabled"><a class="page-link" href="#"
								tabindex="-1" style="color: black;">이전</a></li>
							<li class="page-item"><a class="page-link" href="#"
								style="color: black;">1</a></li>
							<li class="page-item"><a class="page-link" href="#"
								style="color: black;">2</a></li>
							<li class="page-item"><a class="page-link" href="#"
								style="color: black;">3</a></li>
							<li class="page-item"><a class="page-link" href="#"
								style="color: black;">다음</a></li>
						</ul>
					</nav>

				</div>

				<div style="width: 50px; height: 80px;"></div>
			</div>

		</div>

	</div>

	<div style="width: 50px; height: 50px;"></div>

	<!--footer------------------------------------------------------------------------------------------->

	<%@ include file="/jsp/common/footer.jsp"%>

</body>
</html>