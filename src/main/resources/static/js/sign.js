/**
 * 
 */

$(function(){
	$("#btnSignIn").click(function(){
		var member_id = $("#member_id").val();
		var password = $("#password").val();
		
		if(!member_id){
			return;
		} else if(!password){
			return;
		}
		document.frmSignIn.action = "signInCheck1";
		document.frmSignIn.submit();
	})
})