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
<script src="js/notice.js"></script>
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
						<table class="table insert">
							<colgroup>
								<col style="width: 130px;" />
								<col style="width: auto;" />
							</colgroup>
							<tbody>
								<tr class="subject">
									<th scope="row">제목</th>
									<td><input type="text" class="subjectText"></td>
								</tr>
								<tr class="view">
									<td colspan="2" class=""><textarea class="summernote"></textarea></td>
								</tr>
								<tr class="file">
									<th scope="row">첨부파일</th>
									<td><input type="file"></td>
								</tr>
								<tr class="btnChooseZone">
									<td>
										<a href="qa" class="btn btn-outline-primary">목록</a>
									</td>
									<td class="btnSave">
										<a href="qa" class="btn btn-primary">수정</a>
										<a href="" class="btn btn-outline-dark">취소</a>
									</td>
								</tr>
							</tbody>
						</table>
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