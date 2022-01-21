/**
 * 조민지 작성 (2022.01.12), 2022.01.20(dayoff.js와 병합)
 */


//효과를 위한 js
function show_select(){
	$("#select-time").show();
};

function hide_select(){
	$("#select-time").hide();
}

function toggle_time(){
	if($("#select-time").css("display") == "block"){
		$("#plus-time").hide();
		$("#minus-time").show();
	} else {
		$("#plus-time").show();
		$("#minus-time").hide();
	}
} 

function show_choose(){
	$("#choose-table").show();
}

function hide_choose(){
	$("#choose-table").hide();
}

function toggle_table(){
	if($("#choose-table").css("display") == "block"){
		$("#plus-table").hide();
		$("#minus-table").show();
	} else {
		$("#plus-table").show();
		$("#minus-table").hide();
	}
}


$(function() {

	$('#btnSearch').click(function() {
		$frm = $('#frm_search')[0];
		$frm.action = "cafemanage"; //컨트롤러 cafemanage로 가는거
		$frm.submit();
	})
	
	$('#btnSave').click(function(){
		$frm = $('#frm_cafe')[0];
		$frm.action = "cafeupdateSave";
		$frm.submit();
		
	})
	
	$('#dayOff-apply').click(function(){
		$frm = $('#frm_dayoff')[0];
		$frm.action = "dayOffSave"
		$frm.submit();
		alert("요청하신 휴무일 및 일시정지가 적용되었습니다.");	
	})

})