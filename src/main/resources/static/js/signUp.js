/**
 * 
 */
$(function(){
	var error = document.querySelectorAll('.invalid-feedback');
	var $frm = $("#frm_member")[0];
	//아이디 중복체크
	$("#btnIdCheck").click(function(){
		window.open("id_check","","width=400,height=180");
	});
	$("#member_id").focusout(function(){
		if(!$frm.member_id.value){
			error[0].style.display = "block";
		}else{
			$frm.member_id.value=$frm.member_id.value.trim();
			error[0].style.display = "none";
		}
	})
	$("#password").focusout(function(){
		var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
		if(!pwPattern.test($frm.password.value)){
			//error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
			error[1].style.display = "block";
			//error[1].style.color = "#f00";
		}else{
			error[1].style.display = "none";
			error[2].style.display = "block";
		}
	})
	$("#password_check").focusout(function(){
		if($frm.password.value!=$frm.password_check.value){
			error[2].style.display = "block";
		}else{
			error[2].style.display = "none";
		}
	})
	$("#member_name").focusout(function(){
		if(!$frm.member_name.value){
			error[3].style.display = "block";
		}else{
			$frm.member_name.value=$frm.member_name.value.trim();
			error[3].style.display = "none";
		}
	})
	$("#member_phone").focusout(function(){
		if($frm.member_phone.value==""){
			error[4].style.display = "block";
		}else{
			$frm.member_phone.value=$frm.member_phone.value.trim();
			error[4].style.display = "none";
		}
	})
	$("#member_email").focusout(function(){
		var emailRegExp = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
		if (!emailRegExp.test($frm.member_email.value)){
			error[5].style.display = "block";
		}else{
			$frm.member_email.value=$frm.member_email.value.trim();
			error[5].style.display = "none";
		}
	})
})