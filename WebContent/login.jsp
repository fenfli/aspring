<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
	String userState = (String) request.getSession().getAttribute("USER_ONLINE");
	if (null != userState && "online".equals(userState)) {
		request.getRequestDispatcher("jsp/index.jsp").forward(request, response);
	} 
	
%>

<!DOCTYPE html>
<html>
    <head>
        <title>aSpring</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/unicorn.login.css" />
        <link rel="stylesheet" href="css/slb.slb.css" />
        <base href="<%=basePath%>">
    </head>
    <body>
        <div id="logo">
   			<img src="img/aspring-freedom.png" alt="" />
        </div>
        <div id="loginbox">            
            <form id="loginform" class="form-vertical" action="login?action=login" method="POST">
				<p>Please Login</p>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-user"></i></span><input name="username" type="text" placeholder="Username" required="required"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-lock"></i></span><input name="password" type="password" placeholder="Password" required="required"/>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                        	<span class="add-on"><i class="icon-qrcode"></i></span><input name="verifycode" type="text" placeholder="VerifyCode" required="required" autocomplete="off"/><br>
                        	<span id="verifycc"><img id="verifycodeimage" src="common/getverifycodeimage.do"></span>
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link" id="to-recover">Lost password?</a></span>
                    <span class="error">${ERROR_LOGIN}</span>
                    <span class="pull-right"><input type="submit" class="btn btn-inverse" value="Login" /></span>
                </div>
            </form>
            <form id="recoverform" action="#" class="form-vertical">
				<p>Enter your e-mail address below and we will send you instructions how to recover a password.</p>
				<div class="control-group">
                    <div class="controls">
                        <div class="input-prepend">
                            <span class="add-on"><i class="icon-envelope"></i></span><input type="text" placeholder="E-mail address" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link" id="to-login">&lt; Back to login</a></span>
                    <span class="pull-right"><input type="submit" class="btn btn-inverse" value="Recover" /></span>
                </div>
            </form>
        </div>
        
        <script src="js/jquery.min.js"></script>  
        <script src="js/unicorn.login.js"></script>
        <script src="js/slb.login.js"></script> 
        <script>
        	var webRoot = "<%=basePath%>";
        </script>
    </body>
</html>
