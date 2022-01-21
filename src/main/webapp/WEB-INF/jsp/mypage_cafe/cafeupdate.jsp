<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src='./js/mpcafe.js'></script>

<!-- ===============================================-->
<!--    Document Title-->
<!-- ===============================================-->
<title>카페정보 수정</title>
<%@include file="../common.jsp"%>
<script
	src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/gsap-latest-beta.min.js"></script>
<script
	src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/ScrollTrigger.min.js"></script>
</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->
	<!--    헤더   -->
	<%@include file="../header.jsp"%>

	<!-------------------------------------------    사진관리 부분   -------------------------------------------->
	<section class="pt-8 pb-1 ml-5">
		<div class="container">
			<h3>카페 사진 관리</h3>
				<div class="row align-items-center">
					<div class="col-md-6 col-lg-3">
						<a href="" class="location-item card shadow-lg mb-4 border-0"
							style="height: 200px">
							<div class="location-img">
								<img src="img/gallery/${vo.title_photo }" class="img-fluid"
									alt="서울,경기">
							</div>
							<div class="location-desc pt-1 px-3" style="height: 50px">
								<button type="button" class="btn btn-link">메인사진 수정</button>
							</div>
						</a>
					</div>
					<c:if test="${not empty vo.otherphotos }">
						<c:forEach var='photo' items='${vo.otherphotos }'>
							<div class="col-md-6 col-lg-3">
								<a href="" class="location-item card shadow-lg mb-4 border-0"
									style="height: 200px">
									<div class="location-img">
										<img src="${photo.file_path }" class="img-fluid" alt="강릉">
									</div>
									<div class="location-desc pt-1 px-3" style="height: 50px">
										<button type="button" class="btn btn-link">삭제</button>
									</div>
								</a>
							</div>
						</c:forEach>
					</c:if>
				</div>

			<div class="imageadd">
				<button type="button" class="btn btn-outline-primary btn-sm">카페사진
					추가</button>
			</div>
			<br /> <br />

		</div>
	</section>

	<!------------------------   영업일관리 버튼(다른페이지로 넘어감)   ------------------------------------------>
	<form name='frm_cafe' id='frm_cafe' method='POST'>
	<section id="viewTitle" class="py-0">

		<div class="container">
			<div class="btnOffday">
				<h3>영업일 관리</h3>
				<a href="${path }/dayOff?cafe_id=${vo.cafe_id }" class="btn btn-link btn-lg">클릭해서 관리페이지로 이동</a> <br />
				<br />
			</div>
			<!-----------------------------   카페기본정보(cafe_info부분)   ------------------------------------------>
			<h3>카페 기본정보 수정</h3>
				<label for="formGroupExampleInput" class="form-label">카페이름</label> 
				<input type="text" class="form-control" name="cafe_name"
					value="${vo.cafe_name }"> <br /> <label
					for="formGroupExampleInput2" class="form-label">카페주소</label> <input
					type="text" class="form-control" name="cafe_address"
					value="${vo.cafe_address }"> <br />

				<div id="info" class="panel-item py-3">
				<label for="formGroupExampleInput2" class="form-label">카페 상세정보</label>
					<textarea name="cafe_detail" class="form-control"
						aria-label="With textarea" style="height: 150px">
				${vo.cafe_detail }
		      </textarea>
					<br />
				</div>

				<label for="formGroupExampleInput2" class="form-label">카페
					예약가능 총 좌석수</label>
				<div class="row g-2">
					<div class="col-md">
						<div class="form-floating">
							<select class="form-select" name="avail_4seats"
								id="floatingSelectGrid"
								aria-label="Floating label select example">
								<option selected>${vo.avail_4seats }</option>
								<option value="0">0석</option>
								<option value="1">1석</option>
								<option value="2">2석</option>
								<option value="3">3석</option>
								<option value="4">4석</option>
								<option value="5">5석</option>
							</select> <label for="floatingSelectGrid">4인 테이블석(3~4인 이용가능)</label>
						</div>
					</div>
					<div class="col-md">
						<div class="form-floating">
							<select class="form-select" name="avail_2seats"
								id="floatingSelectGrid"
								aria-label="Floating label select example">
								<option selected>${vo.avail_2seats }</option>
								<option value="0">0석</option>
								<option value="1">1석</option>
								<option value="2">2석</option>
								<option value="3">3석</option>
								<option value="4">4석</option>
								<option value="5">5석</option>
							</select> <label for="floatingSelectGrid">2인 테이블석(1~2인 이용가능)</label>
						</div>
					</div>
				</div>
				<input type="hidden" name="cafe_id" value='${vo.cafe_id }'>
		</div>
	</section>

	<section id="target" class="py-5">
		<div class="container">

			<!-----------------------------   카페검색키워드(cafe_searchname부분)   ------------------------------------------>
			<h3>검색 키워드 관리</h3>
				<div class="row">
					<c:if test="${not empty vo.cafesearch }">
						<c:forEach var='name' items='${vo.cafesearch }'>
							<div class="col">
								<input type="text" class="form-control"
									name="search_name" value="${name.search_name }">
								<input type="hidden" name="scname_id" value="${name.scname_id }">
							</div>
						</c:forEach>
					</c:if>
					<div class="col">
						<input type="text" class="form-control" id="search_name"
							name="search_name" placeholder="새 지역명 입력">
					</div>
				</div>
			<br />

			<!-----------------------------   카페메뉴(cafe_searchname부분)   ------------------------------------------>
			<div id="menu" class="panel-item py-0">
					<h3>음료 메뉴 수정</h3>
					<c:if test="${not empty vo.menu}">
						<c:forEach var='menu' items='${vo.menu }'>
							<c:if test='${menu.menu_type == 2 }'>
								<div class="mb-3">
									<input type="text" class="menuname" value="${menu.menu_name}">
									<input type="text" class="menuprice" value="${menu.menu_price}">
									<button type="button" class="btn btn-link">삭제</button>
								</div>
							</c:if>
						</c:forEach>
					</c:if>

					<div class="mb-3">
						<input type="text" class="menuid2" placeholder="새 메뉴 입력">
						<input type="text" class="menuid1" placeholder="가격 입력">
					</div>
					<div class="menuadd">
						<button type="button" class="btn btn-outline-primary btn-sm">음료메뉴
							추가</button>

					</div>
					<br /> <br />


					<h3>메인 메뉴 수정</h3>
					<c:if test="${not empty vo.menu}">
						<c:forEach var='menu' items='${vo.menu }'>
							<c:if test='${menu.menu_type == 1 }'>
								<div class="mb-3">
									<input type="text" class="menuname" value="${menu.menu_name}">
									<input type="text" class="menuprice" value="${menu.menu_price}">
									<button type="button" class="btn btn-link">삭제</button>
								</div>
							</c:if>
						</c:forEach>
					</c:if>

					<div class="mb-3">
						<input type="text" class="menuid4" placeholder="새 메뉴입력"> <input
							type="text" class="menuid1" placeholder="새 가격입력">
						<button type="button" class="btn btn-link">삭제</button>
					</div>
					<div class="menuadd">
						<button type="button" class="btn btn-outline-primary btn-sm">메인메뉴
							추가</button>
					</div>
			</div>
			<br />

			<!---------------------------------- 카페정보수정 버튼 --------------------------------------------->
			<div class="row">
					<button type="button" id='btnSave'
					class="btn btn-lg btn-primary mx-0 mb-2">카페 수정 정보 저장</button>
			</div>

		</div>
		<!-- //container -->

	</section>
	</form>


	<%@include file="../footer.jsp"%>


</body>
</html>