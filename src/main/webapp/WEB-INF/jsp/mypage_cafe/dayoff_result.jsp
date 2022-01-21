<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src='./js/mpcafe.js'></script>


<title>영업일 관리 완료</title>
<%@include file="../common.jsp" %>
</head>


<body>
<%@include file="../header.jsp" %>

<!-- ----------------------------------------------------------------------- -->
<section class="pt-9 pb-1 ml-5" id="kind">
	<h3 class="mx-10">
	<output id='msg'>
	 ${msg }
	</output>
	</h3>
</section>

<div class="d-flex justify-content-between w-70 mb-1 mx-8 border-0 p-4">
	<a href="mypage_member"><input type="button" class="form-control btn-primary" value="마이페이지 홈으로"></a>
	<a href="cafemanage"><input type="button" class="form-control" value="카페관리 페이지로"></a>
</div>
<%@include file="../footer.jsp" %>
</body>
</html>