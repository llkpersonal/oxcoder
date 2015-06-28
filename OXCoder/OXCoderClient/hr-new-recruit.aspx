<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hr-new-recruit.aspx.cs" Inherits="OXCoderClient.hr_new_recruit" %>

<!DOCTYPE html>
<!-- saved from url=(0044)http://www.oxcoder.com/hr-new-recruit.action -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">

<title>猿圈新增挑战邀请</title>

<!-- Bootstrap core CSS -->
<link href="http://www.oxcoder.com/bootstrap/css/bootstrap.min.css?v=3.1.1" rel="stylesheet">

<!-- Font Awesome CSS -->
<link href="http://www.oxcoder.com/fonts/font-awesome/css/font-awesome.min.css?v=4.0.3" rel="stylesheet">
<link href="Font-Awesome-3.2.1\css\font-awesome.min.css" rel="stylesheet">

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
<link href="./hr-new-recruit_files/style.css" rel="stylesheet" type="text/css">

<!-- Max css -->
<link href="./hr-new-recruit_files/style_new.css" rel="stylesheet" type="text/css">

<link rel="stylesheet" href="http://www.oxcoder.com/css/libs/bootstrapValidator.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<style type="text/css">
.level-tag {
	border: 1px solid #efefef;
}

.active .panel {
	background-color: #eee;
}
@media (min-width: 768px){
 .fivecolumns .col-md-2, .fivecolumns .col-sm-2, .fivecolumns .col-lg-2 {
  width: 20%;
  *width: 20%;
 }
}
@media (min-width: 1200px) {
 .fivecolumns .col-md-2, .fivecolumns .col-sm-2, .fivecolumns .col-lg-2 {
  width: 20%;
  *width: 20%;
 }
}
@media (min-width: 768px) and (max-width: 979px) {
 .fivecolumns .col-md-2, .fivecolumns .col-sm-2, .fivecolumns .col-lg-2 {
  width: 20%;
  *width: 20%;
 }
}
</style>
<link href="./hr-new-recruit_files/WdatePicker.css" rel="stylesheet" type="text/css"><style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body style="">

	<!-- 引入header -->
	

