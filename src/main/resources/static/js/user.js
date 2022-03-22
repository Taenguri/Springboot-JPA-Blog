let index = {
	
	init : function(){
		$("#btn-save").on("click", ()=>{ // function(){} , ()=>{}  this 를 바인딩하기 위해
			this.save();
		});
		
		$("#btn-update").on("click", ()=>{ // function(){} , ()=>{}  this 를 바인딩하기 위해
			this.update();
		});
		
	},
	
	
	save:function(){
		
		let data = {
			username: $("#username").val(),
			password: $("#password").val(),
			email: $("#email").val()
		};
		
		 $.ajax({
			type:"POST",
			url:"/auth/joinProc",
			data : JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"		
		}).done(function(result){
				alert("회원가입완료");
			location.href="/";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
		 
		
		
	},
	
	
	update:function(){
		
		let data = {
			id: $("#id").val(),
			username: $("#username").val(),
			password: $("#password").val(),
			email: $("#email").val()
		};
		
		 $.ajax({
			type:"PUT",
			url:"/user",
			data : JSON.stringify(data),
			contentType:"application/json; charset=utf-8",
			dataType:"json"		
		}).done(function(result){
				alert("회원수정완료");
			location.href="/";
		}).fail(function(error){
			alert(JSON.stringify(error));
		});
		 
		
		
	}
	
	
}

index.init();