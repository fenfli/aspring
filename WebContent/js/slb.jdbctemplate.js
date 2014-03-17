/**
 * -> jdbcTemplate.jsp
 * @author GISApe
 * @date 2014/01/24
**/
$(document).ready(function(){
	
	$('input[type=checkbox],input[type=radio],input[type=file]').uniform();
	
	$('select').select2();
	
	// Form Validation
    $("#saveform").validate({
		rules:{
			usercode:{
				required:true
			},
			username:{
				required:true
			},
			password:{
				required:true
			}
		},
		errorClass: "help-inline",
		errorElement: "span",
		highlight:function(element, errorClass, validClass) {
			$(element).parents('.control-group').addClass('error');
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parents('.control-group').removeClass('error');
			$(element).parents('.control-group').addClass('success');
		},
		invalidHandler : function(){
			return false;
		},
		submitHandler: function() {
			var obj = {"userCode": $("#usercode").val(), "userName": $("#username").val(),
					"passWord": $("#password").val(), "state": $("input:checked").val()};
			$.ajax({
			  type: "POST",
			  contentType : 'application/json',
			  url: baseUrl + "user/usersave.do",
			  data: JSON.stringify(obj),
			  dataType: "json",
			  error: function(resp) {
				  
			  },
			  success: function(resp) {
				  if (resp && resp.success) {
					  $("#saveaction").append('<i class="icon-ok"></i>');
				  }
			  }
	    	});
			return false;
		}
	});
    //Query
    $("#query").click(function() {
    	
    	$.ajax({
		  type: "POST",
		  url: baseUrl + "user/userquery.do",
		  dataType: "json",
		  success: function(resp) {
			  var trs = "";
			  for (var i in resp) {
				  trs += "<tr><td>" + resp[i].USER_ID + 
				  		 "<td>" + resp[i].USER_CODE+ "</td>" +
				  		 "<td>" + resp[i].USER_NAME +"</td>" +
				  		 "<td>" + resp[i].STATE + "</td></tr>";
			  }
			  $("#show").html("").append(trs);
		  }
    	});
    });
});
