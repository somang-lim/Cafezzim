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
<script src="js/notice.js"></script>
</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->

	<%@include file="../header.jsp" %>
	<section>
		<div class="container">
			<main class="form-board-notice">
				<form name="frmBoard" id="frmBoard" method="post">
					<h1 class="h3 mb-4 fw-normal">notice</h1>
					<div class="searchZone mb-3">
						<input id="notice_serial" name="notice_serial" type="hidden">
						<input id="nowPage" name="nowPage" value="${page.nowPage}" type="hidden">
						<input id="board_sort" name="board_sort" value="" type="hidden">
						<select id="notice_sort" class="search_key" name="notice_sort">
							<option value="subject" selected>제목</option>
							<option value="content">내용</option>
						</select>
						<input id="notice_search" name="notice_search" class="inputTypeText" placeholder="" value="${page.notice_search}" type="search">
						<button id="btnNoticeSearch" class="btnNormal">찾기</button>
					</div>
				</form>
				<!--테이블 ==========================================-->
				<table class="table">
					<thead>
						<tr>
							<th scope="col" class="notice_serial" style="width: 8%">NO</th>
							<th scope="col" class="subject" style="width: 60%">제목</th>
							<th scope="col" class="writer_name" style="width: 15%">작성자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="vo" items="${list}">
							<tr>
								<td scope="row" class="num">${vo.notice_serial}</td>
								<td class="subject">
									<span>
										<a href="${path}/notice_view?notice_serial=${vo.notice_serial}">${vo.subject}</a>
									</span>
								</td>
								<td class="writer-name">${vo.member_name}</td>
							</tr>
						</c:forEach>
						<c:if test="${sessionScope.grade eq 'master'}">
							<tr class="btnChooseZone">
								<td colspan="3" class="notice_insert">
									<a href="notice_insert" class="btn btn-outline-primary">글쓰기</a>
								</td>
							</tr>
						</c:if>
					</tbody>
				</table>
				<!-- 페이징 처리 ==========================================-->
				<div class="mt-3">
					<nav aria-label="Page navigation example">
						<ul class="pagination pagination-sm justify-content-center">
							<c:if test="${page.startPage > 1}">
								<li class="page-item">
									<a class="page-link" onclick="board.page(${page.startPage-1})" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
									</a>
								</li>
							</c:if>
							<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
								<li class="page-item"><a class="page-link" onclick="board.page(${i})">${i}</a></li>
							</c:forEach>
							<c:if test="${page.endPage < page.totPage}">
								<li class="page-item">
									<a class="page-link" onclick="board.page(${page.endPage+1})" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
									</a>
								</li>
							</c:if>
						</ul>
					</nav>
				</div>
			</main>
		</div>
	</section>
	<!-- <section> close ============================-->
		<!-- ============================================-->



<%@include file="../footer.jsp" %>
</body>
</html> 