<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>	// 메뉴 구매 수량 카운터 
$(document).ready(function(){
    $('.__count_range input[count_range]').click(function(e){
        e.preventDefault();
        var type = $(this).attr('count_range');
        var $count = $(this).parent().children('input.count');
        var count_val = $count.val(); // min 0
        if(type=='m'){
            if(count_val<1){
                return;
            }
            $count.val(parseInt(count_val)-1);
        }else if(type=='p'&&count_val<20){	//max 20
            $count.val(parseInt(count_val)+1);
        }
    });
    if(count_val==0){
    	oc.style.color="grey";
    }
    
});  

</script>

<script> // 메뉴 가격 표시 글자색 변경 
$(document).ready(function(){

    var type = $(this).attr('count_range');
    var $count = $(this).parent().children('input.count');
    var count_val = $count.val(); // min 0
}
var oc = document.getElementById("order_count");
if(oc.value=='0'){
	oc.style.color="grey";
}
});  
</script>


<title>테이블 결제 화면</title>
<%@include file="../common.jsp" %>
<link rel="stylesheet" href="css/pay.css">
</head>
<body>
<%@include file="../header.jsp" %>


<div class="container">
	<section class="pt-9 pb-1 ml-5" id="kind"> 
		<h3 class="mx-8">테이블 예약 및 결제</h3>
	</section>
	<div class="card shadow-lg mb-5 border-0 p-4">
		<div class="row g-5">
			<div class="col-md-7 col-lg-8">
				<section class="pb-3 pt-0 " id="reserve"> <!-------------------- 예약일 -------------------->
					<div class="row align-items-center">
						<div class="container-lg">
							<div id='timeSelect' class="py-1">
								<h6>예약일</h6>
								<div class="d-flex flex-wrap my-2">
									<label class="col-2 col-md-2">예약 날짜</label><!-- form-control -->
									<select name="date" class="time-select form-select col-12 col-md-7">
									    <option value="" selected="selected">오늘</option>
									    <option value="">1/6</option>
									    <option value="">1/7</option>
									    <option value="">1/8</option>
									</select>
								</div>
								<div class="d-flex flex-wrap my-2">
									<label class="col-2 col-md-2">시간</label>
									<select name="date" class="time-select form-select col-12 col-md-7">
									    <option value="none" selected="selected">== 시간을 선택해 주세요 ==</option>
									    <option value="">09:00</option>
									    <option value="" disabled>10:00</option>
									    <option value="">11:00</option>
									    <option value="">12:00</option>
									    <option value="">13:00</option>
									</select>
								</div>
								
							</div>
							<div id="personInfomation"> <!-------------------- 예약자 정보 -------------------->
								<h6>예약자 정보</h6>
								<div class="d-flex flex-wrap my-2">
									<label class="col-2 col-md-2">이름</label>
									<input type="text" value="최준혁" class="time-select form-select col-12 col-md-7">
									<br/>
								</div>
								<div class="d-flex flex-wrap my-2">
									<label class="col-2">전화번호</label>
									<input type="text" value="010-3587-1116" class="time-select form-select col-12 col-md-7">
									<br/>
								</div>
								<div class="d-flex flex-wrap my-2">
									<label class="col-2"></label>
									<select name="table" class="time-select form-select col-12 col-md-7">
									    <option value="none" selected="selected">== 좌석을 선택해 주세요 ==</option>
									    <option value="">2인석</option>
									    <option value="" disabled>2인석</option>
									    <option value="">3인석</option>
									    <option value="">4인석</option>
									    <option value="">4인석</option>
									</select>
									<br/>
								</div>
								<div class="d-flex flex-wrap my-2">
									<label class="col-2">요청사항</label>
									<input type="text" class="time-select form-control col-12 col-md-7" name="request">
								</div>			
							</div>
						</div>
					</div>
				</section>
				</div>
				<div class="col-md-3 col-lg-4">
				<section class="pb-3 pt-0 " id="reserve"> <!-------------------- 장바구니 및 주문 -------------------->
					 <div class="">
				        <h4 class="d-flex justify-content-between align-items-center mb-3">
				          <span class="text-primary">Your cart</span>
				          <span class="badge bg-primary rounded-pill">3</span>
				        </h4>
				        <ul class="list-group mb-3">
				          <li class="list-group-item d-flex justify-content-between lh-sm">
				            <div>
				              <h6 class="my-0">카페모카</h6>
				              <small class="text-muted">휘핑크림 많이</small>
				            </div>
				            <span class="text-muted">₩ 8300</span>
				          </li>
				         
				          <li class="list-group-item d-flex justify-content-between lh-sm">
				            <div>
				              <h6 class="my-0">아메리카노(ice)</h6>
				              <small class="text-muted">얼음적게</small>
				            </div>
				            <span class="text-muted">₩ 5000</span>
				          </li>
			
				          <li class="list-group-item d-flex justify-content-between">
				            <span>Total</span>
				            <strong>₩ 8300</strong>
				          </li>
				        </ul>
				
				        <form class="">
				          <div class="input-group">
				            <button class="w-100 btn btn-primary btn-lg" id="check_module" type="button">Order Now</button>
				          </div>
				        </form>
				      </div>
				</section>
				</div>
				<section class="pb-3 pt-0" id="order"> <!-------------------- 메뉴 선택 -------------------->
					<div class="row align-items-center">
						<div class="container-lg">
							<div id='MenuSelect' class="py-1">		
								<h6>메뉴 선택</h6>
								<div class="__count_range d-flex flex-wrap">
									<label class="col-2">아메리카노</label>
									<input value="-" count_range="m" type="button"  class="rounded-pill bg-light text-dark" id="btn_simple">
									<input value="0" readonly="" name="" class="count col-1" id="order_count">
									<input value="+" count_range="p" type="button"  class="rounded-pill bg-light text-dark" id="btn_simple"><!-- class="form-control"  -->
									<input type="text" value="5000" class="col-1 pl-3 mx-2" id="order_amount">
								</div>
								<div class="__count_range d-flex flex-wrap">
									<label class="col-2">제주호지티프라푸치노</label>
									<input value="-" count_range="m" type="button" class="rounded-pill bg-light text-dark" id="btn_simple">
									<input value="1" readonly="" name="" class="count col-1" id="order_count">
									<input value="+" count_range="p" type="button"  class="rounded-pill bg-light text-dark" id="btn_simple">
									<input type="text" value="8300" class="col-1 pl-3 mx-2" id="order_amount">
								</div>
								<div class="__count_range d-flex flex-wrap">
									<label class="col-2">카페모카</label>
									<input value="-" count_range="m" type="button" class="rounded-pill bg-light text-dark" id="btn_simple">
									<input value="0" readonly="" name="" class="count col-1" id="order_count">
									<input value="+" count_range="p" type="button"  class="rounded-pill bg-light text-dark" id="btn_simple">
									<input type="text" value="6800" class="col-1 pl-3 mx-2" id="order_amount">
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
	    </div>
	</div>
 <!-- ------------------------------------------------------------------------------ ---------------------------------------  -->	

	
