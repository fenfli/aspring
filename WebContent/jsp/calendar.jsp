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
		<link rel="stylesheet" href="<%=base %>css/fullcalendar.css" />
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
				<h1>Calendar</h1>
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
				<a href="#" class="current">Calendar</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="alert alert-info">
							This page demonstrates a jQuery calendar plugin. Try to add a new event!
							<a href="#" class="close" data-dismiss="alert">Ã</a>
						</div>
						<div class="widget-box widget-calendar">
							<div class="widget-title">
								<span class="icon"><i class="icon-calendar"></i></span>
								<h5>Calendar</h5>
								<div class="buttons">
									<a id="add-event" data-toggle="modal" href="#modal-add-event" class="btn btn-success btn-mini"><i class="icon-plus icon-white"></i> Add new event</a>
									<div class="modal hide" id="modal-add-event">
										 <div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">Ã</button>
											<h3>Add a new event</h3>
										</div>
										<div class="modal-body">
											<p>Enter event name:</p>
											<p><input id="event-name" type="text" /></p>
										</div>
										<div class="modal-footer">
											<a href="#" class="btn" data-dismiss="modal">Cancel</a>
											<a href="#" id="add-event-submit" class="btn btn-primary">Add event</a>
										</div>
									</div>
								</div>
							</div>
							<div class="widget-content nopadding">
								<div class="panel-left">
									<div id="fullcalendar"></div>
								</div>
								<div id="external-events" class="panel-right">
									<div class="panel-title"><h5>Events</h5></div>
									<div class="panel-content">
										<div class="external-event ui-draggable label label-inverse">My Event 1</div>
                                        <div class="external-event ui-draggable label label-inverse">My Event 2</div>
                                        <div class="external-event ui-draggable label label-inverse">My Event 3</div>
                                        <div class="external-event ui-draggable label label-inverse">My Event 4</div>
                                        <div class="external-event ui-draggable label label-inverse">My Event 5</div>
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
        <script src="<%=base %>js/jquery-ui.custom.js"></script>
        <script src="<%=base %>js/bootstrap.min.js"></script>
        <script src="<%=base %>js/fullcalendar.min.js"></script>
        <script src="<%=base %>js/unicorn.js"></script>
        <script src="<%=base %>js/unicorn.calendar.js"></script>
        <script src="<%=base %>js/slb.slb.js"></script>
	</body>
</html>
