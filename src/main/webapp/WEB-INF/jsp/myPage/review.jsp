<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>테이블 예약 화면</title>
<%@include file="../common.jsp" %>
</head>


<body>
<%@include file="../header.jsp" %>

<!-- ----------------------------------------------------------------------- -->
<section class="pt-8 pb-2" id="kind">
	<div class="container">
		<h3 class="mb-4">My page</h3>

		<!---------------------- 마이페이지 메뉴바 ------------------------------------------>
		<div class="d-flex justify-content-between mb-1 border-0">
			<input type="button" class="form-control" value="회원 정보 관리">
			<input type="button" class="form-control btn-primary" value="예약 관리">
			<input type="button" class="form-control" value="카페 관리">
		</div>
	</div>
</section>

<section class="pt-4 pb-6">

	<div class="container">
		<div class="text-center">
			<h5 class="">{카페이름} 에서의 시간은 어땠나요?</h5>
			<p>날짜: {2021년 12월 31일 12시}</p>
		</div>
		
		<form action="" method="post">
		
			<div class="display-2 text-center mb-4">
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
			</div>
			<div class="input-group mb-3">
         <span class="input-group-text">내용</span>
         <textarea class="form-control" aria-label="With textarea"></textarea>
       </div>
       <div class="mb-5">
         <label class="form-label" for="customFile">사진 업로드</label>
         <input type="file" class="form-control" id="customFile">
       </div>
		</form>
		
		<h4>메뉴 정보</h4>
		<ul class="list-group mb-3">
      <li class="list-group-item d-flex justify-content-between lh-sm">
        <div>
          <h6 class="my-0">카페모카</h6>
          <small class="text-muted">휘핑크림 많이</small>
        </div>
        <span class="text-muted">₩ 8300</span>
      </li>
     
      <li class="list-group-item d-flex justify-content-between lh-sm">
        <div>
          <h6 class="my-0">아메리카노(ice)</h6>
          <small class="text-muted">얼음적게</small>
        </div>
        <span class="text-muted">₩ 5000</span>
      </li>
    </ul>
		
		
		<div class="row">
			<div class="col-7"><a href="review" class="w-100 btn btn-lg btn-primary">후기 작성 완료</a></div>
			<div class="col-5"><a href="" class="w-100 btn btn-lg btn-light">후기 작성 취소</a></div>
		</div>
		
	</div>

</section>

<%@include file="../footer.jsp" %>
</body>
</html>