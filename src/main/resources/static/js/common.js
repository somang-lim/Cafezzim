/**
 * 공통 스크립트 부분
 * 2022.01.03 김성겸 작성시작
 */

$('#datePicker').datepicker({
	format: "yyyy-mm-dd", // 달력에서 클릭시 표시할 값 형식
	language: "kr", // 언어(js 추가가 필요하다.)
	todayHighlight: true
});