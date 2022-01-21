<%@ page import = "java.util.Date" %> 
<%@ page import = "java.text.SimpleDateFormat" %> 
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
/* $(document).ready(function(){
    $('.__count_range input[count_range]').click(function(e){
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
        } */
/*         if(count_val==0){
        	document.getElementById('order_amount').style.Color = 'grey';
        	$oc.style.color="grey";
        } 
    });

    
});  
*/
</script>
<script>// 달력 표시 
$(function(){
	$("#datePicker").click(function(){
		document.frmDatepick.action = "reserve_datePick";
	})
});
</script>
<title>테이블 결제 화면</title>
<%@include file="../common.jsp" %>
<link rel="stylesheet" href="css/pay.css">



</head>
<body>
<%@include file="../header.jsp" %>

<%//오늘 날짜 구하기 
//String nowDate = request.getParameter("nowDate");
Date tempNowDate = new Date(); 

//원하는 데이터 포맷 지정 
SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
String nowDate = simpleDateFormat.format(tempNowDate); 
%>

<div class="container">
	<section class="pt-9 pb-1 ml-5" id="kind"> 
	<h3 class="mx-8">예약 및 결제 - ${cvo.name} </h3>
	</section>
	<!----------------------- 입력창  ------------------------------------------>
	<div class="card shadow-lg mb-5 border-0 p-4">
		<form name='frmOrder' method='post' id="frmOrder">
			<!----------------------- 정보 저장용  ------------------------------------------>
			<div hidden="hidden">
				<input type="text" value="${param.id }" name="cafe_id">
				<input type="text" name="cafe_name" value="${cvo.name}">
				<input type="text" name="cafe_address" value="${cvo.address}">
				<input type="text" name="member_id" id="member_id" value="${sessionScope.member_id}">
				<input type="text" name="isCancelled" value="0">
				<input type="text" name="cafe_name" id="cafe_name" value="${cvo.name}">
				<input type="text" name="payment_date" value="<%=nowDate %>">
				<input type="text" value="phone, date, time, name , phone, reserve_seat, request">
				<input type="text" name="photo" value="${cvo.thumb }">
				<input type="text" name="totPrice" id="totPrice" value="">
			</div>
			<div class="row g-5">
				<div class="col-md-7 col-lg-8">
					<section class="pb-3 pt-0 " id="reserve"> <!-------------------- 예약일 -------------------->
						<div class="row align-items-center">
							<div class="container-lg">
								<div id='timeSelect' class="py-1">
									<h4>예약일</h4>
									<div class="d-flex flex-wrap my-2">
										<label class="col-2 col-md-2">예약 날짜</label><!-- form-control -->
										<input type="text" placeholder="날짜를 선택해 주세요" name="reserve_date" id="datePicker" class="time-select form-select col-12 col-md-7" value="<%=nowDate  %>" required>
