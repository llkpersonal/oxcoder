<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recruit-project-detail.aspx.cs" Inherits="OXCoderClient.rescruit_project_detail" %>
<%@ import Namespace="OXCoder.DBModel" %>

<!DOCTYPE html>
<!-- saved from url=(0070)http://www.oxcoder.com/recruit-project-detail.action?pid=240&reid=1429 -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">
<title>猿圈 排列组合项目介绍
</title>

<!-- Bootstrap core CSS -->
<link href="http://www.oxcoder.com/bootstrap/css/bootstrap.min.css?v=3.1.1" rel="stylesheet">

<!-- Font Awesome CSS -->
<link href="http://www.oxcoder.com/fonts/font-awesome/css/font-awesome.min.css?v=4.0.3" rel="stylesheet">

<!-- Bootstrap Switch -->
<link href="http://www.oxcoder.com/css/libs/bootstrap-switch.min.css?v=3.0.0" rel="stylesheet">

<!-- Bootstrap Select -->
<link href="http://www.oxcoder.com/css/libs/bootstrap-select.min.css" rel="stylesheet">

<!-- IcoMoon CSS -->
<link href="http://www.oxcoder.com/fonts/icomoon/style.css?v=1.0" rel="stylesheet">

<!-- Summernote -->
<link href="http://www.oxcoder.com/css/libs/summernote.css" rel="stylesheet">
<link href="http://www.oxcoder.com/css/libs/summernote-bs3.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="./recruit-project-detail_files/style.css" rel="stylesheet" type="text/css">

<!-- Max css -->
<link href="./recruit-project-detail_files/style_new.css" rel="stylesheet" type="text/css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<style type="text/css"></style><style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style><script type="text/javascript" src="chrome-extension://aadgmnobpdmgmigaicncghmmoeflnamj/ng-inspector.js"></script></head>
<body>
	<!-- 引入header -->
	

<div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="./index.aspx" style="padding: 0;"><img src="./recruit-project-detail_files/wlogo_sm.png" style="max-height: 35px; margin: 7px;"></a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li><a href="./index.aspx">首页</a></li>
				<li class="active"><a href="./user-recruit-list.aspx">挑战</a></li>
				
				
				<li><a href="./user-resume.aspx">个人中心</a></li>
			</ul>
			
				<ul class="nav navbar-nav navbar-right">
					
					<li class="dropdown"><a href="./user-recruit-list.aspx" class="dropdown-toggle" data-toggle="dropdown"><span class="text">你好，</span> <%=Session["name"] %><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="./user-to-change-pwd.aspx">修改密码</a></li>
							<li><a href="./logout.aspx">注销</a></li>
						</ul></li>
				</ul>
			
		</div>
	</div>
</div>
<script type="text/javascript">
    function validateSession() {
        var k = 1
        if (k == null) {
            location.replace("session-timeout-log.aspx");
        }
    }
</script>
	<div class="container">
		<div class="row">

			<div class="col-md-12">
				<section>

					<div id="content">
						<div class="row">

							<div class="col-md-12">

								<div class="container-fluid">
									<section>

										<div class="page-header">
											<h1>
												<span class="text-muted">项目介绍:</span>
												<%=projectDetail.projectname %>
											</h1>
											<small><a href="./user-recruit-list.aspx"><i class="imoon imoon-arrow-left2"></i> 返回 我的挑战 </a> </small>
										</div>

										<div id="Div1">
											<div class="row">

												<div class="col-lg-12">

													<div class="panel panel-ourline">
														<div class="panel-body">


															<div class="row">
																<div class="col-md-6"></div>
																<div class="col-md-12 col-sm-12 align-center">
																	<div>
																		<i class="fa fa-5x fa-rocket text-primary"></i>
																		<h2 class="text-primary">项目目标</h2>
																		<p><%=projectDetail.description %></p>
																		
																		<br>
																	</div>
																	<!-- /.box -->
																</div>
																<!-- /.col-md-4 -->

															</div>

															<div class="row">
																<div class="col-md-4 col-sm-6 align-center">
																	<div class="box">
																		<i class="fa fa-5x fa-check-square-o text-success"></i>
																		<h4>
																			<a href="./recruit-project-detail.aspx?pid=240&reid=1429#">知识点</a>
																		</h4>
																		<ul class="list-unstyled align-left">
																			<li title="">
																				<%=projectDetail.description %>
																			</li>
																		</ul>
																	</div>
																	<!-- /.box -->
																</div>
																<!-- /.col-md-3 -->

																<div class="col-md-4 col-sm-6 align-center">
																	<div class="box">
																		<i class="fa fa-5x fa-terminal text-warning"></i>
																		<h4>
																			<a href="./recruit-project-detail.aspx?pid=240&reid=1429#">开发能力</a>
																		</h4>
																		<p class="align-left">
																			<%=projectDetail.description %>
																		</p>
																	</div>
																	<!-- /.box -->
																</div>
																<!-- /.col-md-3 -->

																<div class="col-md-4 col-sm-6 align-center">
																	<div class="box">
																		<i class="fa fa-5x fa-thumbs-o-up text-info"></i>
																		<h4>
																			<a href="./recruit-project-detail.aspx?pid=240&reid=1429#">难度</a>
																		</h4>
																		<p>
																					<i class="fa fa-star"></i>
																				
																					<i class="fa fa-star"></i>
																				
																					<i class="fa fa-star"></i>
																				
																			
																			
																		</p>
																	</div>
																	<!-- /.box -->
																</div>
																<!-- /.col-md-3 -->

															</div>

															


														</div>
														<!-- /.panel-body -->
													</div>
													<!-- /.panel -->

												</div>

											</div>
											<!-- /.row -->
										</div>
										<!-- /#content -->

									</section>
								</div>
								<!-- /.container-fluid  -->
							</div>
							


						</div>
						<!-- /.row -->
					</div>
					<!-- /#content -->

				</section>
			</div>


		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->

	<!-- 在线展示Android项目 -->
	<div id="show-android" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" style="width: 490px">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Android项目展示</h4>
				</div>
				<div class="modal-body">
					<iframe src="./recruit-project-detail_files/BiaoBai.html" frameborder="0" height="600px" width="380px;"> 这里本应该是一个Android效果的展示 </iframe>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	<script src="./recruit-project-detail_files/jquery-1.11.0.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="./recruit-project-detail_files/bootstrap.min.js"></script>

	<!-- Sparkline -->
	<script src="./recruit-project-detail_files/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./recruit-project-detail_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./recruit-project-detail_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./recruit-project-detail_files/bootstrap-filestyle.js"></script>



	<!-- Summernote -->
	<script src="./recruit-project-detail_files/summernote.min.js"></script>

	<!-- Theme script -->
	<script src="./recruit-project-detail_files/script.js"></script>

	<!-- 引入footer -->
	

    <div class="afooter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./recruit-project-detail_files/pic.gif"></a></span><script src="./recruit-project-detail_files/z_stat.php" type="text/javascript"></script><script src="./recruit-project-detail_files/core.php" charset="utf-8" type="text/javascript"></script>
                </div>
            </div>
            
        </div>
    </div>
<script type="text/javascript">

    //如果页面内容高度小于屏幕高度，div#footer将绝对定位到屏幕底部，否则div#footer保留它的正常静态定位
    if (($(document.body).height() + 50) < $(window).height()) {
        $(".afooter").addClass("navbar-fixed-bottom");
    };
</script>


</body></html>
