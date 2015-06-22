﻿ <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hr-to-new-info.aspx.cs" Inherits="OXCoderClient.hr_to_new_info" %>

<!DOCTYPE html>
<!-- saved from url=(0044)http://www.oxcoder.com/hr-to-new-info.action -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">

<title>猿圈 企业注册</title>

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
<link href="./hr-to-new-info_files/style.css" rel="stylesheet" type="text/css">

<!-- Max css -->
<link href="./hr-to-new-info_files/style_new.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://www.oxcoder.com/css/libs/bootstrapValidator.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body style="">
	<!-- 引入header -->
	

<div class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/index.htm" style="padding: 0;"><img src="./hr-to-new-info_files/wlogo_sm.png" style="max-height: 35px;margin:7px;"></a>
                </div>
                <div class="navbar-collapse collapse" role="navigation">
                    <ul class="nav navbar-nav">
                        <li><a href="javascript:;">挑战管理</a></li>
                        <li><a href="javascript:;">人才推荐</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="http://www.oxcoder.com/hr-to-new-info.action#" class="dropdown-toggle" data-toggle="dropdown"><span class="text"><%=name %></span> <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:;">账户余额</a></li>
                                <li><a href="javascript:;">企业信息</a></li>
                                <li><a href="javascript:;">修改密码</a></li>
                                <li><a href="http://www.oxcoder.com/logout.htm">注销</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-push-3 col-xs-10 col-xs-push-1 col-sm-8 col-sm-push-2">
				<div id="content">
					<div class="row">
						<!-- 错误信息 -->
						<font color="red"></font>
						<form id="defaultForm" method="post" class="form-vertical bv-form" action="./hr-to-new-info-handle.aspx" enctype="multipart/form-data" novalidate="novalidate"><button type="submit" class="bv-hidden-submit" style="display: none; width: 0px; height: 0px;"></button>

							<div class="form-group">
								<label><h3 class="grey">公司全称</h3></label> <input type="text" name="cname" class="form-control" id="corp-name" placeholder="请输入公司在营业执照上的全称" data-bv-field="cname"> <span class="help-block has-error" id="hint1">
							<small class="help-block" data-bv-validator="notEmpty" data-bv-for="cname" data-bv-result="NOT_VALIDATED" style="display: none;">请输入公司在营业执照上的全称</small><small class="help-block" data-bv-validator="stringLength" data-bv-for="cname" data-bv-result="NOT_VALIDATED" style="display: none;">公司全称不能超过30个字符</small></span></div>
                            

							<div class="form-group">
								<label>
                                    <h3 class="grey">公司相关证明文件</h3>
								</label> 
                               
                                <div class="form-group">
								<label><h3 class="grey">公司相关证明文件</h3></label>
                                     <input type="file" name="image" tabindex="-1" style="position: fixed; left: -500px;" id="corp-pic" accept="image/*" data-bv-field="image">
                                    <div class="bootstrap-filestyle input-group">
                                        
                                        <span class="input-group-btn" tabindex="0"> </span></div> <span>如营业执照、组织代码证、税务登记证或工牌等扫描文件</span><span class="help-block has-error" id="hint2">

							<small class="help-block" data-bv-validator="notEmpty" data-bv-for="image" data-bv-result="NOT_VALIDATED" style="display: none;">请上传公司营业执照、组织代码证、税务登记证或工牌等扫描文件</small></span></div>
							<div class="form-group">
								<label><h3 class="grey">招聘负责人联系方式</h3></label> <input type="text" name="phone" class="form-control" id="phone" data-bv-field="phone">
								<span>请输入招聘负责人的手机</span> <span class="help-block has-error" id="hint3">
							<small class="help-block" data-bv-validator="notEmpty" data-bv-for="phone" data-bv-result="NOT_VALIDATED" style="display: none;">请输入联系方式</small><small class="help-block" data-bv-validator="phone" data-bv-for="phone" data-bv-result="NOT_VALIDATED" style="display: none;">请输入正确的联系方式</small></span></div>
							<div class="form-group form-actions">
								<button type="submit" class="btn btn-primary btn-lg" style="border-radius: 3px;">确认</button>
							</div>
						</form>

					</div>
					<!-- /.row -->
				</div>
			</div>



		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="./hr-to-new-info_files/jquery-1.11.0.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="./hr-to-new-info_files/bootstrap.min.js"></script>

	<!-- Sparkline -->
	<script src="./hr-to-new-info_files/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./hr-to-new-info_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./hr-to-new-info_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./hr-to-new-info_files/bootstrap-filestyle.js"></script>



	<!-- Summernote -->
	<script src="./hr-to-new-info_files/summernote.min.js"></script>

	<!-- Theme script -->
	<script src="./hr-to-new-info_files/script.js"></script>

	<script type="text/javascript" src="./hr-to-new-info_files/jquery.city.select.js"></script>


	<script src="./hr-to-new-info_files/bootstrapValidator.js"></script>

	<script type="text/javascript">

	    $(document).ready(function () {
	        $('#defaultForm').bootstrapValidator({
	            message: 'This value is not valid',
	            fields: {
	                cname: {
	                    container: '#hint1',
	                    validators: {
	                        notEmpty: {
	                            message: '请输入公司在营业执照上的全称'
	                        },
	                        stringLength: {
	                            max: 30,
	                            message: '公司全称不能超过30个字符'
	                        }
	                    }
	                },
	                image: {
	                    container: '#hint2',
	                    validators: {
	                        notEmpty: {
	                            message: '请上传公司营业执照、组织代码证、税务登记证或工牌等扫描文件'
	                        }
	                    }
	                },
	                phone: {
	                    container: '#hint3',
	                    validators: {
	                        notEmpty: {
	                            message: '请输入联系方式'
	                        },
	                        phone: {
	                            message: '请输入正确的联系方式',
	                            country: 'CN'
	                        }
	                    }
	                }
	            }
	        });
	    });
        </script>




	<!-- 引入footer -->
	

    <div class="afooter navbar-fixed-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./hr-to-new-info_files/pic.gif"></a></span><script src="./hr-to-new-info_files/z_stat.php" type="text/javascript"></script><script src="./hr-to-new-info_files/core.php" charset="utf-8" type="text/javascript"></script>
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