<div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">

	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/index.htm" style="padding: 0;"><img src="./hr-new-recruit_files/wlogo_sm.png" style="max-height: 35px;margin:7px;"></a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="active"><a href="http://www.oxcoder.com/hr-recruit-list.htm">挑战管理</a></li>
				<li><a href="http://www.oxcoder.com/recommend-user.htm">人才推荐</a></li>
			</ul>
			<!--#include file="hr-header.aspx"-->
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
				<section>
					<div id="content">
						<div class="row">
							<div class="col-md-9 profile-stream">

								<div class="page-header row">
									<div class="col-md-8 col-no-left-padding">
										<h3>新增挑战邀请</h3>
									</div>
								</div>
								<div class="page-body">
									<div class="row">
										<div style="text-align: center; margin-bottom: 20px;">
											<img src="./hr-new-recruit_files/new_c1.png">
										</div>
										<form id="defaultForm" method="post" class="form-horizontal" action="./hr-sub-new-recruit.aspx" onsubmit="return checkForm()">
											<input type="hidden" name="relevel" value="1" id="input-relevel"> <input type="hidden" name="retype" value="0" id="input-retype"> <input type="hidden" name="republic" value="1" id="input-republic">
												<input type="hidden" name="recamera" value="0" id="input-recamera">
											<h4 class="col-md-12 col-no-left-padding">请选择挑战类型</h4>
											<div class="fivecolumns">
												<div class="col-md-3 col-no-left-padding test">
													<a id="a-java" href="#" data-toggle="pill">
														<div class="panel panel-default shadow-effect ">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																	<img src="./hr-new-recruit_files/java.png">
																		Java
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-md-3 col-no-left-padding test">
													<a id="a-android" href="#" data-toggle="pill">
														<div class="panel panel-default shadow-effect">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																		<img src="./hr-new-recruit_files/android.png">
																		Android
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-md-3 col-no-left-padding test">
													<a id="a-ios" href="#" data-toggle="pill">
														<div class="panel panel-default shadow-effect">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																		<img src="./hr-new-recruit_files/apple.png">
																		iOS
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-md-3 col-no-left-padding test">
													<a id="a-c" href="#" data-toggle="pill">
														<div class="panel panel-default shadow-effect ">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																		<img style="width:64px;height:64px" src="./hr-new-recruit_files/c.png">
																		C语言(BETA)
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-md-3 col-no-left-padding test">
													<a id="a-cpp" href="#" data-toggle="pill">
														<div class="panel panel-default shadow-effect ">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																		<img src="./hr-new-recruit_files/cpp.png">
																		C++(BETA)
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-md-3 col-no-left-padding test">
													<a id="a-php" href="#" data-toggle="pill">
														<div class="panel panel-default shadow-effect ">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																		<img src="./hr-new-recruit_files/php.png">
																		PHP(BETA)
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-md-3 col-no-left-padding test">
													<a id="a-python" href="#" data-toggle="pill">
														<div class="panel panel-default shadow-effect ">
															<div class="panel-body">
																<div class="row" style="text-align: center;">
																	<h3>
																		<img src="./hr-new-recruit_files/python.png">
																		Python(BETA)
																	</h3>
																</div>
															</div>
														</div>
													</a>
												</div>
												
											</div>
											
											<h4 class="col-md-12 col-no-left-padding">请选择挑战等级(按薪资划分）</h4>

											<ul class="nav nav-pills nav-justified col-md-12 col-no-left-padding">
												<li class="level-tag" relevel="1"><a href="#" data-toggle="pill">2k~5k</a></li>
												<li class="level-tag" relevel="2"><a href="#" data-toggle="pill">5k~8k</a></li>
												<li class="level-tag" relevel="3"><a href="#" data-toggle="pill">8k~10k</a></li>
												<li class="level-tag" relevel="4"><a href="#" data-toggle="pill">10k~12k</a></li>
												<li class="level-tag" relevel="5"><a href="#" data-toggle="pill">12k~15k</a></li>
												<li class="level-tag" relevel="6"><a href="#" data-toggle="pill">15k以上</a></li>
											</ul>
											<h4 class="col-md-12 col-no-left-padding"><input name="recamera" value="1" id="check-camera" type="checkbox">使用随机拍照功能</h4>
                                                    <span class="col-md-12 col-no-left-padding text-muted">使用该功能后，将开启参加挑战人员的摄像头，保证人员的真实性，但会在一定程度上减少参加挑战的人数。</span>
											<h4 class="col-md-12 col-no-left-padding">
												<input name="republic" value="1" id="check-public" type="checkbox" checked="checked">设为公开挑战
											</h4>
											<span class="col-md-12 col-no-left-padding text-muted">选择公开挑战，您发布的挑战将在首页显示，猿圈用户的可自由开始挑战；若不选择，用户只有您邀请后才可开始挑战。</span>

											<div class="col-md-12 col-no-left-padding form-group form-actions">
												<span class="help-block has-error" style="margin-left: 20px; display: none;" id="hint1">
													<small class="help-block">请选择挑战类型及等级</small>
												</span>
												<div class="align-center">
													<button id="nextStep" class="btn btn-new1" type="submit">保存&amp;下一步
													</button>

													<!--  <button type="reset" class="btn btn-warning">重置 <i class="icon-repeat"></i></button>-->
												</div>
											</div>
										</form>
										<hr>
										<div class="row"></div>

									</div>
									<!--/.row   -->
								</div>

							</div>
							<!-- 引入right -->
							

<div class="col-md-3 profile-info">
	<div class="panel-user">
		<div class="panel-heading">
			<div class="panel-title">
				<div class="media">
					<a class="pull-left"> <img src="./hr-new-recruit_files/1082.jpg" class="media-object">
					</a>
					<div class="media-body">
						<h4 class="media-heading">
							<!-- <span class="welcome">Hello</span> -->
							<span><%=cname %> </span>
						</h4>
						<span class="text-muted"><small>上次登录日期: <br> 2015-05-22 20:02:45
						</small> </span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="panel panel-outline panel-no-padding hidden-xs">
		<div class="panel-body">
			<div class="stat-block stat-danger">
				<div class="icon">
					<b class="icon-cover"></b> <i class="icon-bell"></i>
				</div>
				<div class="details">
					<div class="number">
						0
					</div>
					<div class="description">今日接受挑战人数</div>
				</div>
			</div>
			<div class="stat-block stat-success">
				<div class="icon">
					<b class="icon-cover"></b> <i class="icon-bar-chart-o"></i>
				</div>
				<div class="details">
					<div class="number">
						0
					</div>
					<div class="description">今日完成挑战人数</div>
				</div>
			</div>
			<div class="stat-block stat-primary">
				<div class="icon">
					<b class="icon-cover"></b> <i class="icon-tachometer"></i>
				</div>
				<div class="details">
					<div class="number">
						0
					</div>
					<div class="description">共帮您识别的人才</div>
				</div>
			</div>
		</div>
		<!-- /.panel-body -->
	</div>
	<!-- /.panel -->
</div>
							<!-- 							<div class="col-md-3 profile-info"> -->
							<!-- 								<div class="panel-user"> -->
							<!-- 									<div class="panel-heading"> -->
							<!-- 										<div class="panel-title"> -->
							<!-- 											<div class="media"> -->
							<!-- 												<a class="pull-left"> <img -->
							
							<!-- 													class="media-object"> -->
							<!-- 												</a> -->
							<!-- 												<div class="media-body"> -->
							<!-- 													<h4 class="media-heading"> -->
							<!-- 														<span class="welcome">Hello</span> -->
							
							<!-- 													</h4> -->
							
							
							
							<!-- 												</div> -->
							<!-- 											</div> -->
							<!-- 										</div> -->
							<!-- 									</div> -->
							<!-- 								</div> -->

							<!-- 								<div class="panel panel-outline panel-no-padding hidden-xs"> -->
							<!-- 									<div class="panel-body"> -->
							<!-- 										<div class="stat-block stat-danger"> -->
							<!-- 											<div class="icon"> -->
							<!-- 												<b class="icon-cover"></b> <i class="icon-bell"></i> -->
							<!-- 											</div> -->
							<!-- 											<div class="details"> -->
							<!-- 												<div class="number"> -->
							
							<!-- 												</div> -->
							<!-- 												<div class="description">今日收到的新挑战报告</div> -->
							<!-- 											</div> -->
							<!-- 										</div> -->
							<!-- 										<div class="stat-block stat-success"> -->
							<!-- 											<div class="icon"> -->
							<!-- 												<b class="icon-cover"></b> <i class="icon-bar-chart-o"></i> -->
							<!-- 											</div> -->
							<!-- 											<div class="details"> -->
							<!-- 												<div class="number"> -->
							
							<!-- 												</div> -->
							<!-- 												<div class="description">今日通过挑战人数</div> -->
							<!-- 											</div> -->
							<!-- 										</div> -->
							<!-- 										<div class="stat-block stat-primary"> -->
							<!-- 											<div class="icon"> -->
							<!-- 												<b class="icon-cover"></b> <i class="icon-tachometer"></i> -->
							<!-- 											</div> -->
							<!-- 											<div class="details"> -->
							<!-- 												<div class="number"> -->
							
							<!-- 												</div> -->
							<!-- 												<div class="description">共帮您找到的人才</div> -->
							<!-- 											</div> -->
							<!-- 										</div> -->
							<!-- 									</div> -->
							<!-- 									/.panel-body -->
							<!-- 								</div> -->
							<!-- 								/.panel -->
							<!-- 							</div> -->



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

	<!-- jQuery -->
	<script src="./hr-new-recruit_files/jquery-1.11.0.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="./hr-new-recruit_files/bootstrap.min.js"></script>

	<!-- Sparkline -->
	<script src="./hr-new-recruit_files/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./hr-new-recruit_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./hr-new-recruit_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./hr-new-recruit_files/bootstrap-filestyle.js"></script>



	<!-- Summernote -->
	<script src="./hr-new-recruit_files/summernote.min.js"></script>

	<script language="javascript" type="text/javascript" src="./hr-new-recruit_files/WdatePicker.js"></script>

	<!-- Theme script -->
	<script src="./hr-new-recruit_files/script.js"></script>

	<script src="./hr-new-recruit_files/bootstrapValidator.js"></script>

	<script type="text/javascript">
	    $('.test a').click(function (e) {
	        e.preventDefault();
	        $('.test a').removeClass("active");
	        $(this).addClass("active");
	        checkForm();
	    })
	    $('.level-tag a').click(function (e) {
	        if ($(".active").length = 2) {
	            $('#nextStep').removeAttr("disabled");
	            $('#hint1').hide();
	        } else {
	            $('#nextStep').attr('disabled', "true");
	            $('#hint1').show();
	        }
	    })
	    function checkForm() {

	        if ($(".active").length > 2) {
	            $('#nextStep').removeAttr("disabled");
	            $('#hint1').hide();
	            return true;
	        } else {
	            $('#nextStep').attr('disabled', "true");
	            $('#hint1').show();
	            return false;
	        }
	    }

	    //这里设置项目的类型
	    $('#a-java').click(function () {
	        $("#input-retype").val("Java");
	    });
	    $('#a-android').click(function () {
	        $("#input-retype").val("Android");
	    });
	    $('#a-ios').click(function () {
	        $("#input-retype").val("iOS");
	    });
	    $('#a-c').click(function () {
	        $("#input-retype").val("C语言(BETA)");
	    });
	    $('#a-cpp').click(function () {
	        $("#input-retype").val("C++(BETA)");
	    });
	    $('#a-php').click(function () {
	        $("#input-retype").val("PHP(BETA)");
	    });
	    $('#a-python').click(function () {
	        $("#input-retype").val("Python(BETA)");
	    });
	    $('#a-ruby').click(function () {
	        $("#input-retype").val("8");
	    });

	    $(".level-tag").click(function () {
	        $("#input-relevel").val($(this).attr("relevel"));
	    });

	    $("#check-public").click(function () {
	        if (document.getElementById("check-public").checked) {
	            $("#input-republic").val("1");
	        } else {
	            $("#input-republic").val("0");
	        }
	    });
	    $("#check-camera").click(function () {
	        if (document.getElementById("check-camera").checked) {
	            $("#input-recamera").val("1");
	        } else {
	            $("#input-recamera").val("0");
	        }
	    });
	</script>





	<!-- 引入footer -->
	

    <div class="afooter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./hr-new-recruit_files/pic.gif"></a></span><script src="./hr-new-recruit_files/z_stat.php" type="text/javascript"></script><script src="./hr-new-recruit_files/core.php" charset="utf-8" type="text/javascript"></script>
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