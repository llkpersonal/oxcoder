﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hr-sub-new-recruit.aspx.cs" Inherits="OXCoderClient.hr_sub_new_recruit" %>

<!DOCTYPE html>
<!-- saved from url=(0048)http://www.oxcoder.com/hr-sub-new-recruit.action -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">

<title>猿圈 新增挑战</title>

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
<link href="./hr-sub-new-recruit_files/style.css" rel="stylesheet" type="text/css">

<!-- Max css -->
<link href="./hr-sub-new-recruit_files/style_new.css" rel="stylesheet" type="text/css">

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
			<a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/index.htm" style="padding: 0;"><img src="./hr-sub-new-recruit_files/wlogo_sm.png" style="max-height: 35px;margin:7px;"></a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="active"><a href="http://www.oxcoder.com/hr-recruit-list.htm">挑战管理</a></li>
				<li><a href="http://www.oxcoder.com/recommend-user.htm">人才推荐</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				
				<li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"><span class="text">你好</span> <b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="http://www.oxcoder.com/hr-payment-info.htm">账户余额</a></li>
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
				<section>
					<div id="content">
						<div class="row">
							<div class="col-md-9 profile-stream">

								<div class="page-header row">
									<div class="col-md-8">
										<h3>新增挑战邀请</h3>
									</div>
									<div class="col-md-4">
										<div class="row">
											<div class="col-md-5"></div>
											<div class="col-md-7"></div>
										</div>
									</div>
								</div>
								<div class="page-body">
									<div class="row">
										<div style="text-align: center; margin-bottom: 20px;">
											<img src="./hr-sub-new-recruit_files/new_c2.png">
										</div>
										<h4>已选择挑战项目</h4>
										<div class="row col-md-12 col-no-left-padding">
											
												<div class="alert alert-info" style="text-align: center" role="alert">
													还没有选择测试题目
													
														<a href="http://www.oxcoder.com/hr-set-challenge.action?relevel=1&flag=random" style="margin-left: 20px;">智能生成</a>
													
												</div>
											
											
										</div>
										<div class="row col-md-12">
											<h4 class="pull-left">挑战项目</h4>
											<div class="pull-right">
												<!-- 												<div class="btn-group"> -->
												<!-- 													<a	title="oxcoder建议3k~5k选择一星到二星难度的试题;5k~8k选择三星到四星难度的试题;8k以上选择五星难度的试题" -->
												<!-- 														class="btn btn-default dropdown-toggle btn-demo-space top-search" -->
												
												
												
												
												
												
												
												
												<!-- 													<ul class="dropdown-menu"> -->
												<!-- 														<li><a -->
												
												<!-- 														<li><a -->
												
												<!-- 														<li><a -->
												
												<!-- 														<li><a -->
												
												<!-- 														<li><a -->
												
												<!-- 														<li><a -->
												
												<!-- 													</ul> -->
												<!-- 												</div> -->
												<div style="display: inline-block; vertical-align: top;">
													<form class="input-group" style="width: 200px" action="http://www.oxcoder.com/hr-set-challenge.action" method="post">
														<input type="hidden" name="flag" value="difficulty"> <input type="hidden" name="pid" value="0"> <input type="hidden" name="exercise" value=""> <input type="hidden" name="difficulty" value=""> <input name="keyword" class="form-control" placeholder="请输入关键字" value=""><span class="input-group-btn">
															<button type="submit" class="btn">
																<i class="fa fa-search"></i>
															</button>
														</span>
													</form>
												</div>
											</div>
										</div>
										<div class="row col-md-12">
											<p class="text-muted">选择智能生成后，我们会根据您的职位关键字与薪资智能匹配最合适的试题</p>
										</div>
										<div class="row col-md-12 col-no-left-padding">
											<div class="panel-body">
												<div class="row">
													
													
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							大小写转换
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=1&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>CaseSwitch</li>
																						
																							<li>大小写转换</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							日期比较
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=2&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>日期比较</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							计算时针分针夹角
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=3&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>angle</li>
																						
																							<li>角度计算</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							Armstrong数
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=10&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>Armstrong</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							计算字符数
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=11&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>计算字符数</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							递归运算阶乘
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=12&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>递归</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							报数问题
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=13&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>报数算法</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							判断回文数
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=14&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>回文数</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							计算时间
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=15&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>获取时间</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							特性——继承
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=16&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>继承</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							公约数和公倍数
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=17&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>数据计算</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							十进制转二进制
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=18&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>进制转换</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							运算法则
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=24&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>运算法则</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							质因数分解
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=25&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>质因数分解</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							计算不重复字符的位置
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=37&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>字符位置</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							字符串反转
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=129&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>字符串反转</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							ip转化为整数
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=130&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>p转化为整数算法</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							九九乘法表
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=131&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>算法</li>
																						
																							<li>九九乘法表</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							字符串包含
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=134&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>字符串包含算法</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							统计1到100间的素数
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=132&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>计算素数算法</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							判断给定的数是否为素数
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=133&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>判断素数算法</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							三色旗
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=136&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>三色旗算法</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							10000以内完美数
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=143&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>10000以内完美数</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							分糖果
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=176&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>小孩分糖果</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
															

																<div class="col-md-4">
																	<div class="panel panel-default project">
																		<div class="panel-body" style="padding-bottom: 0;">
																			<div class="row">
																				<div class="col-xs-12">
																					<div class="pull-left">
																						<h4>
																							数组排成较小的数
																						</h4>
																						<h5 class="text-muted">
																							
																								Java项目
			 																				
																							
																						</h5>
																					</div>
																					<div class="pull-right client-info">
																						<a style="color: white" href="http://www.oxcoder.com/hr-set-challenge.action?flag=new&relevel=1&pid=263&exercise=&difficulty=" class="btn btn-primary btn-sm">添加</a>
																					</div>
																				</div>
																				<!-- /.col-xs-12 -->
																				<div class="col-md-12" style="min-height: 68px;">
																					<ul class="companyTags">
																						
																							<li>java</li>
																						
																							<li>数组排成较小的数</li>
																						
																					</ul>
																				</div>
																			</div>
																			<!-- /.row -->
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
																						
																							
																							
																							
																								<i class="fa fa-star"></i>
																							
																								<i class="fa fa-star"></i>
																							
																						
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
															
														
													
												</div>
											</div>
										</div>

									</div>
									<!--/.row   -->
								</div>

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
							<!-- 引入right -->
							

