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
<title>카페정보 수정</title>
<%@include file="../common.jsp" %>
<script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/gsap-latest-beta.min.js"></script>
<script src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/16327/ScrollTrigger.min.js"></script>
</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->
	
		<%@include file="../header.jsp" %>
		
		<section id="manageimage" class="pt-8 pb-1 ml-5">
		<div class="container">
		<h3>카페 사진 관리</h3>	
				<div class="row align-items-center">
					<div class="col-md-6 col-lg-3">
						<a href="" class="location-item card shadow-lg mb-4 border-0" style="height:200px">
							<div class="location-img">
								<img src="img/gallery/cafe-img01.jpg" class="img-fluid" alt="서울,경기">
							</div>
							<div class="location-desc pt-1 px-3" style="height:50px">
								<button type="button" class="btn btn-link">삭제</button>
							</div>
						</a>
					</div>
					<div class="col-md-6 col-lg-3">
						<a href="" class="location-item card shadow-lg mb-4 border-0" style="height:200px">
							<div class="location-img">
								<img src="img/gallery/cafe-img03.jpg" class="img-fluid" alt="강릉">
							</div>
							<div class="location-desc pt-1 px-3" style="height:50px">
								<button type="button" class="btn btn-link">삭제</button>
							</div>
						</a>
					</div>
					<div class="col-md-6 col-lg-3">
						<a href="" class="location-item card shadow-lg mb-4 border-0" style="height:200px">
							<div class="location-img">
								<img src="img/gallery/cafe-img03.jpg" class="img-fluid" alt="부산">
							</div>
							<div class="location-desc pt-1 px-3" style="height:50px">
								<button type="button" class="btn btn-link">삭제</button>
							</div>
						</a>
					</div>
					<div class="col-md-6 col-lg-3">
						<a href="" class="location-item card shadow-lg mb-4 border-0" style="height:200px">
							<div class="location-img">
								<img src="img/gallery/cafe-img04.jpg" class="img-fluid" alt="제주도">
							</div>
							<div class="location-desc pt-1 px-3" style="height:50px">
								<button type="button" class="btn btn-link">삭제</button>
							</div>
						</a>
					</div>
				</div>
			<div class="imageadd">
            <button type="button" class="btn btn-outline-primary btn-sm">카페사진 추가</button>
            </div>
            <br/>
			<br/>

			</div>
		</section>
	

		<section id="viewTitle" class="py-0">
		
			<div class="container">
				<div class="btnOffday">	
				<h3>영업일 관리</h3>		     	
					<a href="dayOff" class="btn btn-link btn-lg">클릭해서 관리페이지로 이동</a>
					<br/>
					<br/>
				</div>
				<h3>카페 기본정보 수정</h3>	
			  <label for="formGroupExampleInput" class="form-label">카페이름</label>	
			  <input type="text" class="form-control" id="formGroupExampleInput" value="랭스터디카페 서울대입구역점">
			<br/>
			  <label for="formGroupExampleInput2" class="form-label">카페주소</label>	
			  <input type="text" class="form-control" id="formGroupExampleInput" value="서울 관악구 쑥고개로 125 지하1층">
			<br/>
			  <label for="formGroupExampleInput2" class="form-label">지역명 검색 키워드</label>	
			  <input type="text" class="form-control" id="formGroupExampleInput" value="서울대, 서울대입구역, 낙성대">
			<br/>
			  <label for="formGroupExampleInput2" class="form-label">카페 예약가능 총 좌석수</label>	
					<div class="row g-2">
					   <div class="col-md">
					    <div class="form-floating">
					      <select class="form-select" id="floatingSelectGrid" aria-label="Floating label select example">
					        <option value="1">1석</option>
					        <option value="2">2석</option>
					        <option value="3">3석</option>
					        <option value="3">4석</option>
					        <option value="3">5석</option>
					      </select>
					      <label for="floatingSelectGrid">4인 테이블석(3~4인 이용가능)</label>
					    </div>
					  </div>
					   <div class="col-md">
					    <div class="form-floating">
					      <select class="form-select" id="floatingSelectGrid" aria-label="Floating label select example">
					        <option value="1">1석</option>
					        <option value="2">2석</option>
					        <option value="3">3석</option>
					         <option value="3">4석</option>
					        <option value="3">5석</option>
					      </select>
					      <label for="floatingSelectGrid">2인 테이블석(1~2인 이용가능)</label>
					    </div>
					  </div>
					</div>
					
					
					</div>										
		</section>
		
		<section id="target" class="py-5">
			<div class="container">				
		<h3>카페 상세정보 수정</h3>		     
	      <div id="info" class="panel-item py-3">
	      <textarea class="form-control" aria-label="With textarea" style="height: 150px">
	      못할 아름답고 방지하는 뼈 것이다. 거친 많이 모래뿐일 속에서 기관과 황금시대의 만천하의 있으며, 사막이다. 위하여 수 가치를 길을 얼음이 청춘의 커다란 우리는 사막이다. 피부가 동력은 없는 가치를 자신과 심장의 것이다. 그러므로 별과 청춘을 역사를 품고 인생의 석가는 못할 봄바람이다. 위하여서 평화스러운 같이 귀는 못할 어디 많이 구하기 끓는다. 그들을 피가 사라지지 앞이 착목한는 그들의 말이다. 어디 듣기만 가슴이 실현에 커다란 두손을 내는 많이 말이다. 아름답고 듣기만 피부가 인간에 하여도 인간의 운다.
	      </textarea>
	      <br/>
	      </div>
	      
	      
	      <div id="menu" class="panel-item py-0">
	      	<h3>음료 메뉴 수정</h3>
		     <div class="mb-3">
            <input type="text" class="menuid1" value="아이스 아메리카노">
            <input type="text" class="menuid1" value="4500">
            <button type="button" class="btn btn-link">삭제</button>
         	 </div>
		     <div class="mb-3">
             <input type="text" class="menuid2" value="카페라떼">
             <input type="text" class="menuid1" value="5000">
             <button type="button" class="btn btn-link">삭제</button>
            </div>            
           <div class="menuadd">
            <button type="button" class="btn btn-outline-primary btn-sm">음료메뉴 추가</button>
               
           </div>
          <br/>  
          <br/>
          <h3>메인 메뉴 수정</h3>
           <div class="mb-3">
            <input type="text" class="menuid3" value="팬케이크">
            <input type="text" class="menuid1" value="10000">
            <button type="button" class="btn btn-link">삭제</button>
         	 </div>
		     <div class="mb-3">
             <input type="text" class="menuid4" value="팥빙수">
             <input type="text" class="menuid1" value="12000">
             <button type="button" class="btn btn-link">삭제</button>
            </div>            
           <div class="menuadd">
            <button type="button" class="btn btn-outline-primary btn-sm">메인메뉴 추가</button>
            </div>
	      </div>
	      <br/>
	      
	      <!-- 카페정보수정 버튼 -->
	      <div class="row">
			<button type="button" class="btn btn-lg btn-primary mx-0 mb-2">카페 수정 정보 저장</button>
		  </div>
	      
      </div><!-- //container -->
      
		</section>


<%@include file="../footer.jsp" %>


</body>
</html>