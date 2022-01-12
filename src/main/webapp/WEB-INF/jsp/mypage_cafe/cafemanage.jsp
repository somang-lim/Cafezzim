<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
           
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>마이페이지_카페관리</title>
<%@include file="../common.jsp" %>       
</head>


<body>
<%@include file="../header.jsp" %>

<!-- 마이페이지 내 메뉴- -->
<section class="pt-8 pb-4" id="kind">
	<div class="container">
		<h3 class="mypage-title mb-4">My page</h3>

		<!---------------------- 마이페이지 메뉴바 ------------------------------------------>
		<div class="d-flex justify-content-between mb-1 border-0 text-center">
			<a href="mypage_member" class="form-control">회원 정보 관리</a>
			<a href="mypageBookingList" class="form-control">예약 관리</a>
			<a href="cafemanage" class="form-control btn-primary">카페 관리</a>
		</div>
	</div>
</section>
							
	<!-- 예약리스트 -->
	<section id="shadowbox" class="pt-4 pb-1 ml-5">
		<div class="container">	
			
				<!----------------------- 검색창 ------------------------------------------>
				<div class="input-group my-3">
				   <input type="text" class="form-control" placeholder="카페ID 또는 카페명 검색">
				   <div class="input-group-append">
				    <button class="btn btn-secondary" type="button">
				     <i class="fa fa-search"></i>
					</button>
				  </div>
				</div>
				
				
				<br/>
				<br/>
			
				<!------------------------ 검색된 예약페이지 ------------------->
			<div class="card shadow-lg w-70 mb-5 mx-20 border-0">
				<div class="row align-items-center">
					<div class="col-md-6 col-lg-3">
						<a href="cafeupdate" class="location-item card shadow-lg mb-4 border-0" style="height:300px">
							<div class="location-img">
								<img src="img/gallery/ediya_logo.jpg" class="img-fluid" alt="서울,경기">
							</div>
							<div class="location-desc pt-1 px-4">
								<h4>이디야</h4>
								<span class="text-muted">행리단길 370번길 36</span>
								<br/>
								<small class="text-muted">카페아이디: 1</small>
							</div>
						</a>
					</div>
					<div class="col-md-6 col-lg-3">
						<a href="cafeupdate" class="location-item card shadow-lg mb-4 border-0" style="height:300px">
							<div class="location-img">
								<img src="img/gallery/hollys_logo.png" class="img-fluid" alt="강릉">
							</div>
							<div class="location-desc pt-1 px-4">
								<h4>홀리스</h4>
								<span class="text-muted">영화로 34-1</span>
								<br/>
								<small class="text-muted">카페아이디: 2</small>
							</div>
						</a>
					</div>
					<div class="col-md-6 col-lg-3">
						<a href="cafeupdate" class="location-item card shadow-lg mb-4 border-0" style="height:300px">
							<div class="location-img">
								<img src="img/gallery/mega_logo.jpg" class="img-fluid" alt="부산">
							</div>
							<div class="location-desc pt-1 px-4">
								<h4>메가커피</h4>
								<span class="text-muted">진천로 18길 100</span>
								<br/>
								<small class="text-muted">카페아이디: 3</small>
							</div>
						</a>
					</div>
					<div class="col-md-6 col-lg-3">
						<a href="cafeupdate" class="location-item card shadow-lg mb-4 border-0" style="height:300px">
							<div class="location-img">
								<img src="img/gallery/twosome_logo.svg" class="img-fluid" alt="제주도">
							</div>
							<div class="location-desc pt-1 px-4">
								<h4>투썸카페</h4>
								<span class="text-muted">삼성로 129</span>
								<br/>
								<small class="text-muted">카페아이디: 4</small>
								
							</div>
						</a>
					</div>
				</div>
			  </div>
			</div>
		</section>

<%@include file="../footer.jsp" %>
</body>
</html>