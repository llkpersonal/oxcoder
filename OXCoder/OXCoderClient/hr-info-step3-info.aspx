<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hr-info-step3-info.aspx.cs" Inherits="OXCoderClient.hr_info_step3_info" %>
<!DOCTYPE html>
<!-- saved from url=(0147)http://www.oxcoder.com/hr-info-step3-sub.action?tagstr=%E9%A2%86%E5%AF%BC%E5%A5%BD-%E4%BA%A4%E9%80%9A%E8%A1%A5%E5%8A%A9-%E7%BE%8E%E5%A5%B3%E5%A4%9A -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">

<title>猿圈 你好企业完善企业信息
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
<link href="./hr-info-step3-sub_files/style.css" rel="stylesheet" type="text/css">

<!-- Max css -->
<link href="./hr-info-step3-sub_files/style_new.css" rel="stylesheet" type="text/css">

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
			<a class="navbar-brand hidden-sm" href="./index.html" style="padding: 0;"><img src="./hr-info-step3-sub_files/wlogo_sm.png" style="max-height: 35px;margin:7px;"></a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li><a href="./hr-recruit-list.html">挑战管理</a></li>
				<li><a href="./recommend-user.html">人才推荐</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				
				<li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><span class="text">你好</span> <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="./hr-payment-info.html">账户余额</a></li>
						<li><a href="./enterprise-info.html">企业信息</a></li>
						<li><a href="./hr-to-change-pwd.html">修改密码</a></li>
						<li><a href="./logout.html">注销</a></li>
					</ul></li>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript">
    function validateSession() {
        var k = 2
        if (k == null) {
            location.replace("session-timeout-log.html");
        }
    }
</script>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
				<div id="content">
					<div class="row">
						<img src="./hr-info-step3-sub_files/corp_step3.png">

						<div class="form-group form-actions" style="margin-top: 40px;">
							<p class="grey">您已填写完企业基本信息，现在可以去新增挑战邀请了呦~~</p>
							<a href="./hr-new-recruit.action"><button type="button" class="btn btn-new1 btn-lg" style="border-radius: 3px;">新增挑战邀请</button></a>

						</div>

					</div>
					<!-- /.row -->
				</div>
			</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="./hr-info-step3-sub_files/jquery-1.11.0.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="./hr-info-step3-sub_files/bootstrap.min.js"></script>

	<!-- Sparkline -->
	<script src="./hr-info-step3-sub_files/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./hr-info-step3-sub_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./hr-info-step3-sub_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./hr-info-step3-sub_files/bootstrap-filestyle.js"></script>

	<!-- Summernote -->
	<script src="./hr-info-step3-sub_files/summernote.min.js"></script>

	<!-- Theme script -->
	<script src="./hr-info-step3-sub_files/script.js"></script>

	<!-- 引入footer -->
	

    <div class="afooter navbar-fixed-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./hr-info-step3-sub_files/pic.gif"></a></span><script src="./hr-info-step3-sub_files/z_stat.php" type="text/javascript"></script><script src="./hr-info-step3-sub_files/core.php" charset="utf-8" type="text/javascript"></script>
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