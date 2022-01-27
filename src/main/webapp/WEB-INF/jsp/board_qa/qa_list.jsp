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
<link href="css/board.css" rel="stylesheet" />
<script src="js/sign.js"></script>
</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->

	<%@include file="../header.jsp" %>
	<section>
		<div class="container">
			<main class="form-board-qa">
				<form name="frmBoard" method="post">
					<h1 class="h3 mb-4 fw-normal">Q&A</h1>
					<div class="searchZone mb-5">
						<input id="board_no" name="board_no" value="1" type="hidden">
						<input id="page" name="page" value="1" type="hidden">
						<input id="board_sort" name="board_sort" value="" type="hidden">
						<select id="search_key" class="search_key" name="search_key">
							<option value="subject">제목</option>
							<option value="content">내용</option>
							<option value="writer_name">글쓴이</option>
							<option value="member_id">아이디</option>
						</select>
						<input id="search" name="search" class="inputTypeText" placeholder="" value="" type="text">
						<a href="#none" class="btnNormal" onclick="">찾기</a>
					</div>
					<!--테이블 ==========================================-->
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col" style="width: 8%">번호</th>
								<th scope="col" style="width: 60%">제목</th>
								<th scope="col" style="width: 15%">작성자</th>
								<th scope="col" style="width: 20%">작성일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="cnt" begin="1" end="10">
								<tr>
									<td scope="row" class="num">${cnt}</td>
									<td class="subject"><a href="qa_view">Mark</a></td>
									<td class="writer-name">@mdo</td>
									<td class="write-day">2022-01-22</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- 페이징 처리 ==========================================-->
					<div class="mt-5">
						<nav aria-label="Page navigation example">
							<ul class="pagination pagination-sm justify-content-center">
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a></li>
								<c:forEach var="num" begin="1" end="5">
									<li class="page-item"><a class="page-link" href="#">${num}</a></li>
								</c:forEach>
								<li class="page-item"><a class="page-link" href="#"
									aria-label="Next"> <span aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>
					</div>
				</form>
			</main>
		</div>
	</section>
	<!-- <section> close ============================-->
		<!-- ============================================-->



<%@include file="../footer.jsp" %>
</body>
</html> 