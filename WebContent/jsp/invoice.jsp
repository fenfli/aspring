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
				<h1>Invoice</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="<%=base %>" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
				<a href="#">Sample Pages</a>
				<a href="#" class="current">Invoice</a>
			</div>
			<div class="container-fluid">
				
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th-list"></i>
								</span>
								<h5>Invoice</h5>
								<div class="buttons">
									<a title="Icon Title" class="btn btn-mini" href="#"><i class="icon-shopping-cart"></i> Pay Now</a>
									<a title="Icon Title" class="btn btn-mini" href="#"><i class="icon-print"></i> Print</a>
								</div>
							</div>
							<div class="widget-content">
								<div class="invoice-content">
									<div class="invoice-head">
										<div class="invoice-meta">
											Invoice <span class="invoice-number">#96558 </span><span class="invoice-date">Date: 2012-07-15</span>
										</div>
										<h5>Invoice Title/Subject</h5>
										<div class="invoice-to">
											<ul>
												<li>
												<span><strong>From</strong></span>
												<span>ANA Solutions</span>
												<span>244, Soranda Street,</span>
												<span>New Morleno.</span>
												</li>
											</ul>
										</div>
										<div class="invoice-from">
											<ul>
												<li>
												<span><strong>To</strong></span>
												<span>Mihaki Technologies</span>
												<span>233/44, Autumn Lane</span>
												<span>Treyan.</span>
												</li>
											</ul>
										</div>
									</div>
									<div>
										<table class="table table-bordered table-striped table-hover">
										<thead>
										<tr>
											<th>
												 Transaction Id
											</th>
											<th>
												 Title
											</th>
											<th>
												 Amount
											</th>
										</tr>
										</thead>
										<tfoot>
										<tr>
											<th class="total-label" colspan="2">
												 Total:
											</th>
											<th class="total-amount">
												 $920.00
											</th>
										</tr>
										</tfoot>
										<tbody>
										<tr>
											<td>
												 #43
											</td>
											<td>
												 Vivamus sed auctor nibh congue, ligula
											</td>
											<td>
												 $20.00
											</td>
										</tr>
										<tr>
											<td>
												 #44
											</td>
											<td>
												 Proin porttitor bibendum placerat.
											</td>
											<td>
												 $500.00
											</td>
										</tr>
										<tr>
											<td>
												 #45
											</td>
											<td>
												 Lorem ipsum dolor sit amet, consectetur.
											</td>
											<td>
												 $30.00
											</td>
										</tr>
										<tr>
											<td>
												 #46
											</td>
											<td>
												 Esta rata in doleur.
											</td>
											<td>
												 $30.00
											</td>
										</tr>
										<tr>
											<td>
												 #47
											</td>
											<td>
												 Larta mida eno mosque teria.
											</td>
											<td>
												 $340.00
											</td>
										</tr>
										</tbody>
										</table>
									</div>
									<p class="amount-word">
										Amount in Word: <span>Five Hundred and Fifty Taka Only</span>
									</p>
									<h5>A heading</h5>
									<p>
										Nam pharetra sodales tincidunt. Phasellus posuere faucibus tempus. Ut dapibus ullamcorper nulla, ac pellentesque purus tincidunt nec. Ut non leo nec erat venenatis pharetra.
									</p>
									<p class="help-block">
										<strong>Note:</strong> Nam pharetra sodales tincidunt. Phasellus posuere faucibus tempus. Ut dapibus ullamcorper nulla, ac pellentesque purus tincidunt nec. Ut non leo nec erat venenatis pharetra.
									</p>
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
        <script src="<%=base %>js/unicorn.js"></script>
        <script src="<%=base %>js/slb.slb.js"></script>
	</body>
</html>
