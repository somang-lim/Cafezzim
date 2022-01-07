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
<%@include file="common.jsp" %>
</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->
	
	<%@include file="header.jsp" %>
		<section class="">
			<div class="container">
				<div class="row flex-center">
					<div class="col-12 col-md-6">
						<div class="row mb-3">
							<button type="button" class="btn btn-light col-4">회원정보 관리</button>
							<button type="button" class="btn btn-light col-4">카페정보 관리</button>
							<button type="button" class="btn btn-light col-4">예약정보 관리</button>
						</div>
							
						<form class="d-flex mb-3">
							<input class="form-control me-2" type="search"
								placeholder="이름 or 회원ID" aria-label="Search">
							<button class="btn btn-outline-success" type="submit"
								style="width: 80px;">검색</button>
						</form>

						<div class="row">
							<div class="col-xl-6 mb-3">
								<div class="d-flex">
									<div class="">
										<img class="img-fluid me-4 me-md-3 me-lg-4"
											src="img/gallery/user-1.png" width="100" alt="">
									</div>
									<div class="admin-member-desc">
										<p>{회원이름}</p>
										<p>회원ID:{회원ID}</p>
										<a href="">회원 관리</a>
									</div>
								</div>
							</div>

							<div class="col-xl-6 mb-3">
								<div class="d-flex">
									<div class="">
										<img class="img-fluid me-4 me-md-3 me-lg-4"
											src="img/gallery/user-1.png" width="100" alt="">
									</div>
									<div class="admin-member-desc">
										<p>{회원이름}</p>
										<p>회원ID:{회원ID}</p>
										<a href="">회원 관리</a>
									</div>
								</div>
							</div>
							
							<div class="col-xl-6 mb-3">
								<div class="d-flex">
									<div class="">
										<img class="img-fluid me-4 me-md-3 me-lg-4"
											src="img/gallery/user-1.png" width="100" alt="">
									</div>
									<div class="admin-member-desc">
										<p>{회원이름}</p>
										<p>회원ID:{회원ID}</p>
										<a href="">회원 관리</a>
									</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
			<!-- //container -->
		</section>

<%@include file="footer.jsp" %>
</body>
</html>