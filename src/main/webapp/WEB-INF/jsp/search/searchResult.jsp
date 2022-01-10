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
</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->
	
		<%@include file="../header.jsp" %>
		
		<section class="py-0" id="searchMain">
			<div class="bg-holder"
				style="background-color:#f7f7f7;">
			</div>
			<div class="container-sm position-relative">
				<div class="row flex-center pt-6 pb-3">
					
					<!-- 카페 검색 form 부분 -->
					<div class="col-lg-10 col-xl-6">
						<form name="frm_search" action="" method="post">
							<div class="cafe-find-wrap">
								<!-- 위치 혹은 카페명으로 검색 -->
								<div class="cafe-search-txt">
									<label>위치 혹은 카페명</label>
									<input type="text" name="findStr" placeholder="가고싶은 카페를 저희에게 알려주세요">
								</div>
								<!-- 카페 예약 날짜 검색 -->
								<div class="cafe-search-date">
									<label>예약 날짜</label>
									<input type="text" name="date" id="datePicker" placeholder="날짜를 알려주세요">
								</div>
								<div class="cafe-search-btn text-center">
									<button type="button" class="btn btn-lg btn-primary rounded-pill hover-top"><i class="fas fa-search"></i> 검색</button>
								</div>
							</div>
						</form>
					</div>
				</div>
				
			</div>
		</section>
		
		<section class="py-5">
			<div class="container-sm position-relative">
				
				
				<div class="row">
					<div class="col-12">
						<h2>서울대입구</h2>
						<p>서울대입구에 위치한 카페 100개가 검색되었습니다.</p>
					</div>
				</div>
				<!-- //end row -->
				
				<div class="row justify-content-between mb-3">
					<div class="col-6 col-md-3">
						<select class="form-select mb-3" aria-label=".form-select example">
	            <option selected="">정렬기준</option>
	            <option value="1">추천 순</option>
	            <option value="2">후기 많은 순</option>
	            <option value="3">찜 많은 순</option>
	            <option value="3">거리 순</option>
	          </select>
					</div>
					
					<div class="col-6 col-md-3">
						<div class="text-right">
							<a href="map" class="btn btn-lg btn-light rounded-pill">
								<i class="fas fa-map-marker-alt"></i>
		          	<span class="fz-13">지도에서 보기</span>
		          </a>
		        </div>
					</div>
					
				</div>
				<!-- //end row -->
				
				<div class="row">
				
					<!-- 검색 결과 -->
					<div class="col-xl-6">
					
						<a href="view" class="search-item card shadow-lg mb-4 border-0">
							<div class="d-flex">
								<div class="search-item-img">
									<div class="img-wrap">
										<img src="img/gallery/cafe-img01.jpg" class="img-fluid" alt="서울,경기">
									</div>
								</div>
								<div class="search-item-desc py-3 px-3">
									<p class="fw-medium fz-14">랭스터디카페 서울대입구역점</p>
									<p class="fz-13">서울 관악구 쑥고개로 125 지하1층</p>
									<p class="fz-12"><i class="fas fa-star"></i> 4.8 (100)</p>
								</div>
							</div>
							
						</a>
						
					</div>
					
					<!-- 검색 결과 -->
					<div class="col-xl-6">
					
						<a href="view" class="search-item card shadow-lg mb-4 border-0">
							<div class="d-flex">
								<div class="search-item-img">
									<div class="img-wrap">
										<img src="img/gallery/cafe-img02.jpg" class="img-fluid" alt="서울,경기">
									</div>
								</div>
								<div class="search-item-desc py-3 px-3">
									<p class="fw-medium fz-14">고요서울</p>
									<p class="fz-13">서울 관악구 남부순환로226길 31 2층</p>
									<p class="fz-12"><i class="fas fa-star"></i> 4.8 (100)</p>
								</div>
							</div>
							
						</a>
						
					</div>
					
					<!-- 검색 결과 -->
					<div class="col-xl-6">
					
						<a href="view" class="search-item card shadow-lg mb-4 border-0">
							<div class="d-flex">
								<div class="search-item-img">
									<div class="img-wrap">
										<img src="img/gallery/cafe-img03.jpg" class="img-fluid" alt="서울,경기">
									</div>
								</div>
								<div class="search-item-desc py-3 px-3">
									<p class="fw-medium fz-14">그릭데이 서울대점</p>
									<p class="fz-13">서울 관악구 관악로 168</p>
									<p class="fz-12"><i class="fas fa-star"></i> 4.8 (100)</p>
								</div>
							</div>
							
						</a>
						
					</div>
					
					<!-- 검색 결과 -->
					<div class="col-xl-6">
					
						<a href="view" class="search-item card shadow-lg mb-4 border-0">
							<div class="d-flex">
								<div class="search-item-img">
									<div class="img-wrap">
										<img src="img/gallery/cafe-img04.jpg" class="img-fluid" alt="서울,경기">
									</div>
								</div>
								<div class="search-item-desc py-3 px-3">
									<p class="fw-medium fz-14">달달첼베이커리</p>
									<p class="fz-13">서울 관악구 청룡7길 47 1층</p>
									<p class="fz-12"><i class="fas fa-star"></i> 4.8 (100)</p>
								</div>
							</div>
							
						</a>
						
					</div>
					
				</div>
					
					
				
			</div>
			<!-- //end container -->
		</section>



<%@include file="../footer.jsp" %>
</body>
</html>