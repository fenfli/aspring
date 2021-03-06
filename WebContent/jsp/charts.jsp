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
				<h1>Charts &amp; graphs</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
				<a href="#" class="current">Charts &amp; graphs</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box widget-plain">
							<div class="widget-content center">
								<ul class="stats-plain">
									<li>										
										<h4>36094</h4>
										<span>Total Visits</span>
									</li>
									<li>										
										<h4>1433</h4>
										<span>Users Registered</span>
									</li>
									<li>										
										<h4>8650</h4>
										<span>Completed Orders</span>
									</li>
									<li>										
										<h4>29</h4>
										<span>Pending Orders</span>
									</li>
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
									<i class="icon-signal"></i>
								</span>
								<h5>Line chart</h5>
							</div>
							<div class="widget-content">
								<div class="chart"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span6">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-signal"></i>
								</span>
								<h5>Bar chart</h5>
							</div>
							<div class="widget-content">
								<div class="bars"></div>
							</div>
						</div>
					</div>
					<div class="span6">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-signal"></i>
								</span>
								<h5>Pie chart</h5>
							</div>
							<div class="widget-content">
								<div class="pie"></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<div class="span4">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-eye-open"></i>
								</span>
								<h5>Browsers</h5>
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered table-striped table-hover">
									<thead>
										<tr>
											<th>Browser</th>
											<th>Visits</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Chrome</td>
											<td>8775</td>
										</tr>
										<tr>
											<td>Firefox</td>
											<td>5692</td>
										</tr>
										<tr>
											<td>Internet Explorer</td>
											<td>4030</td>
										</tr>
										<tr>
											<td>Opera</td>
											<td>1674</td>
										</tr>
										<tr>
											<td>Safari</td>
											<td>1166</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-arrow-right"></i>
								</span>
								<h5>Refferers</h5>
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered table-striped table-hover">
									<thead>
										<tr>
											<th>Site</th>
											<th>Visits</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><a href="#">http://google.com</a></td>
											<td>12679</td>
										</tr>
										<tr>
											<td><a href="#">http://bing.com</a></td>
											<td>11444</td>
										</tr>
										<tr>
											<td><a href="#">http://yahoo.com</a></td>
											<td>8595</td>
										</tr>
										<tr>
											<td><a href="#">http://www.something.com</a></td>
											<td>4445</td>
										</tr>
										<tr>
											<td><a href="#">http://else.com</a></td>
											<td>2094</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="span4">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-file"></i>
								</span>
								<h5>Most Visited Pages</h5>
							</div>
							<div class="widget-content nopadding">
								<table class="table table-bordered table-striped table-hover">
									<thead>
										<tr>
											<th>Page</th>
											<th>Visits</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><a href="#">Shopping cart</a></td>
											<td>9440</td>
										</tr>
										<tr>
											<td><a href="#">Blog</a></td>
											<td>6974</td>
										</tr>
										<tr>
											<td><a href="#">jQuery UI tips</a></td>
											<td>5377</td>
										</tr>
										<tr>
											<td><a href="#">100+ Free Icon Sets</a></td>
											<td>4990</td>
										</tr>
										<tr>
											<td><a href="#">How to use a Google Web Tools</a></td>
											<td>4834</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="row-fluid">
					<%@ include file="footer.inc" %>
				</div>
			</div>
		</div>

        <script src="<%=base %>js/excanvas.min.js"></script>
        <script src="<%=base %>js/jquery.min.js"></script>
        <script src="<%=base %>js/jquery-ui.custom.js"></script>
        <script src="<%=base %>js/bootstrap.min.js"></script>
        <script src="<%=base %>js/jquery.flot.min.js"></script>
        <script src="<%=base %>js/jquery.flot.pie.min.js"></script>
        <script src="<%=base %>js/jquery.flot.resize.min.js"></script>
        <script src="<%=base %>js/unicorn.js"></script>
        <script src="<%=base %>js/unicorn.charts.js"></script>
        <script src="<%=base %>js/slb.slb.js"></script>
	</body>
</html>