<div class="col-md-3 profile-info">
	<div class="panel-user">
		<div class="panel-heading">
			<div class="panel-title">
				<div class="media">
					<a class="pull-left"> <img src="./hr-sub-new-recruit_files/1082.jpg" class="media-object">
					</a>
					<div class="media-body">
						<h4 class="media-heading">
							<!-- <span class="welcome">Hello</span> -->
							<span>你好 </span>
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
					<b class="icon-cover"></b> <i class="fa fa-bell"></i>
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
					<b class="icon-cover"></b> <i class="fa fa-bar-chart-o"></i>
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
					<b class="icon-cover"></b> <i class="fa fa-tachometer"></i>
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
							<!-- 								<div class="panel panel-outline panel-no-padding hidden-xs"> -->
							<!-- 									<div class="panel-body"> -->
							<!-- 										<div class="stat-block stat-danger"> -->
							<!-- 											<div class="icon"> -->
							<!-- 												<b class="icon-cover"></b> <i class="fa fa-bell"></i> -->
							<!-- 											</div> -->
							<!-- 											<div class="details"> -->
							<!-- 												<div class="number"> -->
							
							<!-- 												</div> -->
							<!-- 												<div class="description">今日收到的新挑战报告</div> -->
							<!-- 											</div> -->
							<!-- 										</div> -->
							<!-- 										<div class="stat-block stat-success"> -->
							<!-- 											<div class="icon"> -->
							<!-- 												<b class="icon-cover"></b> <i class="fa fa-bar-chart-o"></i> -->
							<!-- 											</div> -->
							<!-- 											<div class="details"> -->
							<!-- 												<div class="number"> -->
							
							<!-- 												</div> -->
							<!-- 												<div class="description">今日通过挑战人数</div> -->
							<!-- 											</div> -->
							<!-- 										</div> -->
							<!-- 										<div class="stat-block stat-primary"> -->
							<!-- 											<div class="icon"> -->
							<!-- 												<b class="icon-cover"></b> <i class="fa fa-tachometer"></i> -->
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
	<script src="./hr-sub-new-recruit_files/jquery-1.11.0.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="./hr-sub-new-recruit_files/bootstrap.min.js"></script>

	<!-- Sparkline -->
	<script src="./hr-sub-new-recruit_files/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./hr-sub-new-recruit_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./hr-sub-new-recruit_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./hr-sub-new-recruit_files/bootstrap-filestyle.js"></script>



	<!-- Summernote -->
	<script src="./hr-sub-new-recruit_files/summernote.min.js"></script>

	<!-- Theme script -->
	<script src="./hr-sub-new-recruit_files/script.js"></script>

	<!-- 引入footer -->
	

    <div class="afooter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./hr-sub-new-recruit_files/pic.gif"></a></span><script src="./hr-sub-new-recruit_files/z_stat.php" type="text/javascript"></script><script src="./hr-sub-new-recruit_files/core.php" charset="utf-8" type="text/javascript"></script>
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