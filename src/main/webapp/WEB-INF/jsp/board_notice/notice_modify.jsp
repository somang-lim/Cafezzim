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

<body>

	<!-- ===============================================-->
	<!--    Main Content-->
	<!-- ===============================================-->

	<%@include file="../header.jsp"%>
	<section>
		<div class="container">
			<main class="form-board-notice-view">
				<form name="frmBoard" method="post" enctype="multipart/form-data">
					<h1 class="h3 mb-4 fw-normal">notice</h1>
					<!--테이블 ==========================================-->
					<div class="ec-base-table typeWrite">
						<input type="hidden" name="nowPage" value="${page.nowPage}"/>
						<input type="hidden" name="notice_serial"  value="${vo.notice_serial}"/>
						<table class="table insert">
							<colgroup>
								<col style="width: 130px;" />
								<col style="width: auto;" />
							</colgroup>
							<tbody>
								<tr class="subject">
									<th scope="row">제목</th>
									<td><input type="text" class="subjectText" name="subject" id="subject" value="${vo.subject}"></td>
								</tr>
								<tr class="view">
									<td colspan="2" class=""><textarea class="summernote" name="content" id="content">${vo.content}</textarea></td>
								</tr>
									<tr class="file">
										<th scope="row">첨부파일</th>
										<td>
											<input type="file" name="file" class="form-control mb-3" id="notice_file" multiple="multiple">
											<c:forEach var="file" items="${vo.notice_files}">
												<li class="notice_file" id="${file.notice_file}">
													${file.notice_file}
													<button type="button" class="btnDeleteNoticeFile" style="border: none; background-color: #fff;'">
														<i role="button" class="far fa-minus-square fa-lg" style="color: #f00; vertical-align:center;"></i>
													</button>
												</li>
											</c:forEach>
										</td>
									</tr>
								<tr class="btnChooseZone">
									<td>
										<a href="notice" class="btn btn-outline-primary">목록</a>
									</td>
									<td class="btnSave">
										<button type="button" id="btnModifySave" class="btn btn-primary">수정</button>
										<a href="notice" class="btn btn-outline-dark">취소</a>
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