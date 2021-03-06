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
		<link rel="stylesheet" href="<%=base %>css/jquery.gritter.css" />
		<link rel="stylesheet" href="<%=base %>css/jquery-ui.css" />
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
				<h1>Interface elements</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="<%=base %>" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
				<a href="#" class="current">Interface elements</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12 center" style="text-align: center;">					
						<ul class="stat-boxes">
							<li class="popover-visits">
								<div class="left peity_bar_good"><span>2,4,9,7,12,10,12</span>+10%</div>
								<div class="right">
									<strong>36094</strong>
									Visits
								</div>
							</li>
							<li class="popover-users">
								<div class="left peity_bar_neutral"><span>20,15,18,14,10,9,9,9</span>0%</div>
								<div class="right">
									<strong>1433</strong>
									Users
								</div>
							</li>
							<li class="popover-orders">
								<div class="left peity_bar_bad"><span>3,5,9,7,12,20,10</span>-50%</div>
								<div class="right">
									<strong>8650</strong>
									Orders
								</div>
							</li>
							<li class="popover-tickets">
								<div class="left peity_line_good"><span>12,6,9,23,14,10,17</span>+70%</div>
								<div class="right">
									<strong>2968</strong>
									Tickets
								</div>
							</li>
						</ul>
					</div>	
				</div>
				<div class="row-fluid">
					<div class="span12 center" style="text-align: center;">					
						<ul class="quick-actions">
							<li>
								<a href="#">
									<i class="icon-calendar"></i>
									Manage Events
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-shopping-bag"></i>
									Manage Orders
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-database"></i>
									Manage DB
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-people"></i>
									Manage Users
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-lock"></i>
									Security
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-piechart"></i>
									Statistics
								</a>
							</li>
						</ul>
					</div>	
				</div>
				<div class="row-fluid">
					<div class="span12 center" style="text-align: center;">					
						<ul class="quick-actions-horizontal">
							<li>
								<a href="#">
									<i class="icon-calendar"></i>
									<span>Manage Events</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-shopping-bag"></i>
									<span>Manage Orders</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-database"></i>
									<span>Manage DB</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-people"></i>
									<span>Manage Users</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-lock"></i>
									<span>Security</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="icon-piechart"></i>
									<span>Statistics</span>
								</a>
							</li>
						</ul>
					</div>	
				</div>
				<div class="row-fluid">
					<div class="span12">
						<div class="alert">
							<button class="close" data-dismiss="alert">Ã</button>
							<strong>Warning!</strong> Your monthly traffic is reaching limit.
						</div>
						<div class="alert alert-success">
							<button class="close" data-dismiss="alert">Ã</button>
							<strong>Success!</strong> The page has been added.
						</div>
						<div class="alert alert-info">
							<button class="close" data-dismiss="alert">Ã</button>
							<strong>Info!</strong> You have 198 unread messages.
						</div>
						<div class="alert alert-error">
							<button class="close" data-dismiss="alert">Ã</button>
							<strong>Error!</strong> The daily cronjob has failed.
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span6">
						<div class="widget-box">
								<div class="widget-title">
									<h5>Modal dialogs</h5>
								</div>
								<div class="widget-content">
									<a href="#myModal" data-toggle="modal" class="btn btn-primary">Modal dialog</a>
									<a href="#myAlert" data-toggle="modal" class="btn btn-danger">Alert</a>
									
									<div id="myModal" class="modal hide">
										<div class="modal-header">
											<button data-dismiss="modal" class="close" type="button">Ã</button>
											<h3>Modal header</h3>
										</div>
										<div class="modal-body">
											<p>One fine bodyâ¦</p>
										</div>
									</div>
									<div id="myAlert" class="modal hide">
										<div class="modal-header">
											<button data-dismiss="modal" class="close" type="button">Ã</button>
											<h3>Alert modal</h3>
										</div>
										<div class="modal-body">
											<p>Lorem ipsum dolor sit amet...</p>
										</div>
										<div class="modal-footer">
											<a data-dismiss="modal" class="btn btn-primary" href="#">Confirm</a>
											<a data-dismiss="modal" class="btn" href="#">Cancel</a>
										</div>
									</div>
								</div>
							</div>
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Progress bars</h5>
							</div>
							<div class="widget-content">

									<h3>Basic progress bars</h3>
										<div class="progress">
											<div style="width: 60%;" class="bar"></div>
										</div>
										<div class="progress progress-success">
											<div style="width: 60%;" class="bar"></div>
										</div>
										<div class="progress progress-warning">
											<div style="width: 60%;" class="bar"></div>
										</div>
										<div class="progress progress-danger">
											<div style="width: 60%;" class="bar"></div>
										</div>
									<h3>Striped progress bars</h3>
										<div class="alert">
											Internet Explorer doesn't support striped progress bars!
										</div>
										<div class="progress progress-striped">
											<div style="width: 60%;" class="bar"></div>
										</div>
										<div class="progress progress-striped progress-success">
											<div style="width: 60%;" class="bar"></div>
										</div>
										<div class="progress progress-striped progress-warning">
											<div style="width: 60%;" class="bar"></div>
										</div>
										<div class="progress progress-striped progress-danger">
											<div style="width: 60%;" class="bar"></div>
										</div>
									<h3>Animated progress bars</h3>										
										<div class="alert">
											Internet Explorer doesn't support animated progress bars!
										</div>
										<div class="progress progress-striped active">
											<div style="width: 60%;" class="bar"></div>
										</div>
										<div class="progress progress-striped progress-success active">
											<div style="width: 60%;" class="bar"></div>
										</div>
										<div class="progress progress-striped progress-warning active">
											<div style="width: 60%;" class="bar"></div>
										</div>
										<div class="progress progress-striped progress-danger active">
											<div style="width: 60%;" class="bar"></div>
										</div>
								
							</div>
						</div>
						<div class="widget-box">
								<div class="widget-title">
									<span class="icon">
										<i class="icon-comment"></i>
									</span>
									<h5>Tooltip directions</h5>
								</div>
								<div class="widget-content">
									<p>Four directions of the tooltips, just add a class: 'tip-top', 'tip-bottom', 'tip-left' or 'tip-right' without quotes to the element you want to have tooltip.</p>
									<p>
										<button class="btn tip-top" data-original-title="Tooltip in top">Top</button>
										<button class="btn tip-left" data-original-title="Tooltip in left">Left</button>
										<button class="btn tip-right" data-original-title="Tooltip in right">Right</button>
										<button class="btn tip-bottom" data-original-title="Tooltip in bottom">Bottom</button>
									</p>
								</div>
							</div>
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-exclamation-sign"></i>
								</span>
								<h5>Pagination</h5>
							</div>
							<div class="widget-content">
								<h3>Default pagination</h3>
								<div class="pagination">
									<ul>
										<li><a href="#">Prev</a></li>
										<li class="active">
											<a href="#">1</a>
										</li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">Next</a></li>
									</ul>
								</div>
								<h3>Alternate pagination</h3>
								<code>&lt;div class="pagination alternate"&gt;</code>
								<div class="pagination alternate">
									<ul>
										<li class="disabled"><a href="#">Prev</a></li>
										<li class="active">
											<a href="#">1</a>
										</li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">Next</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="span6">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Notifications</h5>
							</div>
							<div class="widget-content">
								<div class="alert alert-block">
									<a class="close" data-dismiss="alert" href="#">Ã</a>
									<h4 class="alert-heading">Warning!</h4>
									Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.
								</div>
								<div class="alert alert-success alert-block">
									<a class="close" data-dismiss="alert" href="#">Ã</a>
									<h4 class="alert-heading">Success!</h4>
									Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.
								</div>
								<div class="alert alert-info alert-block">
									<a class="close" data-dismiss="alert" href="#">Ã</a>
									<h4 class="alert-heading">Info!</h4>
									Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.
								</div>
								<div class="alert alert-error alert-block">
									<a class="close" data-dismiss="alert" href="#">Ã</a>
									<h4 class="alert-heading">Error!</h4>
									Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.
								</div>
							</div>
						</div>
						<div class="widget-box">
								<div class="widget-title">
									<span class="icon">
										<i class="icon-tag"></i>
									</span>
									<h5>Labels and badges</h5>
								</div>
								<div class="widget-content">
									<h3>Available labels</h3>
									<table class="table table-bordered table-striped">
										<thead>
										  <tr>
											<th>Labels</th>
											<th>Markup</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>
											  <span class="label">Default</span>
											</td>
											<td>
											  <code>&lt;span class="label"&gt;</code>
											</td>
										  </tr>
										  <tr>
											<td>
											  <span class="label label-success">Success</span>
											</td>
											<td>
											  <code>&lt;span class="label label-success"&gt;</code>
											</td>
										  </tr>
										  <tr>
											<td>
											  <span class="label label-warning">Warning</span>
											</td>
											<td>
											  <code>&lt;span class="label label-warning"&gt;</code>
											</td>
										  </tr>
										  <tr>
											<td>
											  <span class="label label-important">Important</span>
											</td>
											<td>
											  <code>&lt;span class="label label-important"&gt;</code>
											</td>
										  </tr>
										  <tr>
											<td>
											  <span class="label label-info">Info</span>
											</td>
											<td>
											  <code>&lt;span class="label label-info"&gt;</code>
											</td>
										  </tr>
										  <tr>
											<td>
											  <span class="label label-inverse">Inverse</span>
											</td>
											<td>
											  <code>&lt;span class="label label-inverse"&gt;</code>
											</td>
										  </tr>
										</tbody>
									  </table>
									<h3>Available badges</h3>
										<table class="table table-bordered table-striped">
										<thead>
										  <tr>
											<th>Name</th>
											<th>Example</th>
											<th>Markup</th>
										  </tr>
										</thead>
										<tbody>
										  <tr>
											<td>
											  Default
											</td>
											<td>
											  <span class="badge">1</span>
											</td>
											<td>
											  <code>&lt;span class="badge"&gt;</code>
											</td>
										  </tr>
										  <tr>
											<td>
											  Success
											</td>
											<td>
											  <span class="badge badge-success">2</span>
											</td>
											<td>
											  <code>&lt;span class="badge badge-success"&gt;</code>
											</td>
										  </tr>
										  <tr>
											<td>
											  Warning
											</td>
											<td>
											  <span class="badge badge-warning">4</span>
											</td>
											<td>
											  <code>&lt;span class="badge badge-warning"&gt;</code>
											</td>
										  </tr>
										  <tr>
											<td>
											  Important
											</td>
											<td>
											  <span class="badge badge-important">6</span>
											</td>
											<td>
											  <code>&lt;span class="badge badge-important"&gt;</code>
											</td>
										  </tr>
										  <tr>
											<td>
											  Info
											</td>
											<td>
											  <span class="badge badge-info">8</span>
											</td>
											<td>
											  <code>&lt;span class="badge badge-info"&gt;</code>
											</td>
										  </tr>
										  <tr>
											<td>
											  Inverse
											</td>
											<td>
											  <span class="badge badge-inverse">10</span>
											</td>
											<td>
											  <code>&lt;span class="badge badge-inverse"&gt;</code>
											</td>
										  </tr>
										</tbody>
									  </table>
								</div>
							</div>
							<div class="widget-box">
								<div class="widget-title">
									<span class="icon">
										<i class="icon-comment"></i>
									</span>
									<h5>Growl-like notifications</h5>
								</div>
								<div class="widget-content notify-ui">
									<ul id="gritter-notify">
										<li class="normal">Standard notification</li>
										<li class="sticky">Sticky notification</li>
										<li class="image" data-image="img/demo/envelope.png">Notification with image</li>
									</ul>
								</div>
							</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-star"></i>
								</span>
								<h5>jQuery UI Components</h5>
							</div>
							<div class="widget-content">
								<div class="row-fluid">
									<div class="span6 clearfix">										
										<h3>Sliders</h3>
										<h4>Horizontal Slider</h4>
										<div id="h-slider"></div>
										<h4>Vertical Slider</h4>
										<div class="row-fluid">
											<div class="span6">
											<p style="padding:4px;" class="ui-state-default ui-corner-all ui-helper-clearfix">
								                <span style="float:left; margin:-2px 5px 0 0;" class="ui-icon ui-icon-volume-on"></span>
								                Master volume
								            </p>
								            <p>
								                <label for="amount">Volume:</label>
								                <input type="text" id="amount">
								            </p>
								        	</div>
								        	<div class="span6">
								        		<div id="v-slider"></div>
								        	</div>
								        </div>
								        <h3>Autocomplete</h3>
								        <input type="text" placeholder="Enter tag" id="tags" />
								        <h3>Menu</h3>
										<ul id="menu">
											<li><a href="#"><span class="ui-icon ui-icon-disk"></span>Save</a></li>
											<li><a href="#"><span class="ui-icon ui-icon-zoomin"></span>Zoom In</a></li>
											<li><a href="#"><span class="ui-icon ui-icon-zoomout"></span>Zoom Out</a></li>
											<li class="ui-state-disabled"><a href="#"><span class="ui-icon ui-icon-print"></span>Print...</a></li>
											<li>
												<a href="#">Playback</a>
												<ul>
													<li><a href="#"><span class="ui-icon ui-icon-seek-start"></span>Prev</a></li>
													<li><a href="#"><span class="ui-icon ui-icon-stop"></span>Stop</a></li>
													<li><a href="#"><span class="ui-icon ui-icon-play"></span>Play</a></li>
													<li><a href="#"><span class="ui-icon ui-icon-seek-end"></span>Next</a></li>
												</ul>
											</li>
										</ul>
									</div>
									<div class="span6">
										<h3>Datepicker</h3>
										<div id="ui-datepicker"></div>
										<h3>Spinner</h3>
										<p>
											<label for="spinner">Select value:</label>
											<input id="spinner" name="value" autocomplete="off"/>
										</p>
										<p>
											<button id="disable" class="btn">Toggle Disable/Enable</button>
											<button id="destroy" class="btn">Toggle Widget</button>
										</p>
										<p>
											<button id="getvalue" class="btn">Get Value</button>
											<button id="setvalue" class="btn">Set Value to 5</button>
										</p>
										<h3>Dialogs</h3>
										<a href="#" id="open-dialog" class="btn">Dialog</a> <a href="#" id="open-modal" class="btn btn-primary">Modal Dialog</a>
										<div id="dialog" title="Basic dialog">
											<p>This is an animated dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
										</div>
										<div id="modal-dialog" title="Modal Dialog">
											Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
										</div>
									</div>
								</div>
								<div class="row-fluid">
									<div class="span12">
										<h3>Icons</h3>
										<ul class="ui-widget ui-helper-clearfix" id="icons">
								            <li title=".ui-icon-carat-1-n" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-carat-1-n"></span></li>
								            <li title=".ui-icon-carat-1-ne" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-carat-1-ne"></span></li>
								            <li title=".ui-icon-carat-1-e" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-carat-1-e"></span></li>

								            <li title=".ui-icon-carat-1-se" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-carat-1-se"></span></li>
								            <li title=".ui-icon-carat-1-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-carat-1-s"></span></li>
								            <li title=".ui-icon-carat-1-sw" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-carat-1-sw"></span></li>
								            <li title=".ui-icon-carat-1-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-carat-1-w"></span></li>
								            <li title=".ui-icon-carat-1-nw" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-carat-1-nw"></span></li>
								            <li title=".ui-icon-carat-2-n-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-carat-2-n-s"></span></li>
								            <li title=".ui-icon-carat-2-e-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-carat-2-e-w"></span></li>
								            <li title=".ui-icon-triangle-1-n" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-triangle-1-n"></span></li>
								            <li title=".ui-icon-triangle-1-ne" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-triangle-1-ne"></span></li>

								            <li title=".ui-icon-triangle-1-e" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-triangle-1-e"></span></li>
								            <li title=".ui-icon-triangle-1-se" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-triangle-1-se"></span></li>
								            <li title=".ui-icon-triangle-1-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-triangle-1-s"></span></li>
								            <li title=".ui-icon-triangle-1-sw" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-triangle-1-sw"></span></li>
								            <li title=".ui-icon-triangle-1-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-triangle-1-w"></span></li>
								            <li title=".ui-icon-triangle-1-nw" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-triangle-1-nw"></span></li>
								            <li title=".ui-icon-triangle-2-n-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-triangle-2-n-s"></span></li>
								            <li title=".ui-icon-triangle-2-e-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-triangle-2-e-w"></span></li>
								            <li title=".ui-icon-arrow-1-n" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-1-n"></span></li>

								            <li title=".ui-icon-arrow-1-ne" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-1-ne"></span></li>
								            <li title=".ui-icon-arrow-1-e" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-1-e"></span></li>
								            <li title=".ui-icon-arrow-1-se" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-1-se"></span></li>
								            <li title=".ui-icon-arrow-1-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-1-s"></span></li>
								            <li title=".ui-icon-arrow-1-sw" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-1-sw"></span></li>
								            <li title=".ui-icon-arrow-1-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-1-w"></span></li>
								            <li title=".ui-icon-arrow-1-nw" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-1-nw"></span></li>
								            <li title=".ui-icon-arrow-2-n-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-2-n-s"></span></li>
								            <li title=".ui-icon-arrow-2-ne-sw" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-2-ne-sw"></span></li>

								            <li title=".ui-icon-arrow-2-e-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-2-e-w"></span></li>
								            <li title=".ui-icon-arrow-2-se-nw" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-2-se-nw"></span></li>
								            <li title=".ui-icon-arrowstop-1-n" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowstop-1-n"></span></li>
								            <li title=".ui-icon-arrowstop-1-e" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowstop-1-e"></span></li>
								            <li title=".ui-icon-arrowstop-1-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowstop-1-s"></span></li>
								            <li title=".ui-icon-arrowstop-1-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowstop-1-w"></span></li>
								            <li title=".ui-icon-arrowthick-1-n" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthick-1-n"></span></li>
								            <li title=".ui-icon-arrowthick-1-ne" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthick-1-ne"></span></li>
								            <li title=".ui-icon-arrowthick-1-e" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthick-1-e"></span></li>

								            <li title=".ui-icon-arrowthick-1-se" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthick-1-se"></span></li>
								            <li title=".ui-icon-arrowthick-1-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthick-1-s"></span></li>
								            <li title=".ui-icon-arrowthick-1-sw" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthick-1-sw"></span></li>
								            <li title=".ui-icon-arrowthick-1-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthick-1-w"></span></li>
								            <li title=".ui-icon-arrowthick-1-nw" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthick-1-nw"></span></li>
								            <li title=".ui-icon-arrowthick-2-n-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthick-2-n-s"></span></li>
								            <li title=".ui-icon-arrowthick-2-ne-sw" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthick-2-ne-sw"></span></li>
								            <li title=".ui-icon-arrowthick-2-e-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthick-2-e-w"></span></li>
								            <li title=".ui-icon-arrowthick-2-se-nw" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthick-2-se-nw"></span></li>

								            <li title=".ui-icon-arrowthickstop-1-n" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthickstop-1-n"></span></li>
								            <li title=".ui-icon-arrowthickstop-1-e" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthickstop-1-e"></span></li>
								            <li title=".ui-icon-arrowthickstop-1-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthickstop-1-s"></span></li>
								            <li title=".ui-icon-arrowthickstop-1-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowthickstop-1-w"></span></li>
								            <li title=".ui-icon-arrowreturnthick-1-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowreturnthick-1-w"></span></li>
								            <li title=".ui-icon-arrowreturnthick-1-n" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowreturnthick-1-n"></span></li>
								            <li title=".ui-icon-arrowreturnthick-1-e" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowreturnthick-1-e"></span></li>
								            <li title=".ui-icon-arrowreturnthick-1-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowreturnthick-1-s"></span></li>
								            <li title=".ui-icon-arrowreturn-1-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowreturn-1-w"></span></li>

								            <li title=".ui-icon-arrowreturn-1-n" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowreturn-1-n"></span></li>
								            <li title=".ui-icon-arrowreturn-1-e" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowreturn-1-e"></span></li>
								            <li title=".ui-icon-arrowreturn-1-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowreturn-1-s"></span></li>
								            <li title=".ui-icon-arrowrefresh-1-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowrefresh-1-w"></span></li>
								            <li title=".ui-icon-arrowrefresh-1-n" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowrefresh-1-n"></span></li>
								            <li title=".ui-icon-arrowrefresh-1-e" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowrefresh-1-e"></span></li>
								            <li title=".ui-icon-arrowrefresh-1-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrowrefresh-1-s"></span></li>
								            <li title=".ui-icon-arrow-4" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-4"></span></li>
								            <li title=".ui-icon-arrow-4-diag" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-arrow-4-diag"></span></li>

								            <li title=".ui-icon-extlink" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-extlink"></span></li>
								            <li title=".ui-icon-newwin" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-newwin"></span></li>
								            <li title=".ui-icon-refresh" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-refresh"></span></li>
								            <li title=".ui-icon-shuffle" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-shuffle"></span></li>
								            <li title=".ui-icon-transfer-e-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-transfer-e-w"></span></li>
								            <li title=".ui-icon-transferthick-e-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-transferthick-e-w"></span></li>
								            <li title=".ui-icon-folder-collapsed" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-folder-collapsed"></span></li>
								            <li title=".ui-icon-folder-open" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-folder-open"></span></li>
								            <li title=".ui-icon-document" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-document"></span></li>

								            <li title=".ui-icon-document-b" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-document-b"></span></li>
								            <li title=".ui-icon-note" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-note"></span></li>
								            <li title=".ui-icon-mail-closed" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-mail-closed"></span></li>
								            <li title=".ui-icon-mail-open" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-mail-open"></span></li>
								            <li title=".ui-icon-suitcase" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-suitcase"></span></li>
								            <li title=".ui-icon-comment" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-comment"></span></li>
								            <li title=".ui-icon-person" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-person"></span></li>
								            <li title=".ui-icon-print" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-print"></span></li>
								            <li title=".ui-icon-trash" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-trash"></span></li>

								            <li title=".ui-icon-locked" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-locked"></span></li>
								            <li title=".ui-icon-unlocked" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-unlocked"></span></li>
								            <li title=".ui-icon-bookmark" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-bookmark"></span></li>
								            <li title=".ui-icon-tag" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-tag"></span></li>
								            <li title=".ui-icon-home" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-home"></span></li>
								            <li title=".ui-icon-flag" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-flag"></span></li>
								            <li title=".ui-icon-calculator" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-calculator"></span></li>
								            <li title=".ui-icon-cart" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-cart"></span></li>
								            <li title=".ui-icon-pencil" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-pencil"></span></li>

								            <li title=".ui-icon-clock" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-clock"></span></li>
								            <li title=".ui-icon-disk" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-disk"></span></li>
								            <li title=".ui-icon-calendar" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-calendar"></span></li>
								            <li title=".ui-icon-zoomin" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-zoomin"></span></li>
								            <li title=".ui-icon-zoomout" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-zoomout"></span></li>
								            <li title=".ui-icon-search" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-search"></span></li>
								            <li title=".ui-icon-wrench" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-wrench"></span></li>
								            <li title=".ui-icon-gear" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-gear"></span></li>
								            <li title=".ui-icon-heart" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-heart"></span></li>

								            <li title=".ui-icon-star" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-star"></span></li>
								            <li title=".ui-icon-link" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-link"></span></li>
								            <li title=".ui-icon-cancel" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-cancel"></span></li>
								            <li title=".ui-icon-plus" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-plus"></span></li>
								            <li title=".ui-icon-plusthick" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-plusthick"></span></li>
								            <li title=".ui-icon-minus" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-minus"></span></li>
								            <li title=".ui-icon-minusthick" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-minusthick"></span></li>
								            <li title=".ui-icon-close" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-close"></span></li>
								            <li title=".ui-icon-closethick" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-closethick"></span></li>

								            <li title=".ui-icon-key" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-key"></span></li>
								            <li title=".ui-icon-lightbulb" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-lightbulb"></span></li>
								            <li title=".ui-icon-scissors" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-scissors"></span></li>
								            <li title=".ui-icon-clipboard" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-clipboard"></span></li>
								            <li title=".ui-icon-copy" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-copy"></span></li>
								            <li title=".ui-icon-contact" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-contact"></span></li>
								            <li title=".ui-icon-image" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-image"></span></li>
								            <li title=".ui-icon-video" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-video"></span></li>
								            <li title=".ui-icon-script" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-script"></span></li>
								            <li title=".ui-icon-alert" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-alert"></span></li>

								            <li title=".ui-icon-info" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-info"></span></li>
								            <li title=".ui-icon-notice" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-notice"></span></li>
								            <li title=".ui-icon-help" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-help"></span></li>
								            <li title=".ui-icon-check" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-check"></span></li>
								            <li title=".ui-icon-bullet" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-bullet"></span></li>
								            <li title=".ui-icon-radio-off" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-radio-off"></span></li>
								            <li title=".ui-icon-radio-on" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-radio-on"></span></li>
								            <li title=".ui-icon-pin-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-pin-w"></span></li>
								            <li title=".ui-icon-pin-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-pin-s"></span></li>
								            <li title=".ui-icon-play" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-play"></span></li>
								            <li title=".ui-icon-pause" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-pause"></span></li>

								            <li title=".ui-icon-seek-next" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-seek-next"></span></li>
								            <li title=".ui-icon-seek-prev" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-seek-prev"></span></li>
								            <li title=".ui-icon-seek-end" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-seek-end"></span></li>
								            <li title=".ui-icon-seek-first" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-seek-first"></span></li>
								            <li title=".ui-icon-stop" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-stop"></span></li>
								            <li title=".ui-icon-eject" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-eject"></span></li>
								            <li title=".ui-icon-volume-off" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-volume-off"></span></li>
								            <li title=".ui-icon-volume-on" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-volume-on"></span></li>
								            <li title=".ui-icon-power" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-power"></span></li>

								            <li title=".ui-icon-signal-diag" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-signal-diag"></span></li>
								            <li title=".ui-icon-signal" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-signal"></span></li>
								            <li title=".ui-icon-battery-0" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-battery-0"></span></li>
								            <li title=".ui-icon-battery-1" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-battery-1"></span></li>
								            <li title=".ui-icon-battery-2" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-battery-2"></span></li>
								            <li title=".ui-icon-battery-3" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-battery-3"></span></li>
								            <li title=".ui-icon-circle-plus" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-plus"></span></li>
								            <li title=".ui-icon-circle-minus" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-minus"></span></li>
								            <li title=".ui-icon-circle-close" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-close"></span></li>

								            <li title=".ui-icon-circle-triangle-e" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-triangle-e"></span></li>
								            <li title=".ui-icon-circle-triangle-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-triangle-s"></span></li>
								            <li title=".ui-icon-circle-triangle-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-triangle-w"></span></li>
								            <li title=".ui-icon-circle-triangle-n" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-triangle-n"></span></li>
								            <li title=".ui-icon-circle-arrow-e" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-arrow-e"></span></li>
								            <li title=".ui-icon-circle-arrow-s" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-arrow-s"></span></li>
								            <li title=".ui-icon-circle-arrow-w" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-arrow-w"></span></li>
								            <li title=".ui-icon-circle-arrow-n" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-arrow-n"></span></li>
								            <li title=".ui-icon-circle-zoomin" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-zoomin"></span></li>

								            <li title=".ui-icon-circle-zoomout" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-zoomout"></span></li>
								            <li title=".ui-icon-circle-check" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circle-check"></span></li>
								            <li title=".ui-icon-circlesmall-plus" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circlesmall-plus"></span></li>
								            <li title=".ui-icon-circlesmall-minus" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circlesmall-minus"></span></li>
								            <li title=".ui-icon-circlesmall-close" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-circlesmall-close"></span></li>
								            <li title=".ui-icon-squaresmall-plus" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-squaresmall-plus"></span></li>
								            <li title=".ui-icon-squaresmall-minus" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-squaresmall-minus"></span></li>
								            <li title=".ui-icon-squaresmall-close" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-squaresmall-close"></span></li>
								            <li title=".ui-icon-grip-dotted-vertical" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-grip-dotted-vertical"></span></li>

								            <li title=".ui-icon-grip-dotted-horizontal" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-grip-dotted-horizontal"></span></li>
								            <li title=".ui-icon-grip-solid-vertical" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-grip-solid-vertical"></span></li>
								            <li title=".ui-icon-grip-solid-horizontal" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-grip-solid-horizontal"></span></li>
								            <li title=".ui-icon-gripsmall-diagonal-se" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-gripsmall-diagonal-se"></span></li>
								            <li title=".ui-icon-grip-diagonal-se" class="ui-state-default ui-corner-all"><span class="ui-icon ui-icon-grip-diagonal-se"></span></li>
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
        <script src="<%=base %>js/jquery-ui.custom.js"></script>
        <script src="<%=base %>js/bootstrap.min.js"></script>
        <script src="<%=base %>js/jquery.gritter.min.js"></script>
        <script src="<%=base %>js/jquery.peity.min.js"></script>
        <script src="<%=base %>js/unicorn.js"></script>
        <script src="<%=base %>js/unicorn.interface.js"></script>
        <script src="<%=base %>js/slb.slb.js"></script>
	</body>
</html>