<%-- 										<select name="date" class="time-select form-select col-12 col-md-7">
										    <option value="" selected="selected" value=""><%=nowDate %></option>
										    <option value="<%tempDate.add(tempDate.date, 1);%>"><%=nowDate%></option>
										    <option value="">1/7</option>
										    <option value="">1/8</option>
										</select> --%>
									</div>
									<div class="d-flex flex-wrap my-2">
										<label class="col-2 col-md-2">시간</label>
										<select name="reserve_time" class="time-select form-select col-12 col-md-7" required>
										    <option value="none" selected="selected">== 시간을 선택해 주세요 ==</option>
										    <option value="09:00:00">09:00</option>
										    <option value="10:00:00" disabled>10:00</option>
										    <option value="11:00:00">11:00</option>
										    <option value="12:00:00">12:00</option>
										    <option value="13:00:00">13:00</option>
										</select>
									</div>
								</div>
								<br/>
								<div id="personInfomation"> <!-------------------- 예약자 정보 -------------------->
									<h4>예약자 정보</h4>
									<div class="d-flex flex-wrap my-2">
										<label class="col-2 col-md-2">이름</label>
										<input type="text" value="${sessionScope.name}" class="time-select form-control col-12 col-md-7" name="reserve_name" required>
										<br/>
									</div>
									<div class="d-flex flex-wrap my-2">
										<label class="col-2">전화번호</label>
										<input type="text" value="${sessionScope.phone}" class="time-select form-control col-12 col-md-7" name="reserve_phone" required>
										<br/>
									</div>
									<div class="d-flex flex-wrap my-2">
										<label class="col-2"></label>
										<select name="table" class="time-select form-select col-12 col-md-7" required>
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
										<input type="text" class="time-select form-control col-12 col-md-7" name="request" value="">
									</div>			
								</div>
							</div>
						</div>
					</section>
					</div>
					<c:if test="${param.pay==1 }">
						<div class="col-md-3 col-lg-4">
						<section class="pb-3 pt-0 " id="reserve"> <!-------------------- 장바구니 및 주문 -------------------->
							 <div class="">
						        <h4 class="d-flex justify-content-between align-items-center mb-3">
						          <span class="text-primary">Your cart</span>
						          <span class="badge bg-primary rounded-pill total-items" id="sum_p_num"></span>
						        </h4>
						        <ul class="list-group mb-3">
						        <%-- <c:forEach var="vo2" items="${menu}"> 장바구니기능 동작안되서 막아놈...
						        	<c:if test="<script>var i</script>"></c:if>
							          <li class="list-group-item d-flex justify-content-between lh-sm" hidden="hidden">
							            <div>
							              <h6 class="my-0">${vo2.name }</h6>
							              <!-- <small class="text-muted">휘핑크림 많이</small> -->
							            </div>
							            <span class="text-muted basket_price"></span>
							          </li>
						        </c:forEach>  --%>
						          <li class="list-group-item d-flex justify-content-between">
						            <span>Total</span>
						            <strong id="sum_p_price">₩ 0</strong>
						          </li>
						        </ul>
						          <div class="input-group">
						            <button class="w-100 btn btn-primary btn-lg" id="check_module" type="button">Order Now</button>
						          </div>
						      </div>
						</section>
						</div>
						<section class="pb-3 pt-0" id="order"> <!-------------------- 메뉴 선택 -------------------->
							<div class="row align-items-center">
								<div class="container-lg">
									<div id='MenuSelect' class="py-1">		
										<h4>메뉴 선택</h4>
										<br/>
										<h6>음료</h6>
										<c:forEach var="vo" items="${menu}" varStatus="status">
											<c:if test="${vo.type==2 }">
												<div class="__count_range d-flex flex-wrap">
													<label class="col-3">${vo.name }</label>
													<input value="-" type="button"  class="rounded-pill bg-light text-dark down" id="btn_simple" onclick="javascript:basket.changePNum(${status.count});">
													<input value="0" readonly name="p_num${status.count }" id="p_num${status.count }" class="count col-1 p_num" onkeyup="javascript:basket.changePNum(${status.count});" >
													<input value="+" type="button"  class="rounded-pill bg-light text-dark up" id="btn_simple" onclick="javascript:basket.changePNum(${status.count});">
													<input value="${vo.price }" class="oc col-1 pl-3 mx-2 sum count" name="amount${status.count }" id="amount${status.count }" style="color:grey" readonly></input>
													<input type="hidden" value="${vo.price }" name="prc${status.count }" id="price" class="p_price" readonly/>
												</div>
											</c:if>
										</c:forEach>
										<br/>
										<h6>디저트</h6>
										<c:forEach var="vo" items="${menu}" varStatus="status">
											<c:if test="${vo.type==1 }">
												<div class="__count_range d-flex flex-wrap">
													<label class="col-3">${vo.name }</label>
													<input value="-" type="button"  class="rounded-pill bg-light text-dark down" id="btn_simple" onclick="javascript:basket.changePNum(${status.count});">
													<input value="0" readonly name="p_num${status.count }" id="p_num${status.count }" class="count col-1 p_num" onkeyup="javascript:basket.changePNum(${status.count});" >
													<input value="+" type="button"  class="rounded-pill bg-light text-dark up" id="btn_simple" onclick="javascript:basket.changePNum(${status.count});">
													<input value="${vo.price }" class="oc col-1 pl-3 mx-2 sum count" name="amount${status.count }" id="amount${status.count }" style="color:grey" readonly></input>
													<input type="hidden" value="${vo.price }" name="prc${status.count }" id="price" class="p_price" readonly/>
												</div>
											</c:if>
										</c:forEach>
									</div>
								</div>
							</div>
						</section>
					</c:if>
					<c:if test="${param.pay!=1 }">
						<div class="input-group">
							 <button class="w-100 btn btn-primary btn-lg" id="check_reserve" type="button">예약하기</button>
						</div>
					</c:if>
				</div>
			</form>
	    </div>
	</div>
 <!-- ------------------------------------------------------------------------------ ---------------------------------------  -->	
	
<script>	// order now 버튼 : 결제창 이동 스크립트 
	$("#check_module").click(function () {
		var totPrice = parseInt(document.querySelector('#totPrice').getAttribute('value'));
		var cname = document.querySelector('#cafe_name').getAttribute('value');
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
			name: cname+" 결제",
			// 결제창에서 보여질 이름
			// name: '주문명 : ${auction.a_title}',
			amount: totPrice,
			// amount: ${bid.b_bid},
			// 가격 
			buyer_name: 'cafeZZim',

			buyer_postcode: '123-456',
			}, function (rsp) {
				console.log(rsp);
			if (rsp.success) {
				document.frmOrder.action = "booksuccess";
				document.frmOrder.submit();
				var msg = '결제가 완료되었습니다.';
				msg += '결제 금액 : ' + rsp.paid_amount
						+merchant_uid;
				// success.submit();
				 
			} else {
				var msg = '결제에 실패하였습니다.';
				document.frmOrder.action = "bookfail";
				document.frmOrder.submit();
				msg += '에러내용 : ' + rsp.error_msg;
			}
			alert(msg);
		});
	});
