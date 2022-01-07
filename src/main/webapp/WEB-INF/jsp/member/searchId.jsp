<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- ===============================================-->
<!--    Document Title-->
<!-- ===============================================-->
<title>카페 예약 사이트</title>
<%@include file="../common.jsp" %>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="js/modal.js"></script>
<link href="css/signIn.css" rel="stylesheet" />
<link href="css/modal.css" rel="stylesheet" />
</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->
	
		<%@include file="../header.jsp" %>
		
		<section class="py-8" id="searchMain">
			<main class="form-signin">
			  <form>
			    <img class="mb-2" src="./img/CafeZzim-logo.png" alt="" width="75" height="75">
			    <h1 class="h3 mb-5 fw-normal">CafeZzim</h1>
			
			    <div class="form-floating my-3">
			      <input type="text" class="form-control" id="floatingInput" placeholder="이름" required="required" autocomplete="off">
			      <label for="floatingInput">이름</label>
			    </div>
			    <div class="form-floating my-2">
			      <input type="email" class="form-control" id="floatingInput" placeholder="이메일" required="required" autocomplete="off">
			      <label for="floatingInput">이메일</label>
			    </div>
			
			    <button class="w-100 btn btn-lg btn-primary my-3" type="button" data-toggle="modal" data-target="#showId">아이디 찾기</button>
			    <div class="text-center links">
			    	<a href="searchPw">비밀번호 찾기</a> | <a href="signIn">로그인</a> | <a href="singUp">회원가입</a>
			    </div>
			    <p class="mt-5 mb-3 text-muted text-center">&copy; CafeZzim</p>
			  </form>
			</main>
		</section>
		<!-- <section> close ============================-->
		<!-- ============================================-->
		
		
		<!-- Model -->
		<div class="row">
			<div class="modal modal-sheet py-9" tabindex="-1" role="dialog" id="showId">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content rounded-6">
			      <div class="modal-header border-bottom-0">
			        <h5 class="modal-title pr-3">아이디</h5>
			        <!-- 
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			         -->
			      </div>
			      <div class="modal-body text-center">
						<p>찾은 아이디 보여주는 곳</p>
			      </div>
			      <div class="modal-footer flex-column border-top-0">
			      	<div>
				        <button type="button" class="btn btn-lg btn-outline-primary" id="showLogin">로그인</button>
				        <button type="button" class="btn btn-lg btn-outline-primary" id="showSearchPw">비밀번호 찾기</button>
			      	</div>
			      </div>
			    </div>
			  </div>
			</div>
		</div>

<%@include file="../footer.jsp" %>
</body>
</html>