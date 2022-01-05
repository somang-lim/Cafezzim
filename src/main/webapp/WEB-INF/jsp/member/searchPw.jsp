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
<link href="css/login.css" rel="stylesheet" />

</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->
	
		<%@include file="../header.jsp" %>
		
		<section class="py-8" id="searchMain">
			<main class="form-signin">
			  <form action="signIn">
			    <img class="mb-4" src="./brand/bootstrap-logo.svg" alt="" width="72" height="57">
			    <h1 class="h3 mb-5 fw-normal">CafeZzim</h1>
			
			    <div class="form-floating my-3">
			      <input type="text" class="form-control" id="floatingInput" placeholder="아이디" required="required">
			      <label for="floatingInput">아이디</label>
			    </div>
			    
			     <div class="form-floating my-3">
			      <input type="text" class="form-control" id="floatingInput" placeholder="이름" required="required">
			      <label for="floatingInput">이름</label>
			    </div>
			    
			    <div class="form-floating my-2">
			      <input type="email" class="form-control" id="floatingInput" placeholder="이메일" required="required">
			      <label for="floatingInput">이메일</label>
			    </div>
			
			    <button class="w-100 btn btn-lg btn-primary my-3" type="submit">비밀번호 찾기</button>
			    <div class="text-center links">
			    	<a href="signIn">로그인</a> | <a href="searchId">아이디 찾기</a> | <a href="singUp">회원가입</a>
			    </div>
			    <p class="mt-5 mb-3 text-muted">&copy; CafeZzim</p>
			  </form>
			</main>
		</section>
		<!-- <section> close ============================-->
		<!-- ============================================-->



<%@include file="../footer.jsp" %>
</body>
</html>