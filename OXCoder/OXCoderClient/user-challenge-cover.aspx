﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-challenge-cover.aspx.cs" Inherits="OXCoderClient.user_challenge_cover" %>
<%@ Import Namespace="OXCoder.DBModel" %>
<!DOCTYPE html>
<!-- saved from url=(0060)./user-challenge-cover.action?reid=1001 -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">

<title>猿圈 <%=challengeDetail.challengename %>—<%=challengeDetail.Company.companyname %>
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
<link href="./user-challenge-cover_files/style.css" rel="stylesheet" type="text/css">
<link href="Font-Awesome-3.2.1\css\font-awesome.min.css" rel="stylesheet">
<!-- Max css -->
<link href="./user-challenge-cover_files/style_new.css" rel="stylesheet" type="text/css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<!-- jQuery -->
<script src="./user-challenge-cover_files/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="./user-challenge-cover_files/flash.js"></script>
<script type="text/javascript" src="./user-challenge-cover_files/webcam.js"></script>
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body style="">
<input id="input-retype" type="hidden" value="6">
	<!-- 引入header -->
	

<div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="./index.aspx" style="padding: 0;"><img src="./user-challenge-cover_files/wlogo_sm.png" style="max-height: 35px; margin: 7px;"></a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li><a href="./index.aspx">首页</a></li>
				<li class="active"><a href="./user-recruit-list.aspx">挑战</a></li>
				<li><a href="./user-resume.aspx">个人中心</a></li>
			</ul>
			
				<ul class="nav navbar-nav navbar-right">
					
					<li class="dropdown"><a href="./user-challenge-cover.aspx?reid=1001" class="dropdown-toggle" data-toggle="dropdown"><span class="text">你好，</span> <%=Session["name"] %><b class="caret"></b></a>
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
										<div class="page-header" style="border-bottom: none;">
											<h1>
                                                <%=challengeDetail.challengename %>
												——
												<%=challengeDetail.Company.companyname %>
											</h1>
											<div class="challenge-simple-desc">
												<span class="desc-label">月薪： 
													<%=challengeDetail.salary %>
												     
												</span>
                                                <span class="desc-label">职位诱惑：
														<% string[] t = challengeDetail.Company.tag.Split(';');
                                                           for(int i = 0; i < t.Length-1; ++i) { 
                                                        %>
                                                        <%=t[i] %>
                                                        <%} %>
                                                </span> <span class="desc-label">时间： <%=((DateTime)challengeDetail.begintime).ToShortDateString() %> ~ <%=((DateTime)challengeDetail.endtime).ToShortDateString() %>
												</span> <span class="desc-label"><%=challengeDetail.codernum %>人已接受挑战</span>
												<p>
													
												</p>
											</div>
										</div>
										<!-- /.page-header -->
										<div id="Div1">
											<div class="row">
												<%foreach(ox_project p in challengeDetail.ProjectList) {%>
													<div class="col-md-4">
														<div class="panel panel-default project">
															<div class="panel-body">
																<div class="row">
																	<div class="col-xs-12">
																		<div class="pull-left">
																			<h4>
																				<a href="javascript:;"><%=p.projectname %></a>
																			</h4>
																			<h5 class="text-muted">
                                                                                <%=p.description %>
																			</h5>
																		</div>
																		<div class="pull-right client-info"></div>
																	</div>
																	<!-- /.col-xs-12 -->
																</div>
																<!-- /.row -->
																<hr>
																<h4>开发能力</h4>
																<div class="well">
																	<%=p.description %>
																</div>
															</div>
															<!-- /.panel-body -->
															<div class="panel-footer">
																<div class="row">
																	<div class="col-sm-4">
																		<span class="small muted">项目难度</span>
																	</div>
																	<!-- /.col-sm-4 -->
																	<div class="col-sm-8">
																		<p>
                                                                            <%for(int i=0; i<challengeDetail.challengelevel; ++i) {%>
                                                                            <i class="icon-star"></i>
                                                                            <%} %>
																		</p>
																	</div>

																	<!-- /.col-sm-8 -->
																</div>
																<!-- /.row -->

															</div>
															<!-- /.panel-footer -->
														</div>
														<!-- /.panel -->

													</div>
												
												<%} %>	
												
											</div>
										</div>
									</section>
								</div>
								
									<div style="text-align: center;" class="col-md-12">
									
									 <a id="btn-run-not-sub" href="./coding-page.aspx?reid=<%=challengeDetail.challengeid %>"><button class="btn btn-new1">开始挑战</button></a>
									
									
										 
									</div>
								
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


	<!-- Bootstrap core JavaScript -->
	<script src="./user-challenge-cover_files/bootstrap.min.js"></script>

	<!-- Sparkline -->
	<script src="./user-challenge-cover_files/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./user-challenge-cover_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./user-challenge-cover_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./user-challenge-cover_files/bootstrap-filestyle.js"></script>

	<!-- Summernote -->
	<script src="./user-challenge-cover_files/summernote.min.js"></script>

	<!-- Theme script -->
	<script src="./user-challenge-cover_files/script.js"></script>
	<!-- 引入footer -->
	

    <div class="afooter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="./contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./user-challenge-cover_files/pic.gif"></a></span><script src="./user-challenge-cover_files/z_stat.php" type="text/javascript"></script><script src="./user-challenge-cover_files/core.php" charset="utf-8" type="text/javascript"></script>
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
