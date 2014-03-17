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
				<h1>Gallery</h1>
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
				<a href="#" class="current">Gallery</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-picture"></i>
								</span>
								<h5>Gallery</h5>
							</div>
							<div class="widget-content">
								<div class="gallery-masonry">
                                    <div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img1.jpg" alt="">
										</a>
										<div class="actions">
											<a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
								    </div>
                                    <div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img2.jpg" alt="">
										</a>
										<div class="actions">
											<a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
							         </div>
                                     <div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img3.jpg" alt="">
										</a>
										<div class="actions">
											<a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
								    </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img4.jpg" alt="">
										</a>
										<div class="actions">
											<a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
								    </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img5.jpg" alt="">
										</a>
										<div class="actions">
											<a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
								    </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img6.jpg" alt="">
										</a>
										<div class="actions">
											<a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
							         </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img7.jpg" alt="">
										</a>
										<div class="actions">
											<a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
								    </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img8.jpg" alt="">
										</a>
										<div class="actions">
											<a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
								    </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img9.jpg" alt="">
										</a>
										<div class="actions">
                                            <a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
								    </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img10.jpg" alt="">
										</a>
										<div class="actions">
                                            <a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
								    </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img11.jpg" alt="">
										</a>
										<div class="actions">
                                            <a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
								    </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img12.jpg" alt="">
										</a>
										<div class="actions">
                                            <a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
							         </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img13.jpg" alt="">
										</a>
										<div class="actions">
                                            <a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
							         </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img14.jpg" alt="">
										</a>
										<div class="actions">
                                            <a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
							         </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img15.jpg" alt="">
										</a>
										<div class="actions">
				                            <a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
								    </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img16.jpg" alt="">
										</a>
										<div class="actions">
								            <a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
								    </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img17.jpg" alt="">
										</a>
										<div class="actions">
											<a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
								    </div><div class="item">
										<a href="#" class="thumbnail">
											<img src="<%=base %>img/demo/img18.jpg" alt="">
										</a>
                                        
										<div class="actions">
											<a title="Edit" href="#" class="tip-top"><i class="icon-pencil icon-white"></i></a>
											<a title="Remove" href="#" class="tip-top"><i class="icon-remove icon-white"></i></a>
										</div>
								    </div>
                                </div>
                                <span style="font-size: 10px; color: #888888;">All Images licensed under <a href="http://creativecommons.org/licenses/by-nd/2.0/deed.en">Creative Commons BY-ND 2.0</a>, <a href="http://www.flickr.com/photos/sbl83/">stilettobootlover_83's</a></span>
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
		<script src="<%=base %>js/jquery.masonry.min.js"></script>
		<script src="<%=base %>js/unicorn.js"></script>
		<script src="<%=base %>js/slb.slb.js"></script>
		<script>
			$(function() {
				$('.gallery-masonry').masonry({
					itemSelector : '.item',
					isAnimated : true,
					isFitWidth : true
				});
			});
		</script>
	</body>
</html>
