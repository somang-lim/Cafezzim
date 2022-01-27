<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<%@include file="../common.jsp"%>
<link href="css/board.css" rel="stylesheet" />
<script src="js/sign.js"></script>
</head>


<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->

	<%@include file="../header.jsp"%>
	<section>
		<div class="container">
			<main class="form-board-notice-view">
				<form name="frmBoard" method="post">
					<h1 class="h3 mb-4 fw-normal">Q&A</h1>
					<!--테이블 ==========================================-->
					<div class="ec-base-table typeWrite ">
						<table class="table view">
							<colgroup>
								<col style="width: 130px;" />
								<col style="width: auto;" />
							</colgroup>
							<tbody>
								<tr class="subject">
									<th scope="row">제목</th>
									<td>홈페이지 이용 시 확인 해주세요!</td>
								</tr>
								<tr class="writer_name">
									<th scope="row">작성자</th>
									<td>카페</td>
								</tr>
								<tr class="content">
									<td colspan="2" class="main-text">안내합니다.</td>
								</tr>
								<tr class="btnChooseZone">
									<td>
										<a href="qa" class="btn btn-outline-primary">목록</a>
									</td>
									<td class="btnSave">
										<a href="" onclick="" class="btn btn-outline-danger">삭제</a>
										<a href="qa_modify" class="btn btn-outline-primary">수정</a>
										<a href="qa_repl" class="btn btn-primary">답변</a>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="prev-next-board">
							<ul>
								<li class="prev"><strong>이전글</strong><a
									href="">카카오톡 알림톡 서비스 OPEN</a></li>
								<li class="next"><strong>다음글</strong><a
									href="">상품별 사이즈 측정 방법</a></li>
							</ul>
					</div>
				</form>
			</main>
		</div>
	</section>
	<!-- <section> close ============================-->
	<!-- ============================================-->



	<%@include file="../footer.jsp"%>
</body>
</html>
