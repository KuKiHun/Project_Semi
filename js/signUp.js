$(function(){

	// [회원가입] 버튼이 클릭됐을 때
	$("#signUpbtn").click(function(){
		
		var params = $("#memberFrm").serialize();
		//alert(params);
		
		$.ajax({
			type : "post",
			data : params,
			url  : "../replies/new",
			success : function(result) {
				//alert(result);
				$("#reply").val("");
				replyList();
			},
			error : function(err) {
				alert("error");
				console.log(err);
			}
		});
	});
});