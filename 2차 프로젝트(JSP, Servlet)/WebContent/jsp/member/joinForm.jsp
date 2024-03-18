<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3W//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html14/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<!-- css,font -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/joinForm.css">

<!-- 스크립트 -->

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<script src="${pageContext.request.contextPath}/js/member_join.js"></script>

</head>

<body>

	<!--nav------------------------------------------------------------------------------------------->

	<%@ include file="/jsp/common/header.jsp"%>
	
	<form action='${pageContext.request.contextPath}/member/joinOk.do' name="reg_frm" method="post" onsubmit="return infoConfirm()">
		
		
		<div class="container">
		
		<div style="width: 50px; height: 100px;"></div>
		
			<div class="input-form-backgroud row">
				<div class="input-form col-md-12 mx-auto">
				
					<h4 class="mb-3">회원가입</h4>
					
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="id">아이디</label> <input type="text"
									class="form-control" name="id"  placeholder="" >
								
							</div>
							<div class="col-md-6 mb-3">
								<label for="name">이름</label> <input type="text"
									class="form-control" name="name" placeholder="" >
								
							</div>
						</div>

						<div class="col-md-6 mb-3">
							<label for="pw">비밀번호</label> <input type="password"
								class="form-control" name="pw" placeholder="" >
							
						</div>

						<div class="col-md-6 mb-3">
							<label for="pw_check">비밀번호 확인</label> <input type="password"
								class="form-control" name="pw_check" placeholder="" >
							
						</div>

						<div class="col-md-6 mb-3">
							<label for="email">이메일</label> <input type="email"
								class="form-control" name="email" placeholder="you@example.com" >
							
						</div>
						
						
						<div class="row">
						<label for="birth">생년월일</label>
						<div class="col-md-3 mb-3">
						<input  type="text" name="year" class="form-control" size="4" maxlength="4"
						placeholder="년"> 
						
						</div>
						
						<div class="col-md-3 mb-3">
							<select name="month" class="form-control" placeholder="월">
							
								<option>월</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
							</select> 
							
							</div>
							
							
						<div class="col-md-3 mb-3">
						<select name="day" class="form-control" placeholder="일">
								
								<option>일</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
								<option value="21">21</option>
								<option value="22">22</option>
								<option value="23">23</option>
								<option value="24">24</option>
								<option value="25">25</option>
								<option value="26">26</option>
								<option value="27">27</option>
								<option value="28">28</option>
								<option value="29">29</option>
								<option value="30">30</option>
								<option value="31">31</option>
						</select>
					</div>
						
				</div>		
						
						<div class="col-md-6 mb-3">
							<label for="pin">주민등록번호</label> <input type="text" name="pin" size=15
						 	class="form-control" minlength=13 maxlength=13> 
									
						</div>
						
						<div class="col-md-6 mb-3">
							<label for="addr">주소</label> <input type="text"
								class="form-control"  name="addr" placeholder="서울 송파구 장지동"
								required>
							
						</div>				

						<div class="mb-4"></div>
						<button class="btn btn-light border" type="submit" >가입
							완료</button>
						<button class="btn btn-light border"><a href="${pageContext.request.contextPath}/member/login.do">취소</a></button>
					
				</div>
			</div>
		</div>
		
		<div style="width: 50px; height: 50px;"></div>
		
	</form>
	
	<!--footer------------------------------------------------------------------------------------------->

	<%@ include file="/jsp/common/footer.jsp"%>
	
</body>
</html>