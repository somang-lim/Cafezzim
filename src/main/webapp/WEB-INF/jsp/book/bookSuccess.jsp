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
<section class="pt-9 pb-1 ml-5" id="kind">
	<h3 class="mx-10">{카페이름}예약 완료!</h3>
</section>

	<div class="card shadow-lg w-70 mb-5 mx-8 border-0 p-4">
		<section class="py-5" id="location">
			<div class="container-lg">
				<div class="row align-items-center">
					<!-- 예약리스트 -->
					<div class="col-md-6 col-lg-3">
						<a href="" class="location-item card shadow-lg mb-4 border-0">
							<div class="location-img">
								<img src="img/gallery/cafe-img01.jpg" class="img-fluid" alt="서울,경기">
							</div>
							<div class="location-desc pt-1 px-4">
								<h4>행궁 81.2</h4>
								<span class="text-muted">행리단길 370번길 36</span>
								<br/>
								<small class="text-muted">예약일자 2022-01-02</small>
							</div>
						</a>
					</div>
				</div>
			</div>
		</section>
	</div>
<div class="d-flex justify-content-between w-70 mb-1 mx-8 border-0 p-4">
	<input type="button" class="form-control btn-primary" value="다른예약하기">
	<input type="button" class="form-control" value="예약내용 확인하기">
</div>
<%@include file="../footer.jsp" %>
</body>
</html>