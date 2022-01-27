/**
 * 
 */

function board(){};
board.page = function(nowPage){
	let frm = document.frmBoard;
	
	frm.nowPage.value = nowPage;
	frm.action = "notice";
	frm.submit();
}

$(function(){	
	$("#btnNoticeSearch").click(function(){
		const notice_sort = document.getelementById("notice_sort");
		let val = notice_sort.options[notice_sort.selectedIndex].value();
		let frm = document.frmBoard;
		
		frm.notice_sort.value = val;
		frm.nowPage.value = 1;
		frm.action = "notice";
		frm.submit();
	})
	
	$("#btnInsertSave").click(function(){
		let frm = document.frmBoard;
		let subject = $("#subject").val();
		let content = $("#content").val();
		
		if(!subject){
			alert("제목을 입력하세요.");
			return;
		} else if(!content){
			alert("내용을 입력하세요.");
			return;
		}
		
		frm.action = "notice_insert_check";
		frm.submit();
		alert("공지사항이 등록되었습니다.");
	})
	
	$("#btnModifySave").click(function(){
		let frm = document.frmBoard;
		let subject = $("#subject").val();
		let content = $("#content").val();
		
		if(!subject){
			alert("제목을 입력하세요.");
			return;
		} else if(!content){
			alert("내용을 입력하세요.");
			return;
		}
		
		frm.action = "notice_modify_check";
		frm.submit();
		alert("공지사항이 수정되었습니다.");
	})
	
	$("#btnDelete").click(function(){
		let frm = document.frmBoard;
		let result = confirm("삭제하시겠습니까?");
		
		if(result){
			frm.action = "notice_delete";
			frm.submit();
		}
	})
	
	// 수정 필요
	$(".notice_file").on("click", ".btnDeleteNoticeFile", function(){
		if(confirm("이 파일을 삭제하시겠습니까?")){
		console.log(notice_file);

			$.ajax({
				type : "POST",
				url : "delete_file",
				data : {notice_file : $(".notice_file").attr("id")},
				success : function(result){
					if(result == "delete"){
						let targetLi = $(".notice_file").closest("li");
						targetLi.remove();
					}
				}
			});
		}
	})
	
	let fonts = [
		"맑은 고딕", "고딕", "돋움", "바탕", "바탕체", "굴림", "굴림체", "궁서체"
	];
	fonts.sort();
	
	$(".summernote").summernote({
		height: 350,
		fontNames : fonts,
		callbacks : {}
	})
})
/*
function deleteFile() {};
deleteFile.serial = function(notice_file){
	if(confirm("이 파일을 삭제하시겠습니까?")){
		let notice_file = $(".notice_file").attr("id");
		$.ajax({
			type : "POST",
			url : "delete_file",
			data : {notice_file : notice_file},
			success : function(result){
				if(result == "delete"){
					let targetLi = $(".notice_file").closest("li");
					targetLi.remove();
				}
			}
		});
	}
}
*/