<script>	// 결제창 이동 스크립트 
	$("#check_module").click(function () {
		var IMP = window.IMP; // 생략가능
		IMP.init('iamport'); 
		// import 관리자 페이지 -> 내정보 -> 가맹점식별코드, 띄어쓰기 안생기도록 주의!!
		IMP.request_pay({
			pg: 'kakao',
			pay_method: 'card',
			merchant_uid: 'merchant_' + new Date().getTime(),// 구매번호 
			/* 
			 *  merchant_uid는 종류가 많으니 참조 https://docs.iamport.kr/implementation/payment
			 */
			name: '주문명 : 아메리카노',
			// 결제창에서 보여질 이름
			// name: '주문명 : ${auction.a_title}',
			amount: 100,
			// amount: ${bid.b_bid},
			// 가격 
			buyer_name: 'cafezari',

			buyer_postcode: '123-456',
			}, function (rsp) {
				console.log(rsp);
			if (rsp.success) {
				var msg = '결제가 완료되었습니다.';
				msg += '결제 금액 : ' + rsp.paid_amount;
				// success.submit();
				// 결제 성공 시 정보를 넘겨줘야한다면 body에 form을 만든 뒤 위의 코드를 사용하는 방법이 있음 
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
		});
	});
</script>

<%@include file="../footer.jsp" %>
</body>
</html>