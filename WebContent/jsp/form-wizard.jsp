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
		<link rel="stylesheet" href="<%=base %>css/slb.slb.css"/>	
	</head>
	<body>
		<%@ include file="header.inc" %>
		
		<%@ include file="user-nav.inc" %>
            
		<%@ include file="sidebar.inc" %>
		
		<%@ include file="style-switcher.inc" %>
		
		<div id="content">
			<div id="content-header">
				<h1>Form wizard</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="<%=base %>" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
				<a href="#">Form elements</a>
				<a href="#" class="current">Form wizard</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-pencil"></i>
								</span>
								<h5>Form wizard with validation</h5>
							</div>
							<div class="widget-content nopadding">
								<form id="form-wizard" class="form-horizontal" method="post">
									<div id="form-wizard-1" class="step">
										<div class="control-group">
											<label class="control-label">Username</label>
											<div class="controls">
												<input id="username" type="text" name="username" />
											</div>
										</div>
										<div class="control-group">
											<label class="control-label">Password</label>
											<div class="controls">
												<input id="password" type="password" name="password" />
											</div>
										</div>
										<div class="control-group">
											<label class="control-label">Confirm Password</label>
											<div class="controls">
												<input id="password2" type="password" name="password2" />
											</div>
										</div>
										
									</div>
									<div id="form-wizard-2" class="step">
										<div class="control-group">
											<label class="control-label">Email</label>
											<div class="controls">
												<input id="email" type="text" name="email" />
											</div>
										</div>
										<div class="control-group">
											<label class="control-label">EULA Acceptation</label>
											<div class="controls">
												<input id="eula" type="checkbox" name="eula" />
											</div>
										</div>
									</div>
									<div class="form-actions">
											<input id="back" class="btn btn-primary" type="reset" value="Back" />
											<input id="next" class="btn btn-primary" type="submit" value="Next" />
											<div id="status"></div>
									</div>
									<div id="submitted"></div>
								</form>
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
        <script src="<%=base %>js/jquery-ui.custom.js"></script>
        <script src="<%=base %>js/bootstrap.min.js"></script>
        <script src="<%=base %>js/jquery.validate.js"></script>
        <script src="<%=base %>js/jquery.wizard.js"></script>
        <script src="<%=base %>js/unicorn.js"></script>
        <script src="<%=base %>js/unicorn.wizard.js"></script>
        <script src="<%=base %>js/slb.slb.js"></script>
	</body>
</html>