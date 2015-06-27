﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="enterprise-info.aspx.cs" Inherits="OXCoderClient.enterprise_info" %>

<!DOCTYPE html>
<!-- saved from url=(0042)http://www.oxcoder.com/enterprise-info.htm -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">

<title>猿圈 你好的企业信息
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
<link href="./enterprise-info_files/style.css" rel="stylesheet" type="text/css">

<!-- Max css -->
<link href="./enterprise-info_files/style_new.css" rel="stylesheet" type="text/css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body style="">
	<!-- 引入header -->
	

<div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">

	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/index.htm" style="padding: 0;"><img src="./enterprise-info_files/wlogo_sm.png" style="max-height: 35px;margin:7px;"></a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li><a href="http://www.oxcoder.com/hr-recruit-list.htm">挑战管理</a></li>
				<li><a href="http://www.oxcoder.com/recommend-user.htm">人才推荐</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				
				<li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><span class="text">你好</span> <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="http://www.oxcoder.com/hr-payment-info.htm">账户余额</a></li>
						<li><a href="./enterprise-info_files/enterprise-info.html">企业信息</a></li>
						<li><a href="http://www.oxcoder.com/hr-to-change-pwd.htm">修改密码</a></li>
						<li><a href="http://www.oxcoder.com/logout.htm">注销</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript">
    function validateSession() {
        var k = 2
        if (k == null) {
            location.replace("session-timeout-log.htm");
        }
    }
</script>
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-no-left-padding">
				<section class="middle">
					<h2 class="col-md-12">
						<i class="fa  fa-th-large"></i>
						你好
						进行中的挑战
					</h2>
					
					
						
							<div class="col-md-4">
								<section id="middle">
									<div class="panel panel-default shadow-effect">
										<div class="col-xs-12 panel-header">
											<div class="pull-left">
												<h4 class="line-control">
													<a href="javascript:;">[初级]Java工程师</a>
												</h4>
												<h4 class="line-control">
													<a href="javascript:;">你好</a>
												</h4>
											</div>
											<div class="pull-right client-info">
												<span class="percent text-danger"><img class="img-circle" style="width: 60px; height: 60px" src="./enterprise-info_files/998.jpeg"></span>
											</div>
											
										</div>

										<div class="panel-body ">
											<ul class="list-unstyled">
												<li>月薪： 
													
													2k~5k
												     
												</li>
												<li>职位诱惑：</li>
												<li>
													<ul class="companyTags">
														<!-- <li>弹性工作</li>
														<li>技能培训</li>
														<li>节日礼物</li> -->
														
															<li>帅哥多</li>
														
															<li>美女多</li>
														
															<li>领导好</li>
														
													</ul>
												</li>
												<li>挑战项目：</li>
												<li>
													<ul>
														
															<li><a href="http://www.oxcoder.com/enterprise-info.htm#">日期比较</a></li>
														
															<li><a href="http://www.oxcoder.com/enterprise-info.htm#">10000以内完美数</a></li>
														
															<li><a href="http://www.oxcoder.com/enterprise-info.htm#">数组排成较小的数</a></li>
														
													</ul>
												</li>
												<li>难度： 
														
														
														
															<i class="fa fa-star"></i>
														
													
												</li><li><i class="fa fa-calendar"></i>
												2015-05-07~2015-05-07</li>
												<li><i class="fa fa-user"></i>
												0人已接受挑战</li>
											</ul>
										</div>
										<!-- /.panel-body -->
										
										<!-- /.panel-footer -->
									</div>
								</section>
							</div>
						
					
				</section>
			</div>

			<div class="col-md-3">
				<section id="Section1">
					<div class="panel panel-default resume-block">

						<div class="panel-body">
							<h2 class="grey">
								<img src="./enterprise-info_files/998.jpeg" height="40px" width="40px;">
								你好
							</h2>
							<p>
								<span class="resume-label">你好</span>
							</p>
							<p>
								<span class="resume-label">地点:北京-东城区</span> <span class="resume-label">规模:
									少于15人     
								</span>
							</p>
							<p>
								<span class="resume-label">公司网址:<a href="http:"></a></span>
							</p>
							<ul class="companyTags">
								<!-- <li>弹性工作</li>
													<li>技能培训</li>
													<li>节日礼物</li> -->
								
									<li>帅哥多</li>
								
									<li>美女多</li>
								
									<li>领导好</li>
								
							</ul>
							<p class="pull-right">
								<a href="http://www.oxcoder.com/enterprise-info-change.action" class="resume-action">编辑</a>
							</p>
						</div>
						<!-- /.panel-body -->
					</div>
					<div class="panel panel-default resume-block">

						<div class="panel-body">
							<h3>
								<i class="fa fa-align-left"></i> 公司简介
							</h3>
							<p>
								很棒
								
								
							</p>
							<p class="pull-right">
								<a href="http://www.oxcoder.com/enterprise-info-change.action" class="resume-action">编辑</a>
							</p>
						</div>
						<!-- /.panel-body -->
					</div>

				</section>
			</div>
			
				<div class="col-md-12">
					<section id="Section2">
						<ul class="pagination">
							
								<li class="disabled"><a href="javascript:;">«</a></li>
							
							
							 <li class="active"><a>1</a></li>

							
								<li class="disabled"><a href="javascript:;">»</a></li>
							
							
						</ul>
					</section>
				</div>
			
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->


	<!-- jQuery -->
	<script src="./enterprise-info_files/jquery-1.11.0.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="./enterprise-info_files/bootstrap.min.js"></script>

	<!-- Sparkline -->
	<script src="./enterprise-info_files/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./enterprise-info_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./enterprise-info_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./enterprise-info_files/bootstrap-filestyle.js"></script>

	<!-- Summernote -->
	<script src="./enterprise-info_files/summernote.min.js"></script>

	<!-- Theme script -->
	<script src="./enterprise-info_files/script.js"></script>
	<!-- 引入footer -->
	

    <div class="afooter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./enterprise-info_files/pic.gif"></a></span><script src="./enterprise-info_files/z_stat.php" type="text/javascript"></script><script src="./enterprise-info_files/core.php" charset="utf-8" type="text/javascript"></script>
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