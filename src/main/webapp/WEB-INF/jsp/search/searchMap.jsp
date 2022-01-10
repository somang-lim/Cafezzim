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
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=tb2yhf2pw8"></script>
</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->
	
		<%@include file="../header.jsp" %>
		
		<section>
			<div class="container-sm position-relative">
				<div class="row">
					<div class="col-12">
						<h2>서울대입구</h2>
						<p>서울대입구에 위치한 카페 100개가 검색되었습니다.</p>
					</div>
				</div>
				<!-- //end row -->
			</div>
			<!-- 네이버 지도가 뿌려질 곳 !  -->
			<div id="map" style="width:100%;height:75vh; margin: 0 auto;"></div>
		
		
		</section>
<script type="text/javascript">

$(function() {
	
	initMap();
	
});


function initMap() { 
	
	var areaArr = new Array();  // 지역을 담는 배열 ( 지역명/위도경도 )
	areaArr.push(
			/*지역구 이름*/			/*위도*/					/*경도*/				
		 {location : '에르디' , rating:"4.8", thumb:"/img/gallery/cafe-img01.jpg" , lat : '37.47740886894623' , lng : '126.95850022475778', link : "view"},
		 {location : '라우더커피바' , rating:"4.7", thumb:"/img/gallery/cafe-img02.jpg" , lat : '37.47886940388878' , lng : '126.95745116929812', link : "view"},
		 {location : '고요서울' , rating:"4.8", thumb:"/img/gallery/cafe-img03.jpg" , lat : '37.479230224295435' , lng : '126.95376611915118', link : "view"},
		 {location : '사담' , rating:"4.9", thumb:"/img/gallery/cafe-img04.jpg" , lat : '37.47985869656632' , lng : '126.95556698360951', link : "view"},
		 {location : '달첨시루' , rating:"4.7", thumb:"/img/gallery/cafe-img01.jpg" , lat : '37.47717507067758' , lng : '126.95812454998725', link : "view"}
	);
	
	
	
	let markers = new Array(); // 마커 정보를 담는 배열
	let infoWindows = new Array(); // 정보창을 담는 배열
	
	var map = new naver.maps.Map('map', {
        center: new naver.maps.LatLng(37.479668634597246, 126.95627049800889), //지도 시작 지점
        zoom: 16
    });
	
	
	
	
	for (var i = 0; i < areaArr.length; i++) {
		// 지역을 담은 배열의 길이만큼 for문으로 마커와 정보창을 채워주자 !

	    var marker = new naver.maps.Marker({
	        map: map,
	        title: areaArr[i].location, // 지역구 이름 
	        position: new naver.maps.LatLng(areaArr[i].lat , areaArr[i].lng) // 지역구의 위도 경도 넣기 
	    });
	    
	    /* 정보창 */
		 var infoWindow = new naver.maps.InfoWindow({
		     content: '<div style="width:200px;padding:10px;">'+
			     					'<a href="'+ areaArr[i].link +'" class="d-flex">'+
				     					'<div class="map-info-img">'+
								      	'<img src="'+ areaArr[i].thumb + '" width="50">'+	
								      '</div>'+
								      '<div class="desc-area">'+
									      '<b>' + areaArr[i].location + '</b><br>'+
									      '<i class="fas fa-star"></i>'+ areaArr[i].rating +
								      '</div>'+
							      '</a>'+
						      '</div>'
		 }); // 클릭했을 때 띄워줄 정보 HTML 작성
	    
		 markers.push(marker); // 생성한 마커를 배열에 담는다.
		 infoWindows.push(infoWindow); // 생성한 정보창을 배열에 담는다.
	}
    
	 
    function getClickHandler(seq) {
		
            return function(e) {  // 마커를 클릭하는 부분
                var marker = markers[seq], // 클릭한 마커의 시퀀스로 찾는다.
                    infoWindow = infoWindows[seq]; // 클릭한 마커의 시퀀스로 찾는다

                if (infoWindow.getMap()) {
                    infoWindow.close();
                } else {
                    infoWindow.open(map, marker); // 표출
                }
    		}
    	}
    
    for (var i=0, ii=markers.length; i<ii; i++) {
    	console.log(markers[i] , getClickHandler(i));
        naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i)); // 클릭한 마커 핸들러
    }
}

</script>


<%@include file="../footer.jsp" %>


</body>
</html>