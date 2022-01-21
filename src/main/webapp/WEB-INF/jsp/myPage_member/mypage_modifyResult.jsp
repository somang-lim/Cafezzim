<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="js/signUp.js"></script>
</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->
	
	<%@include file="../header.jsp" %>
<!-- ----------------------------------------------------------------------- -->
<section class="pt-8 pb-4" id="kind">
	<div class="container">
		<h3 class="mypage-title mb-4">My page</h3>

		<!---------------------- 마이페이지 메뉴바 ------------------------------------------>
		<div class="d-flex justify-content-between mb-1 border-0 text-center">
			<a href="mypage_member" class="form-control btn-primary">회원 정보 관리</a>
			<a href="mypageBookingList" class="form-control">예약 관리</a>
			<c:if test="${sessionScope.grade eq 'cafehost' or sessionScope.grade eq 'master'}">
				<a href="cafemanage" class="form-control">카페 관리</a>
			</c:if>
		</div>
	</div>
</section>
		<section class="py-3">
			<div class="container">
				<div class="row flex-center">
					<div class="col-12">
	<!----------------------- 검색창 ------------------------------------------>
						<form class="d-flex mb-3" id="frm_member" method="post">
							<input type="hidden" name="member_id" />	
						</form>

						<div class="row flex-center">
							<div class="col-md-6">
								<form class="">
									<output class="mb-1 fs-1 fw-bold mb-3" id="msg">${msg }</output>
									
									<c:if test="${sessionScope.grade eq 'customer' or sessionScope.grade eq 'cafehost'}">
										<div class="d-flex justify-content-between mb-1 border-0 text-center">
											<a href="/" class="form-control btn-primary">홈으로</a>
										</div>
									</c:if>
									
									<c:if test="${sessionScope.grade eq 'master'}">
										<div class="d-flex justify-content-between mb-1 border-0 text-center">
											<a href="mypage_admin" class="form-control btn-primary">회원 목록</a>
										</div>
									</c:if>
								</form>
							</div>
						</div><!-- //row -->
					</div>
				</div>
			</div><!-- //container -->
		</section>

<%@include file="../footer.jsp" %>
</body>
</html>