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
				<h1>Grid Layout</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="<%=base %>" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
				<a href="#" class="current">Grid Layout</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Span12</h5>
							</div>
							<div class="widget-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span6">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Span6</h5>
							</div>
							<div class="widget-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
					</div>
					<div class="span6">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Span6</h5>
							</div>
							<div class="widget-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span4">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Span4</h5>
							</div>
							<div class="widget-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Span4</h5>
							</div>
							<div class="widget-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
						</div>
					<div class="span4">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Span4</h5>
							</div>
							<div class="widget-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span5">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Span5</h5>
							</div>
							<div class="widget-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
					</div>
					<div class="span3">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Span3</h5>
							</div>
							<div class="widget-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Span4</h5>
							</div>
							<div class="widget-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span3">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Span3</h5>
							</div>
							<div class="widget-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
					</div>
					<div class="span3">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Span3</h5>
							</div>
							<div class="widget-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
					</div>
					<div class="span3">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Span3</h5>
							</div>
							<div class="widget-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
					</div>
					<div class="span3">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Span3</h5>
							</div>
							<div class="widget-content">
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
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
        <script src="<%=base %>js/slb.slb.js"></script>
	</body>
</html>
