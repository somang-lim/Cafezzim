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
<link rel="stylesheet" href="./css/dayOff.css">
<script src="./js/dayOff.js"></script>
</head>


<body>
<%@include file="../header.jsp" %>

<!-- ----------------------------------------------------------------------- -->
<section class="pt-9 pb-1 ml-5" id="kind">
	<h3 class="mx-10">My page</h3>
</section>
	<!---------------------- 마이페이지 메뉴바 ------------------------------------------>
<div class="d-flex justify-content-between w-70 mb-1 mx-8 border-0 p-4">
	<input type="button" class="form-control" value="회원 정보 관리">
	<input type="button" class="form-control" value="예약 관리">
	<input type="button" class="form-control btn-primary" value="카페 관리">
</div>
	<!-------------------------- 영업일 관리 창(?) ------------------------------------------>
	<div class="card shadow-lg w-70 mb-5 mx-8 border-0 p-4">
		<!-------------------------- 영업일 관리 ------------------------------------------>
		<section class="py-3" id="dayOffCheck">
			<h1 class="h3 mb-2 fw-norma mb-4">영업일 관리</h1>
			<div class="col-xxl-4 col-xl-7 mb-2">
				<div class="card card-header-actions h-100">
					<div class="card-header">
						<p class="fw-normal">{카페이름}의 휴무일</p>
					</div>
					<div class="card-body">
						<div class="dayOff-list">
							<!-- dayOff Item 1-->
							<ul class="dayOff-item mb-3">
								<li class="dayOff-item-marker">
									<span class="timeline-item-content"> <strong class="fw-bold">
											2022-01-08 </strong> 휴무 
									<i class="fas fa-times-circle fa-lg" style="color:#f00"></i>
								</span></li>
							</ul>
							<!-- dayOff Item 2-->
							<ul class="dayOff-item mb-3">
								<li class="dayOff-item-marker">
									<span class="timeline-item-content"> <strong class="fw-bold">
											2022-01-09 </strong> 10:00 ~ 12:00 일시 정지 
									<i class="fas fa-times-circle fa-lg" style="color:#f00"></i>
								</span></li>
							</ul>
							<!-- dayOff Item 3-->
							<ul class="dayOff-item mb-3">
								<li class="dayOff-item-marker">
									<span class="timeline-item-content"> <strong class="fw-bold">
											2022-01-09 </strong> 14:00 ~ 16:00 4인 테이블 1개 일시 정지 
									<i class="fas fa-times-circle fa-lg" style="color:#f00"></i>
								</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!---------------------- 영업 일시 중지 ------------------------------------------>
		<hr class="my-4">
		<div class="col-md-7 col-lg-7">
			<h4 class="mb-3">영업 일시 중지</h4>

			
			<form class="dayOffCheck">
				<!------------------------- 영업 날짜 ------------------------------------------>
				<div class="cafe-dayOff-date col-md-7 mb-4">
					<label for="datePicker" class="form-label">날짜</label>
					<div class="choose-date mb-1">
						<input type="text" name="date" id="datePicker" class="form-control w-75 dayPicker"
							placeholder="날짜를 알려주세요">
					</div>
				</div>
				
				<!------------------------- 영업 시간 ------------------------------------------>
				<div class="cafe-dayOff-time col-7 mb-4">
					<div class="select-zone mb-1">
						<label>시간</label>
						<i class="fas fa-plus-circle fa-lg" id="plus-time" onclick="show_select(); toggle_time()"></i>
						<i class="fas fa-minus-circle fa-lg" id="minus-time" onclick="hide_select(); toggle_time()"></i>
					</div>
					<div class="select-time" id="select-time">
						<div class="start-time mb-3">
							<select name="start-time" id="select-start" class="form-select select-start w-75">
								<option selected>시작 시간을 선택하세요.</option>
								<option>10:00</option>
								<option>11:00</option>
								<option>12:00</option>
								<option>13:00</option>
								<option>14:00</option>
								<option>15:00</option>
								<option>16:00</option>
								<option>17:00</option>
								<option>18:00</option>
								<option>19:00</option>
								<option>20:00</option>
							</select>
						</div>
						<div class="end-time mb-3">
							<select name="end-time" id="select-end" class="form-select select-end w-75">
								<option selected>종료 시간을 선택하세요.</option>
								<option>10:00</option>
								<option>11:00</option>
								<option>12:00</option>
								<option>13:00</option>
								<option>14:00</option>
								<option>15:00</option>
								<option>16:00</option>
								<option>17:00</option>
								<option>18:00</option>
								<option>19:00</option>
								<option>20:00</option>
							</select>
						</div>
					</div>
				</div>

				<!------------------------- 영업 테이블 ------------------------------------------>
				<div class="cafe-dayOff-table col-7 mb-4">
					<div class="select-table mb-1">
						<label>테이블</label>
						<i class="fas fa-plus-circle fa-lg" id="plus-table" onclick="show_choose(); toggle_table()"></i>
						<i class="fas fa-minus-circle fa-lg" id="minus-table" onclick="hide_choose(); toggle_table()"></i>
					</div>
					<div class="choose-table" id="choose-table">
						<div class="table-for-two mb-2">
							<label for="two-table-count">2인 테이블</label>
							<input type="number" class="form-control w-25 text-center table-count" id="two-table-count" value=3>
						</div>
						<div class="table-for-four mb-2">
							<label for="four-table-count">4인 테이블</label>
							<input type="number"	class="form-control w-25 text-center table-count" id="four-table-count" value=2>
						</div>
					</div>
				</div>
				<button type="button" class="btn btn-primary btn-lg w-25" id="dayOff-apply">적용</button>
			</form>
		</div>
	</div>

	<%@include file="../footer.jsp" %>
</body>
</html>