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

<script>
    function confirmDelete(bId) {
        // "정말 삭제하시겠습니까?" 경고창 띄우기
        var result = confirm("정말 삭제하시겠습니까?");
        
        // 사용자가 확인을 선택한 경우, 삭제 요청을 서버에 보내기
        if (result) {
            // Ajax를 활용한 삭제 요청 예시
            $.ajax({
                type: "POST",  // 또는 "GET"
                url: "${pageContext.request.contextPath}/board/delete.do",
                data: { "bId": bId },
                success: function(response) {
                    // 서버에서 삭제가 성공했을 때의 처리
                    console.log("삭제 성공: " + response);
                    // 삭제 후 필요한 작업 수행 (예: 페이지 리로드 등)
                },
                error: function(error) {
                    // 서버에서 삭제가 실패했을 때의 처리
                    console.error("삭제 실패: " + error);
                }
            });
        }
    }
</script>
</head>

<body class="vh-100 overflow-hiddden">

	<!--nav------------------------------------------------------------------------------------------->

	<%@ include file="/jsp/common/header.jsp"%>
	
	<form action= "${pageContext.request.contextPath}/board/modify.do" method="post">

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
						<h4>글 내용</h4>
					</div>

					<div style="width: 50px; height: 50px;"></div>
	
					<div class="newWrite">
					


<table class="table table-bordered border-light-3">
    <input type="hidden" name="bId" value="${content_view.bId}">
    
    <tr>
        <td>No</td>
        <td>${content_view.bId}</td>
    </tr>

    <tr>
        <td>조회수</td>
        <td>${content_view.bHit}</td>
    </tr>

    <tr>
    <td>이름</td>
    <td><input name="bName" type="text" value="${content_view.bName}"></td>
	</tr>

    <tr>
        <td>제목</td>
        <td><input type="text" name="bTitle" value="${content_view.bTitle}"></td>
    </tr>

    <tr>
        <td>내용</td>
        <td>
            <textarea name="bContent" cols="100" rows="20">${content_view.bContent}</textarea>
        </td>
    </tr>

</table>

					
						<!-- 글 작성 테이블 하단 -->

						<div class="submitBtn">
							
							<td colspan="2"><input type="submit" value="수정">&nbsp;&nbsp;
							
							 <a href="${pageContext.request.contextPath}/board/list.do">글 목록</a>
							&nbsp;&nbsp;<a href="delete.do?bId=${content_view.bId}"  onclick="confirmDelete(${content_view.bId})">삭제</a>&nbsp;&nbsp; 
							<a href="reply_view.do?bId=${content_view.bId}">답변</a>
							
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