</script>
<script>	// 예약하기 버튼 : 예약완료창 이동 
$("#check_reserve").click(function () {
	document.frmOrder.action = "booksuccess";
	document.frmOrder.submit();
	var msg = '예약이 완료되었습니다.';

	alert(msg);
	
})
</script>
<script>// 장바구니 수량 카운트 
let basket = {
	    totalCount : 0, 
	    totalPrice : 0,
	  /*   장바구니기능 동작안되서 막아놈...
	  //체크한 장바구니 상품 비우기
	    delCheckedItem: function(){
	        document.querySelectorAll("input[name=buy]:checked").forEach(function (item) {
	            item.parentElement.parentElement.parentElement.remove();
	        });
	        //AJAX 서버 업데이트 전송
	    
	        //전송 처리 결과가 성공이면
	        this.reCalc();
	        this.updateUI();
	    },
	    //장바구니 전체 비우기
	    delAllItem: function(){
	        document.querySelectorAll('.row.data').forEach(function (item) {
	            item.remove();
	          });
	          //AJAX 서버 업데이트 전송
	        
	          //전송 처리 결과가 성공이면
	          this.totalCount = 0;
	          this.totalPrice = 0;
	          this.reCalc();
	          this.updateUI();
	    }, */
	    //재계산
	    reCalc: function(){
	        this.totalCount = 0;
	        this.totalPrice = 0;
	        document.querySelectorAll(".p_num").forEach(function (item) {
	            if(item.getAttribute('value') != 0){
	                var cnt = parseInt(item.getAttribute('value'));
	                this.totalCount += cnt;
	                var price = parseInt(item.nextElementSibling.nextElementSibling.getAttribute('value'));
	                this.totalPrice += price;
	            }
	        }, this); // forEach 2번째 파라메터로 객체를 넘겨서 this 가 객체리터럴을 가리키도록 함. - thisArg
	    },
	    //화면 업데이트
	    updateUI: function () {
	        document.querySelector('#sum_p_num').textContent = '상품 : ' + this.totalCount.formatNumber() + '개';
	        document.querySelector('#sum_p_price').textContent = '₩ ' + this.totalPrice.formatNumber();
	        var tempPrice = document.querySelector('#totPrice');
	        tempPrice.setAttribute('value', this.totalPrice);
	    },
	    //개별 수량 변경
	    changePNum: function (pos) {
	    	// 구매 수량 변수 
	        var item = document.querySelector('input[name=p_num'+pos+']');
	        var p_num = parseInt(item.getAttribute('value'));
	        var newval = event.target.classList.contains('up') ? p_num+1 : event.target.classList.contains('down') ? p_num-1 : event.target.value;
	        //var totCnt = event.target.classList.contains('up') ? this.totalCount+1 : event.target.classList.contains('down') ? this.totalCount-1 : event.target.value;

	        if (parseInt(newval) < 0 || parseInt(newval) > 10) { return false; }
			// 금액 변수 
	        var amt = document.querySelector('input[name=amount'+pos+']');
	        var prc = document.querySelector('input[name=prc'+pos+']');
	        var p_chg = parseInt(prc.getAttribute('value'));
	        var newPrice = (newval)*p_chg;

	        item.setAttribute('value', newval);
	        if(newval==0){
	        	amt.setAttribute('value', p_chg);
	        }else{
	        	amt.setAttribute('value', newPrice);
	        }
	        
	        // 수량 추가시 색상 변경 
	        this.chgColor(pos); 
	        this.reCalc();
	        this.updateUI();
	    },

	    chgColor: function(pos) {

		    var itemc = document.querySelector('input[id=p_num'+pos+']');
		    var p_numc = parseInt(itemc.getAttribute('value'));
	
		    var amtc = document.querySelector('input[id=amount'+pos+']');
		    var c_chg = parseInt(amtc.getAttribute('value'));
	
		    if(p_numc=='0'){
		    	amtc.setAttribute("style", "color:grey");
		    	//amt.style.color="grey";
		    }else{
		    	amtc.setAttribute("style", "color:black");
		    }
	    }
	}

	// 최종금액 숫자 3자리 콤마찍기
	Number.prototype.formatNumber = function(){
	    if(this==0) return 0;
	    let regex = /(^[+-]?\d+)(\d{3})/;
	    let nstr = (this + '');
	    while (regex.test(nstr)) nstr = nstr.replace(regex, '$1' + ',' + '$2');
	    return nstr;
	};

</script>
<%@include file="../footer.jsp" %>
</body>
</html>