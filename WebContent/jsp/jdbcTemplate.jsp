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
		<link rel="stylesheet" href="<%=base %>css/uniform.css" />
		<link rel="stylesheet" href="<%=base %>css/select2.css" />		
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
				<h1>JdbcTemplate</h1>
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
				<a href="#" class="current">JdbcTemplate</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
								<h5>User Save</h5>
							</div>
							<div class="widget-content nopadding">
								<form class="form-horizontal" method="post"  name="saveform" id="saveform" novalidate="novalidate">
                                    <div class="control-group">
                                        <label class="control-label">UserCode(<=6)</label>
                                        <div class="controls">
                                            <input type="text" name="usercode" id="usercode">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">UserName</label>
                                        <div class="controls">
                                            <input type="text" name="username" id="username">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">PassWord</label>
                                        <div class="controls">
                                            <input type="password" name="password" id="password">
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <label class="control-label">State</label>
                                        <div class="controls">
											<label><input type="radio" name="state" checked="checked" value="A"/> A</label>
											<label><input type="radio" name="state" value="X"/> X</label>
										</div>
                                    </div>
                                    <div class="form-actions" id="saveaction">
                                        <input id="save" type="submit" value="Save" class="btn btn-primary">
                                    </div>
                                </form>
							</div>
						</div>			
					</div>
				</div>
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
								<h5>User Query List</h5>
							</div>
							<div class="widget-content nopadding">
								<form class="form-horizontal" method="post" name="queryform" id="queryform" novalidate="novalidate">
									<div class="form-actions">
                                        <input id="query" type="button" value="Query" class="btn btn-primary">
                                    </div>
									<div class="control-group">
										<table class="table table-bordered table-striped table-hover">
											<thead>
												<tr>
													<th>ID</th>
													<th>Code</th>
													<th>Name</th>
													<th>State</th>
												</tr>
											</thead>
											<tbody id="show">
											</tbody>
										</table>
									</div>
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
        <script src="<%=base %>js/jquery.uniform.js"></script>
        <script src="<%=base %>js/select2.min.js"></script>
        <script src="<%=base %>js/jquery.validate.js"></script>
        <script src="<%=base %>js/unicorn.js"></script>
        <script src="<%=base %>js/slb.jdbctemplate.js"></script>
        <script src="<%=base %>js/slb.slb.js"></script>
        <script>
        	var baseUrl = "<%=base %>";
        </script>
	</body>
</html>
