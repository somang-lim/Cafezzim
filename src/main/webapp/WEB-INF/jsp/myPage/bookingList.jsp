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
<section class="pt-8 pb-4" id="kind">
	<div class="container">
		<h3 class="mypage-title mb-4">My page</h3>

		<!---------------------- 마이페이지 메뉴바 ------------------------------------------>
		<div class="d-flex justify-content-between mb-1 border-0 text-center">
			<a href="mypage_member" class="form-control">회원 정보 관리</a>
			<a href="mypageBookingList" class="form-control btn-primary">예약 관리</a>
			<a href="cafemanage" class="form-control">카페 관리</a>
		</div>
	</div>
</section>

<section class="py-3" id="location">
	<div class="container-lg">
<!----------------------- 검색창 ------------------------------------------>
		<div class="input-group my-3">
			<input type="text" class="form-control" placeholder="카페 이름을 입력하세요">
		    <div class="input-group-append">
		    <button class="btn btn-secondary" type="button">
		     <i class="fa fa-search"></i>
			</button>
		  </div>
		</div>
		<div class="row align-items-center">
			<!----------------------- 예약리스트 ------------------------------------------>
			<div class="col-md-6 col-lg-3">
				<a href="reserv_info" class="location-item card shadow-lg mb-4 border-0">
					<div class="location-img">
						<img src="img/myPage_cafe/cafe1.png" class="img-fluid" alt="서울,경기">
					</div>
					<div class="location-desc pt-1 px-4">
						<h4>행궁 81.2</h4>
						<span class="text-muted">행리단길 370번길 36</span>
						<br/>
						<small class="text-muted">예약일자 2022-01-02</small>
					</div>
				</a>
			</div>
			<!----------------------- 예약리스트 ------------------------------------------>
			<div class="col-md-6 col-lg-3">
				<a href="reserv_info" class="location-item card shadow-lg mb-4 border-0">
					<div class="location-img">
						<img src="img/myPage_cafe/cafe2.png" class="img-fluid" alt="강릉">
					</div>
					<div class="location-desc pt-1 px-4">
						<h4>Season eat</h4>
						<span class="text-muted">영화로 34-1</span>
						<br/>
						<small class="text-muted">예약일자 2022-02-14</small>
					</div>
				</a>
			</div>
			<!----------------------- 예약리스트 ------------------------------------------>
			<div class="col-md-6 col-lg-3">
				<a href="reserv_info" class="location-item card shadow-lg mb-4 border-0">
					<div class="location-img">
						<img src="img/myPage_cafe/cafe3.png" class="img-fluid" alt="부산">
					</div>
					<div class="location-desc pt-1 px-4">
						<h4>행궁살롱</h4>
						<span class="text-muted">진천로 18길 100</span>
						<br/>
						<small class="text-muted">예약일자 2022-07-06</small>
					</div>
				</a>
			</div>
			<!----------------------- 예약리스트 ------------------------------------------>
			<div class="col-md-6 col-lg-3">
				<a href="reserv_info" class="location-item card shadow-lg mb-4 border-0">
					<div class="location-img">
						<img src="img/myPage_cafe/cafe4.png" class="img-fluid" alt="제주도">
					</div>
					<div class="location-desc pt-1 px-4">
						<h4>정지영로스터즈</h4>
						<span class="text-muted">삼성로 129</span>
						<br/>
						<small class="text-muted">예약일자 2021-12-30</small>
						
					</div>
				</a>
			</div>
		</div>
	</div>
</section>

<%@include file="../footer.jsp" %>
</body>
</html>