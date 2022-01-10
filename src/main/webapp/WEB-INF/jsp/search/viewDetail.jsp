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
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/ScrollTrigger.min.js"></script>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=tb2yhf2pw8"></script>
</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->
	
		<%@include file="../header.jsp" %>
		
		<section id="slider" class="pt-6 pb-4">
			
				<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
				  <div class="carousel-indicators d-flex flex-center">
				    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
				    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
				  </div>
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <div>
								<img src="img/gallery/cafe-img01.jpg" class="img-fluid">
							</div>
				    </div>
				    <div class="carousel-item">
				      <div>
								<img src="img/gallery/cafe-img01.jpg" class="img-fluid">
							</div>
				    </div>
				    <div class="carousel-item">
				      <div>
								<img src="img/gallery/cafe-img01.jpg" class="img-fluid">
							</div>
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				</div><!-- //슬라이드 부분 끝 -->
				
			
		</section>

		<section id="viewTitle" class="py-0">
			<div class="container">

				<p class="display-5">랭스터디카페 서울대입구역점</p>
				<p class="">서울 관악구 쑥고개로 125 지하1층</p>
				<p class=""><i class="fas fa-star"></i> 4.8 (100)</p>

				<div class="row">
					<div class="col-10">
						<a href="order" class="btn btn-lg btn-primary w-100 mx-0 mb-2">예약하기</a>
						<!-- <button type="button"
							class="btn btn-lg btn-primary w-100 mx-0 mb-2">예약하기</button> -->
					</div>
					<div class="col-2">
						<button type="button" class="btn w-100 mx-0 mb-2">
							<i class="far fa-heart"></i>
						</button>
					</div>
				</div>



			</div>
		</section>
		
		<section id="target">
			<div class="container">
				<div class="main-tool-bar-wrap">
					<div class="main-tool-bar">
						<ul class="nav nav-pills d-flex">
			        <li class="nav-item"><a href="#info" class="nav-link active" aria-current="page">카페 정보</a></li>
			        <li class="nav-item"><a href="#menu" class="nav-link">메뉴 보기</a></li>
			        <li class="nav-item"><a href="#review" class="nav-link">리뷰 보기</a></li>
			      </ul>
					</div>
				
				</div>


			<div id="viewDetailContent">
				<div id="info" class="panel-item py-5">
					못할 아름답고 방지하는 뼈 것이다. 거친 많이 모래뿐일 속에서 기관과 황금시대의 만천하의 있으며, 사막이다. 위하여 수
					가치를 길을 얼음이 청춘의 커다란 우리는 사막이다. 피부가 동력은 없는 가치를 자신과 심장의 것이다. 그러므로 별과
					청춘을 역사를 품고 인생의 석가는 못할 봄바람이다. 위하여서 평화스러운 같이 귀는 못할 어디 많이 구하기 끓는다. 그들을
					피가 사라지지 앞이 착목한는 그들의 말이다. 어디 듣기만 가슴이 실현에 커다란 두손을 내는 많이 말이다. 아름답고 듣기만
					피부가 인간에 하여도 인간의 운다.

					<div>
						<iframe
							src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2662.411174236135!2d126.95111784896119!3d37.480590360777114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9f89073e4383%3A0xb967a35b1ca07ae7!2z7Iqk7YOA67KF7IqkIOyEnOyauOuMgOyeheq1rOyXreygkA!5e0!3m2!1sko!2skr!4v1641449383550!5m2!1sko!2skr"
							height="320" style="border: 0; width: 100%;" allowfullscreen=""
							loading="lazy"></iframe>
					</div>
				</div>
				<div id="menu" class="panel-item py-5">
					<h3>음료 메뉴</h3>
					<div class="mb-3 form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck1">
						<label class="form-check-label" for="exampleCheck1">아이스
							아메리카노</label>

					</div>
					<div class="mb-3 form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck2">
						<label class="form-check-label" for="exampleCheck2">카페라떼</label>

					</div>

					<h3>메인 메뉴</h3>
					<div class="mb-3 form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck3">
						<label class="form-check-label" for="exampleCheck3">팬케이크</label>

					</div>
					<div class="mb-3 form-check">
						<input type="checkbox" class="form-check-input" id="exampleCheck4">
						<label class="form-check-label" for="exampleCheck4">팥빙수</label>

					</div>
				</div>

				<div id="review" class="panel-item py-5">
					<p class="display-6">총점 3.5</p>
					<div class="row">
						<div class="col-2">
							<img src="img/gallery/cafe-review01.jpg" class="img-fluid">
						</div>
						<div class="col-10">
							<div class="row">
								<div class="col-8">
									<img src="img/gallery/profile-none.png"
										class="img-fluid img-profile "> user1
								</div>
								<div class="col-4">
									<p class="">
										<i class="fas fa-star"></i> 4.8 (100)
									</p>
								</div>
							</div>


							<p>커피가 맛있어요</p>
						</div>
					</div>

				</div>
			</div>


		</div><!-- //container -->
      
		</section>


<%@include file="../footer.jsp" %>


</body>
</html>