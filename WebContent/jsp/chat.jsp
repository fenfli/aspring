<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String base = request.getScheme() + "://" + request.getServerName() + ":" 
			+ request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>aSpring</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="<%=base %>css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=base %>css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="<%=base %>css/unicorn.main.css" />
		<link rel="stylesheet" href="<%=base %>css/unicorn.grey.css" class="skin-color" />
		<link rel="stylesheet" href="<%=base %>css/slb.slb.css" />	
	</head>
	<body>
		<%@ include file="header.inc" %>
		
		<%@ include file="user-nav.inc" %>
            
		<%@ include file="sidebar.inc" %>
		
		<%@ include file="style-switcher.inc" %>
		
		<div id="content">
			<div id="content-header">
				<h1>Support chat</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="<%=base %>" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
				<a href="#">Sample pages</a>
				<a href="#" class="current">Suport chat</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="alert alert-success">This is an example of support chat. Feel free to write something.<a href="#" class="close" data-dismiss="alert">Ã</a></div>
						<div class="widget-box widget-chat">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-comment"></i>
								</span>
								<h5>Support chat</h5>
							</div>
							<div class="widget-content nopadding">
								<div class="chat-content panel-left">                   
								   <div class="chat-messages" id="chat-messages">
										<div id="chat-messages-inner"></div>
								   </div>									
								   <div class="chat-message well">
										<button class="btn btn-success">Send</button>  
										<span class="input-box">
											<input type="text" name="msg-box" id="msg-box" />
										</span>										                  
								   </div>                   
								</div>
								<div class="chat-users panel-right">
									<div class="panel-title"><h5>Online Users</h5></div>
									<div class="panel-content nopadding">
										<ul class="contact-list">
											<li id="user-michelle" class="online new"><a href="#"><img alt="" src="<%=base %>img/demo/av1.jpg" /> <span>Michelle</span></a><span class="msg-count badge badge-info">3</span></li>
											<li id="user-neytiri"><a href="#"><img alt="" src="<%=base %>img/demo/av2.jpg" /> <span>Neytiri</span></a></li>
											<li id="user-cartoon-man" class="online"><a href="#"><img alt="" src="<%=base %>img/demo/av3.jpg" /> <span>Cartoon Man</span></a></li>
											<li id="user-rick-newton" class="online"><a href="#"><img alt="" src="<%=base %>img/demo/av1.jpg" /> <span>Rick Newton</span></a></li>
											<li id="user-zack-renson" class="online new"><a href="#"><img alt="" src="<%=base %>img/demo/av2.jpg" /> <span>Zack Renson</span></a><span class="msg-count badge badge-info">1</span></li>
											<li id="user-vladimir-ivanov"><a href="#"><img alt="" src="<%=base %>img/demo/av3.jpg" /> <span>Wladimir Ivanov</span></a></li>
											<li id="user-master-moda"><a href="#"><img alt="" src="<%=base %>img/demo/av1.jpg" /> <span>Master Moda</span></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row-fluid">
					<%@ include file="footer.inc" %>
				</div>
			</div>
		</div>

        <script src="<%=base %>js/jquery.min.js"></script>
        <script src="<%=base %>js/jquery.ui.custom.js"></script>
        <script src="<%=base %>js/bootstrap.min.js"></script>
        <script src="<%=base %>js/unicorn.js"></script>
        <script src="<%=base %>js/unicorn.chat.js"></script>
        <script src="<%=base %>js/slb.slb.js"></script>
	</body>
</html>
