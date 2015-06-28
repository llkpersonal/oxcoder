﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hr-recruit-resume-list.aspx.cs" Inherits="OXCoderClient.hr_recruit_resume_list" %>

<!DOCTYPE html>
<!-- saved from url=(0082)http://www.oxcoder.com/hr-recruit-resume-list.action?reid=1560&searchOrder=ranking -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">

<title>猿圈 挑战管理</title>

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
<link href="./hr-recruit-resume-list_files/style.css" rel="stylesheet" type="text/css">

<!-- Max css -->
<link href="./hr-recruit-resume-list_files/style_new.css" rel="stylesheet" type="text/css">

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
			<a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/index.htm" style="padding: 0;"><img src="./hr-recruit-resume-list_files/wlogo_sm.png" style="max-height: 35px;margin:7px;"></a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="active"><a href="http://www.oxcoder.com/hr-recruit-list.htm">挑战管理</a></li>
				<li><a href="http://www.oxcoder.com/recommend-user.htm">人才推荐</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				
				<li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><span class="text"><%=cname %></span> <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="http://www.oxcoder.com/hr-payment-info.htm">去打赏</a></li>
						<li><a href="http://www.oxcoder.com/enterprise-info.htm">企业信息</a></li>
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
			<div class="col-md-12">
				<div class="col-xs-12 col-no-left-padding">
					<h1 class="pull-left">
						<%=challengename %>
						挑战的筛选页面
					</h1>
					
						<a href="./hr-recruit-switch.aspx?challengeid=<%=challengeid %>&status=<%=status %>"><button class="btn btn-new1 pull-right" style="margin-top: 20px;"><%if (status == 0){ %>开启该挑战<%} else{ %>关闭该挑战<%} %> </button></a>
					
					
				</div>
				<small> <a href="./hr-recruit-list.aspx?flag=<%=flag %>"><i class="imoon imoon-arrow-left2"></i> 返回 </a>
					</small>
			</div>

			<div class="col-md-12">
				<div class="challenge-simple-desc">
					<span class="desc-label">发起时间：<%=starttime %></span> <span class="desc-label">接受挑战：<%=acceptnum %></span>
					<span class="desc-label">完成挑战：<%=finishnum %></span> <span class="desc-label">所选项目： 
							<%=projectname %>
	                        
					</span>
				</div>
			</div>

			
				<div class="col-md-12" style="margin-bottom: 20px;">
					<div class="alert alert-info" style="text-align: center" role="alert">当前分类下还没有人才报告</div>
				</div>
			
			
			


		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="./hr-recruit-resume-list_files/jquery-1.11.0.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="./hr-recruit-resume-list_files/bootstrap.min.js"></script>

	<!-- Sparkline -->
	<script src="./hr-recruit-resume-list_files/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./hr-recruit-resume-list_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./hr-recruit-resume-list_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./hr-recruit-resume-list_files/bootstrap-filestyle.js"></script>

	<!-- Summernote -->
	<script src="./hr-recruit-resume-list_files/summernote.min.js"></script>

	<!-- Theme script -->
	<script src="./hr-recruit-resume-list_files/script.js"></script>
	<!-- 引入footer -->
	

    <div class="afooter navbar-fixed-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./hr-recruit-resume-list_files/pic.gif"></a></span><script src="./hr-recruit-resume-list_files/z_stat.php" type="text/javascript"></script><script src="./hr-recruit-resume-list_files/core.php" charset="utf-8" type="text/javascript"></script>
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