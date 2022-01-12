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
	<h3 class="mx-10">{카페이름}예약이 예기치 못한 오류로 실패하였습니다.</h3>
</section>

<div class="d-flex justify-content-between w-70 mb-1 mx-8 border-0 p-4">
	<input type="button" class="form-control btn-primary" value="새로 예약하기">
	<input type="button" class="form-control" value="마이페이지">
</div>
<%@include file="../footer.jsp" %>
</body>
</html>