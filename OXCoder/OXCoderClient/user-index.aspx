﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-index.aspx.cs" Inherits="OXCoderClient.user_index" %>

<!DOCTYPE html>
<!-- saved from url=(0032)http://www.oxcoder.com/index.htm -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">
<meta content="猿圈网是互联网人的笔试平台,帮助企业高效省时地招募到最优秀的技术人才,企业笔试首选猿圈网。" name="description">
<meta content="互联网招聘,笔试,在线笔试,编程笔试,企业笔试" name="keywords">

<title>猿圈</title>
<!-- START OF 瀑布流 -->
<!-- <link rel="stylesheet" href="waterfall/css/reset.css" /> -->
<link rel="stylesheet" href="http://www.oxcoder.com/waterfall/css/main.css">
<link rel="stylesheet" href="http://www.oxcoder.com/waterfall/css/woo.css">
<link rel="stylesheet" href="http://www.oxcoder.com/waterfall/css/gotop.css">
<!-- <link rel="stylesheet" href="waterfall/css/pagine.css" /> -->
<link rel="stylesheet" href="http://www.oxcoder.com/waterfall/css/resize.css">
<!-- END OF 瀑布流 -->
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
<link href="./user_index_files/style.css" rel="stylesheet" type="text/css">

<!-- Max css -->
<link href="./user_index_files/style_new.css" rel="stylesheet" type="text/css">
<link href="./user_index_files/carousel.css" rel="stylesheet" type="text/css">
<style type="text/css">
  .companyTags li {
      margin: 5px 10px 0 0;
  }

</style>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
<!-- START OF 瀑布流 -->

<script src="./user_index_files/jquery-1.11.0.min.js"></script>
<script src="./user_index_files/browser.js"></script>
<script src="./user_index_files/history.js"></script>
<script src="./user_index_files/template.min.js"></script>
<script src="./user_index_files/tabswitch.js"></script>
<script src="./user_index_files/woo.js"></script>
<script src="./user_index_files/masnunit.js"></script>
<!-- END OF 瀑布流 -->
<style type="text/css">.jqstooltip { position: absolute;left: 0px;top: 0px;visibility: hidden;background: rgb(0, 0, 0) transparent;background-color: rgba(0,0,0,0.6);filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);-ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";color: white;font: 10px arial, san serif;text-align: left;white-space: nowrap;padding: 5px;border: 1px solid white;z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}</style></head>

<body style="">

<!-- 引入header -->
	
		

<div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand hidden-sm" href="./user_index_files/user_index.html" style="padding: 0;"><img src="./user_index_files/wlogo_sm.png" style="max-height: 35px; margin: 7px;"></a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li class="active"><a href="./user_index_files/user_index.html">首页</a></li>
				<li><a href="http://www.oxcoder.com/user-recruit-list.htm">挑战</a></li>
				
				
				<li><a href="http://www.oxcoder.com/user-resume.htm">个人中心</a></li>
			</ul>
			
				<ul class="nav navbar-nav navbar-right">
					
					<li class="dropdown"><a href="http://www.oxcoder.com/index.htm#" class="dropdown-toggle" data-toggle="dropdown"><span class="text">你好，</span> <%=Session["name"] %> <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="http://www.oxcoder.com/user-to-change-pwd.htm">修改密码</a></li>
							<li><a href="http://www.oxcoder.com/logout.htm">注销</a></li>
						</ul></li>
				</ul>
			
		</div>
	</div>
</div>
<script type="text/javascript">
    function validateSession() {
        var k = 1
        if (k == null) {
            location.replace("session-timeout-log.htm");
        }
    }
</script>
	
	
	
	<!-- 轮播图 -->
	<div style="margin: -20px 0 20px 0;" id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="./user_index_files/code.png" alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>hire.through(code)</h1>
						<h2>= 招到优秀程序员的最佳方式</h2>
						<br>
						<p>让人才更快地脱颖而出，让企业做出更明智的招聘决策</p>
						<!-- <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p> -->
					</div>
				</div>
			</div>
		</div>

		<a class="left carousel-control" href="http://www.oxcoder.com/index.htm#myCarousel" role="button" data-slide="prev"> <!--
<span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
-->
		</a> <a class="right carousel-control" href="http://www.oxcoder.com/index.htm#myCarousel" role="button" data-slide="next"> <!--
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
-->
		</a>

	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-no-left-padding col-md-offset-2">
				<section class="middle">
					<div class="col-md-2 col-no-left-padding" style="margin-bottom: 10px;">
						<select id="select-retype" class="form-control">
							<option selected="" value="0">技术方向</option>
							<option value="1">Java</option>
							<option value="2">Android</option>
							<option value="3">iOS</option>
							<option value="4">C语言</option>
							<option value="5">C++</option>
							<option value="6">php</option>
							<option value="7">python</option>
							
						</select>
					</div>
					<div class="col-md-2 col-no-left-padding" style="margin-bottom: 10px;">
						<select id="select-salary" class="form-control">
							<option selected="" value="0">起始薪资</option>
							<option value="1">2k~5k</option>
							<option value="2">5k~8k</option>
							<option value="3">8k~10k</option>
							<option value="4">10k~12k</option>
							<option value="5">12k~15k</option>
							<option value="6">15k以上</option>
						</select>
					</div>
					<div class="col-md-2 col-no-left-padding" style="margin-bottom: 10px;">
						<select id="province" class="form-control">
							<option value="0">全部地区</option>
							<option value="北京">北京</option>
							<option value="天津">天津</option>
							<option value="河北">河北</option>
							<option value="山西">山西</option>
							<option value="内蒙古">内蒙古</option>
							<option value="辽宁">辽宁</option>
							<option value="吉林">吉林</option>
							<option value="黑龙江">黑龙江</option>
							<option value="上海">上海</option>
							<option value="江苏">江苏</option>
							<option value="浙江">浙江</option>
							<option value="安徽">安徽</option>
							<option value="福建">福建</option>
							<option value="江西">江西</option>
							<option value="山东">山东</option>
							<option value="河南">河南</option>
							<option value="湖北">湖北</option>
							<option value="湖南">湖南</option>
							<option value="广东">广东</option>
							<option value="广西">广西</option>
							<option value="海南">海南</option>
							<option value="重庆">重庆</option>
							<option value="四川">四川</option>
							<option value="贵州">贵州</option>
							<option value="云南">云南</option>
							<option value="西藏">西藏</option>
							<option value="陕西">陕西</option>
							<option value="甘肃">甘肃</option>
							<option value="青海">青海</option>
							<option value="宁夏">宁夏</option>
							<option value="新疆">新疆</option>
							<option value="台湾">台湾</option>
							<option value="香港">香港</option>
							<option value="澳门">澳门</option>
							<option value="海外">海外</option>
						</select>
					</div>
					<div style="col-md-6">
						<form class="input-group" action="http://www.oxcoder.com/index.action" method="get">
							<input name="salary" id="input-salary" type="hidden" value="0"> 
							<input name="province" id="input-province" type="hidden" value=""> 
							<input name="retype" id="input-retype" type="hidden" value="0"> 
							<input name="flag" id="input-flag" type="hidden" value="0"> 
							<input name="selectedProvince" id="input-selected-province" type="hidden" value="14">
							<input name="selectedCity" id="input-selected-city" type="hidden" value="1401"> 
							<input name="searchCondition" class="form-control" placeholder="请输入关键词，如公司名称等" value=""> 
								<span class="input-group-btn"><button type="submit" class="btn"><i class="fa fa-search"></i></button></span>
						</form>
					</div>
				</section>
			</div>
			<div class="col-md-4 col-no-left-padding col-md-offset-8" style="margin-top: 20px;">
				<section id="middle" style="margin-bottom: 20px;">
					排序： <a href="http://www.oxcoder.com/index.action?flag=3&salary=0&province=&city=&retype=0&searchCondition=" class="btn btn-order" id="btn-order-on">时间</a> <a href="http://www.oxcoder.com/index.action?flag=1&salary=0&province=&city=&retype=0&searchCondition=" class="btn btn-order">热度</a> <a href="http://www.oxcoder.com/index.action?flag=2&salary=0&province=&city=&retype=0&searchCondition=" class="btn btn-order">薪资</a>
				</section>
				<!--  排序这边默认什么都不选。默认排序按推荐、热度、时间搞一个算法，推荐一直在最前
                    筛选地区那边默认为用户的期望工作地点 -->
			</div>

<div class="row">
				<div id="content" class="col-md-12">
					
					<div id="woo-holder">
						<a name="woo-anchor"></a>
						<ul id="switchholder">
							<li class="woo-swa woo-cur"></li>
							<!-- <li class="woo-swa"><a href="javascript:;">时间升序</a></li>
									<li class="woo-swa"><a href="javascript:;">工资降序</a></li> -->
							<!-- <li class="woo-swa"><a href="javascript:;">顺序4</a></li> -->
						</ul>
						<div class="woo-swb woo-cur" style="display: block;">
							<!-- data-totalunits is set here, then pager nums would be fixed -->
							<!-- It would have been Hasnext Mode if you didn't do it -->
							<div class="woo-tmpmasn woo-pcont woo-masned" style="position:relative;height:0;overflow:hidden;margin:0;padding:0;"></div><div class="woo-pcont woo-masned" data-totalunits="600" style="position: relative; width: 1150px; visibility: visible; height: 1368px;">
								<!-- .woo-pcont 节点内可预先放好若干个单元(个数没有限制) -->
								<!-- 预先放置的会被当做第一子页数据，后面会直接从第二子页开始 -->
								<!-- 可以选择不放置 -->

							<div class="col-xs-12 col-lg-3 col-md-4 woo co0" data-ht="456" data-idx="0" style="top:0px;left:0px;"><section id="Section1">                        <div class="panel panel-default shadow-effect">                            <div class="col-xs-12 panel-header">                                <div class="pull-left">                                    <h4 title="[高级]iOS工程师" class="line-control"><a href="http://www.oxcoder.com/battle-detail.action?reid=727">[高级]iOS工程师</a></h4>                                    <h4 title="金融界 | 爱投顾" class="line-control"><a href="http://www.oxcoder.com/user-corp-detail.action?cid=829">金融界 | 爱投顾</a></h4>                                </div>                                <div class="pull-right client-info hidden-md">                                    <span class="percent text-danger"><img class="img-circle" style="width:60px;height:60px" src="./user_index_files/829.jpg"></span>                                </div>                                <span class="hot-tag">推荐</span>                            </div>                            <div class="panel-body ">                                <ul class="list-unstyled">                                    <li>月薪： 15k以上</li>                                    <li>职位诱惑：</li>                                    <li>                                        <ul class="companyTags">								          													<li>五险一金</li>							     															<li>弹性工作</li>							     															<li>年终分红</li>							     			                                        </ul>                                    </li>                                    <li>挑战项目：</li>                                    <li>							        <ul>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=70">二维码</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=55">渐进加载大图片</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=53">自动化生成描述</a></li>						         								            </ul>                                    </li>                                    <li>难度：	          							<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>                                    </li><li><i class="fa fa-calendar"></i>2015-04-16~2015-06-15</li>                                    <li><i class="fa fa-user"></i>42人已接受挑战</li>                                </ul>                            </div><!-- /.panel-body -->                            <div class="panel-footer align-center">	          					<a href="http://www.oxcoder.com/user-choose-challenge.action?reid=727"><button class="btn btn-new1">接受挑战</button></a>	          					                            </div><!-- /.panel-footer -->                        </div>                    </section></div><div class="col-xs-12 col-lg-3 col-md-4 woo co1" data-ht="456" data-idx="1" style="top:0px;left:290px;"><section id="Section2">                        <div class="panel panel-default shadow-effect">                            <div class="col-xs-12 panel-header">                                <div class="pull-left">                                    <h4 title="[高级]Android工程师" class="line-control"><a href="http://www.oxcoder.com/battle-detail.action?reid=726">[高级]Android工程师</a></h4>                                    <h4 title="金融界 | 爱投顾" class="line-control"><a href="http://www.oxcoder.com/user-corp-detail.action?cid=829">金融界 | 爱投顾</a></h4>                                </div>                                <div class="pull-right client-info hidden-md">                                    <span class="percent text-danger"><img class="img-circle" style="width:60px;height:60px" src="./user_index_files/829.jpg"></span>                                </div>                                <span class="hot-tag">推荐</span>                            </div>                            <div class="panel-body ">                                <ul class="list-unstyled">                                    <li>月薪： 15k以上</li>                                    <li>职位诱惑：</li>                                    <li>                                        <ul class="companyTags">								          													<li>五险一金</li>							     															<li>弹性工作</li>							     															<li>年终分红</li>							     			                                        </ul>                                    </li>                                    <li>挑战项目：</li>                                    <li>							        <ul>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=183">多线程下载</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=57">多人通话</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=58">AndroidSqlite</a></li>						         								            </ul>                                    </li>                                    <li>难度：	          							<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>                                    </li><li><i class="fa fa-calendar"></i>2015-04-16~2015-06-15</li>                                    <li><i class="fa fa-user"></i>41人已接受挑战</li>                                </ul>                            </div><!-- /.panel-body -->                            <div class="panel-footer align-center">	          					<a href="http://www.oxcoder.com/user-choose-challenge.action?reid=726"><button class="btn btn-new1">接受挑战</button></a>	          					                            </div><!-- /.panel-footer -->                        </div>                    </section></div><div class="col-xs-12 col-lg-3 col-md-4 woo co2" data-ht="456" data-idx="2" style="top:0px;left:580px;"><section id="Section3">                        <div class="panel panel-default shadow-effect">                            <div class="col-xs-12 panel-header">                                <div class="pull-left">                                    <h4 title="[高级]php工程师" class="line-control"><a href="http://www.oxcoder.com/battle-detail.action?reid=725">[高级]php工程师</a></h4>                                    <h4 title="金融界 | 爱投顾" class="line-control"><a href="http://www.oxcoder.com/user-corp-detail.action?cid=829">金融界 | 爱投顾</a></h4>                                </div>                                <div class="pull-right client-info hidden-md">                                    <span class="percent text-danger"><img class="img-circle" style="width:60px;height:60px" src="./user_index_files/829.jpg"></span>                                </div>                                <span class="hot-tag">推荐</span>                            </div>                            <div class="panel-body ">                                <ul class="list-unstyled">                                    <li>月薪： 15k以上</li>                                    <li>职位诱惑：</li>                                    <li>                                        <ul class="companyTags">								          													<li>五险一金</li>							     															<li>弹性工作</li>							     															<li>年终分红</li>							     			                                        </ul>                                    </li>                                    <li>挑战项目：</li>                                    <li>							        <ul>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=239">数字汉化</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=241">美猴王</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=240">排列组合</a></li>						         								            </ul>                                    </li>                                    <li>难度：	          							<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>                                    </li><li><i class="fa fa-calendar"></i>2015-04-16~2015-06-15</li>                                    <li><i class="fa fa-user"></i>40人已接受挑战</li>                                </ul>                            </div><!-- /.panel-body -->                            <div class="panel-footer align-center">	          					<a href="http://www.oxcoder.com/user-choose-challenge.action?reid=725"><button class="btn btn-new1">接受挑战</button></a>	          					                            </div><!-- /.panel-footer -->                        </div>                    </section></div><div class="col-xs-12 col-lg-3 col-md-4 woo co3" data-ht="456" data-idx="3" style="top:0px;left:870px;"><section id="Section4">                        <div class="panel panel-default shadow-effect">                            <div class="col-xs-12 panel-header">                                <div class="pull-left">                                    <h4 title="[高级]Java工程师" class="line-control"><a href="http://www.oxcoder.com/battle-detail.action?reid=301">[高级]Java工程师</a></h4>                                    <h4 title="尼尔森网联" class="line-control"><a href="http://www.oxcoder.com/user-corp-detail.action?cid=447">尼尔森网联</a></h4>                                </div>                                <div class="pull-right client-info hidden-md">                                    <span class="percent text-danger"><img class="img-circle" style="width:60px;height:60px" src="./user_index_files/447.jpg"></span>                                </div>                                <span class="hot-tag">推荐</span>                            </div>                            <div class="panel-body ">                                <ul class="list-unstyled">                                    <li>月薪： 12k~15k</li>                                    <li>职位诱惑：</li>                                    <li>                                        <ul class="companyTags">								          													<li>五险一金</li>							     															<li>年底双薪</li>							     															<li>绩效奖金</li>							     			                                        </ul>                                    </li>                                    <li>挑战项目：</li>                                    <li>							        <ul>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=128">状态模式</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=59">责任链模式</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=149">掷骰子</a></li>						         								            </ul>                                    </li>                                    <li>难度：	          							<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>                                    </li><li><i class="fa fa-calendar"></i>2015-03-25~2015-05-24</li>                                    <li><i class="fa fa-user"></i>95人已接受挑战</li>                                </ul>                            </div><!-- /.panel-body -->                            <div class="panel-footer align-center">	          					<a href="http://www.oxcoder.com/user-choose-challenge.action?reid=301"><button class="btn btn-new1">接受挑战</button></a>	          					                            </div><!-- /.panel-footer -->                        </div>                    </section></div><div class="col-xs-12 col-lg-3 col-md-4 woo co0" data-ht="456" data-idx="4" style="top:456px;left:0px;"><section id="Section5">                        <div class="panel panel-default shadow-effect">                            <div class="col-xs-12 panel-header">                                <div class="pull-left">                                    <h4 title="[初级]Android工程师" class="line-control"><a href="http://www.oxcoder.com/battle-detail.action?reid=1133">[初级]Android工程师</a></h4>                                    <h4 title="猿圈" class="line-control"><a href="http://www.oxcoder.com/user-corp-detail.action?cid=1">猿圈</a></h4>                                </div>                                <div class="pull-right client-info hidden-md">                                    <span class="percent text-danger"><img class="img-circle" style="width:60px;height:60px" src="./user_index_files/1.png"></span>                                </div>                                                            </div>                            <div class="panel-body ">                                <ul class="list-unstyled">                                    <li>月薪： 2k~5k</li>                                    <li>职位诱惑：</li>                                    <li>                                        <ul class="companyTags">								          													<li>弹性工作</li>							     															<li>福利好</li>							     															<li>领导好</li>							     			                                        </ul>                                    </li>                                    <li>挑战项目：</li>                                    <li>							        <ul>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=186">开机自动启动</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=6">九宫格布局</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=8">播放进度</a></li>						         								            </ul>                                    </li>                                    <li>难度：	          							<i class="fa fa-star"></i>                                    </li><li><i class="fa fa-calendar"></i>2015-05-22~2015-06-21</li>                                    <li><i class="fa fa-user"></i>4人已接受挑战</li>                                </ul>                            </div><!-- /.panel-body -->                            <div class="panel-footer align-center">	          					<a href="http://www.oxcoder.com/user-choose-challenge.action?reid=1133"><button class="btn btn-new1">接受挑战</button></a>	          					                            </div><!-- /.panel-footer -->                        </div>                    </section></div><div class="col-xs-12 col-lg-3 col-md-4 woo co1" data-ht="456" data-idx="5" style="top:456px;left:290px;"><section id="Section6">                        <div class="panel panel-default shadow-effect">                            <div class="col-xs-12 panel-header">                                <div class="pull-left">                                    <h4 title="[中级]Java工程师" class="line-control"><a href="http://www.oxcoder.com/battle-detail.action?reid=1118">[中级]Java工程师</a></h4>                                    <h4 title="桔利科技" class="line-control"><a href="http://www.oxcoder.com/user-corp-detail.action?cid=48">桔利科技</a></h4>                                </div>                                <div class="pull-right client-info hidden-md">                                    <span class="percent text-danger"><img class="img-circle" style="width:60px;height:60px" src="./user_index_files/48.jpg"></span>                                </div>                                                            </div>                            <div class="panel-body ">                                <ul class="list-unstyled">                                    <li>月薪： 8k~10k</li>                                    <li>职位诱惑：</li>                                    <li>                                        <ul class="companyTags">								          													<li>五险一金</li>							     															<li>弹性工作</li>							     															<li>扁平管理</li>							     			                                        </ul>                                    </li>                                    <li>挑战项目：</li>                                    <li>							        <ul>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=12">递归运算阶乘</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=10">Armstrong数</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=18">十进制转二进制</a></li>						         								            </ul>                                    </li>                                    <li>难度：	          							<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>                                    </li><li><i class="fa fa-calendar"></i>2015-05-21~2015-06-20</li>                                    <li><i class="fa fa-user"></i>5人已接受挑战</li>                                </ul>                            </div><!-- /.panel-body -->                            <div class="panel-footer align-center">	          					<a href="http://www.oxcoder.com/user-choose-challenge.action?reid=1118"><button class="btn btn-new1">接受挑战</button></a>	          					                            </div><!-- /.panel-footer -->                        </div>                    </section></div><div class="col-xs-12 col-lg-3 col-md-4 woo co2" data-ht="456" data-idx="6" style="top:456px;left:580px;"><section id="Section7">                        <div class="panel panel-default shadow-effect">                            <div class="col-xs-12 panel-header">                                <div class="pull-left">                                    <h4 title="[初级]Android工程师" class="line-control"><a href="http://www.oxcoder.com/battle-detail.action?reid=1115">[初级]Android工程师</a></h4>                                    <h4 title="猿圈" class="line-control"><a href="http://www.oxcoder.com/user-corp-detail.action?cid=1">猿圈</a></h4>                                </div>                                <div class="pull-right client-info hidden-md">                                    <span class="percent text-danger"><img class="img-circle" style="width:60px;height:60px" src="./user_index_files/1.png"></span>                                </div>                                                            </div>                            <div class="panel-body ">                                <ul class="list-unstyled">                                    <li>月薪： 2k~5k</li>                                    <li>职位诱惑：</li>                                    <li>                                        <ul class="companyTags">								          													<li>弹性工作</li>							     															<li>福利好</li>							     															<li>领导好</li>							     			                                        </ul>                                    </li>                                    <li>挑战项目：</li>                                    <li>							        <ul>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=379">拨打电话</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=380">相册</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=192">课程表</a></li>						         								            </ul>                                    </li>                                    <li>难度：	          							<i class="fa fa-star"></i>                                    </li><li><i class="fa fa-calendar"></i>2015-05-20~2015-06-19</li>                                    <li><i class="fa fa-user"></i>8人已接受挑战</li>                                </ul>                            </div><!-- /.panel-body -->                            <div class="panel-footer align-center">	          					<a href="http://www.oxcoder.com/user-choose-challenge.action?reid=1115"><button class="btn btn-new1">接受挑战</button></a>	          					                            </div><!-- /.panel-footer -->                        </div>                    </section></div><div class="col-xs-12 col-lg-3 col-md-4 woo co3" data-ht="456" data-idx="7" style="top:456px;left:870px;"><section id="Section8">                        <div class="panel panel-default shadow-effect">                            <div class="col-xs-12 panel-header">                                <div class="pull-left">                                    <h4 title="[高级]Java工程师" class="line-control"><a href="http://www.oxcoder.com/battle-detail.action?reid=1113">[高级]Java工程师</a></h4>                                    <h4 title="车伯通" class="line-control"><a href="http://www.oxcoder.com/user-corp-detail.action?cid=1064">车伯通</a></h4>                                </div>                                <div class="pull-right client-info hidden-md">                                    <span class="percent text-danger"><img class="img-circle" style="width:60px;height:60px" src="./user_index_files/1064.png"></span>                                </div>                                                            </div>                            <div class="panel-body ">                                <ul class="list-unstyled">                                    <li>月薪： 15k以上</li>                                    <li>职位诱惑：</li>                                    <li>                                        <ul class="companyTags">								          													<li>五险一金</li>							     															<li>岗位晋升</li>							     															<li>弹性工作</li>							     			                                        </ul>                                    </li>                                    <li>挑战项目：</li>                                    <li>							        <ul>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=60">给定数字的排列组合</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=135">猜算式</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=264">两队列实现栈</a></li>						         								            </ul>                                    </li>                                    <li>难度：	          							<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>                                    </li><li><i class="fa fa-calendar"></i>2015-05-20~2015-06-19</li>                                    <li><i class="fa fa-user"></i>4人已接受挑战</li>                                </ul>                            </div><!-- /.panel-body -->                            <div class="panel-footer align-center">	          					<a href="http://www.oxcoder.com/user-choose-challenge.action?reid=1113"><button class="btn btn-new1">接受挑战</button></a>	          					                            </div><!-- /.panel-footer -->                        </div>                    </section></div><div class="col-xs-12 col-lg-3 col-md-4 woo co0" data-ht="456" data-idx="8" style="top:912px;left:0px;"><section id="Section9">                        <div class="panel panel-default shadow-effect">                            <div class="col-xs-12 panel-header">                                <div class="pull-left">                                    <h4 title="[高级]iOS工程师" class="line-control"><a href="http://www.oxcoder.com/battle-detail.action?reid=1107">[高级]iOS工程师</a></h4>                                    <h4 title="乐动力" class="line-control"><a href="http://www.oxcoder.com/user-corp-detail.action?cid=1062">乐动力</a></h4>                                </div>                                <div class="pull-right client-info hidden-md">                                    <span class="percent text-danger"><img class="img-circle" style="width:60px;height:60px" src="./user_index_files/1062.jpg"></span>                                </div>                                                            </div>                            <div class="panel-body ">                                <ul class="list-unstyled">                                    <li>月薪： 15k以上</li>                                    <li>职位诱惑：</li>                                    <li>                                        <ul class="companyTags">								          													<li>五险一金</li>							     															<li>年底双薪</li>							     															<li>股份期权</li>							     			                                        </ul>                                    </li>                                    <li>挑战项目：</li>                                    <li>							        <ul>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=70">二维码</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=53">自动化生成描述</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=55">渐进加载大图片</a></li>						         								            </ul>                                    </li>                                    <li>难度：	          							<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>                                    </li><li><i class="fa fa-calendar"></i>2015-05-20~2015-06-19</li>                                    <li><i class="fa fa-user"></i>5人已接受挑战</li>                                </ul>                            </div><!-- /.panel-body -->                            <div class="panel-footer align-center">	          					<a href="http://www.oxcoder.com/user-choose-challenge.action?reid=1107"><button class="btn btn-new1">接受挑战</button></a>	          					                            </div><!-- /.panel-footer -->                        </div>                    </section></div><div class="col-xs-12 col-lg-3 col-md-4 woo co1" data-ht="456" data-idx="9" style="top:912px;left:290px;"><section id="Section10">                        <div class="panel panel-default shadow-effect">                            <div class="col-xs-12 panel-header">                                <div class="pull-left">                                    <h4 title="[中级]iOS工程师" class="line-control"><a href="http://www.oxcoder.com/battle-detail.action?reid=1093">[中级]iOS工程师</a></h4>                                    <h4 title="熠翊" class="line-control"><a href="http://www.oxcoder.com/user-corp-detail.action?cid=1056">熠翊</a></h4>                                </div>                                <div class="pull-right client-info hidden-md">                                    <span class="percent text-danger"><img class="img-circle" style="width:60px;height:60px" src="./user_index_files/1056.jpg"></span>                                </div>                                                            </div>                            <div class="panel-body ">                                <ul class="list-unstyled">                                    <li>月薪： 10k~12k</li>                                    <li>职位诱惑：</li>                                    <li>                                        <ul class="companyTags">								          													<li>五险一金</li>							     															<li>年底双薪</li>							     															<li>股份期权</li>							     			                                        </ul>                                    </li>                                    <li>挑战项目：</li>                                    <li>							        <ul>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=185">手势浏览器</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=22">设备方向监测</a></li>						         			          								<li><a href="http://www.oxcoder.com/index-battle-project-detail.action?pid=21">多手势操作</a></li>						         								            </ul>                                    </li>                                    <li>难度：	          							<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>                                    </li><li><i class="fa fa-calendar"></i>2015-05-19~2015-06-18</li>                                    <li><i class="fa fa-user"></i>6人已接受挑战</li>                                </ul>                            </div><!-- /.panel-body -->                            <div class="panel-footer align-center">	          					<a href="http://www.oxcoder.com/user-choose-challenge.action?reid=1093"><button class="btn btn-new1">接受挑战</button></a>	          					                            </div><!-- /.panel-footer -->                        </div>                    </section></div></div>
							<div class="col-md-12 woo-pager" style="display: none;"></div><div id="woo-loading" class="woo-loading" style="visibility: hidden;"></div>
						</div>
					</div>
					<!-- Woo holder over -->
				</div>
			</div>
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">意见反馈</h4>
				</div>
				<div class="modal-body">
					<form class="">
						<textarea class="form-control" placeholder="请输入您的反馈意见" style="min-height: 200px;"></textarea>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-new1">提交</button>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery -->
	

	<!-- Bootstrap core JavaScript -->
	<script src="./user_index_files/bootstrap.min.js"></script>

	<!-- Sparkline -->
	<script src="./user_index_files/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./user_index_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./user_index_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./user_index_files/bootstrap-filestyle.js"></script>
	<!-- Summernote -->
	<script src="./user_index_files/summernote.min.js"></script>

	<!-- Theme script -->
	<script src="./user_index_files/script.js"></script>
<style type="text/css">
/* invisible holder for the page */
#win-holder {
	overflow: hidden;
	height: 0px;
}
</style>
	<div id="win-holder">
		
		<form id="woo-form-album" action="http://www.oxcoder.com/battle.action?page=">
			<input type="hidden" name="flag" value="0">
			<input type="hidden" name="salary" value="0">
			<input type="hidden" name="location" value="">
			<input type="hidden" name="searchCondition" value="">
			<input type="hidden" name="retype" value="0">
		</form>
	</div>
	<script>
	    $(function () {
	        // Append buttons gonext, gopre, gotop to the body as you like.
	        /* $('<div id="mycontrols"><a id="gonext" href="javascript:;" title="下一页"></a><a href="javascript:;" id="gotop"></a><a id="gopre" href="javascript:;"  title="上一页"></a></div>').appendTo('body'); */

	        var conf = {
	            // Prefix of form id. Each form represents a subpage data request.
	            "formprefix": '#woo-form-',

	            // Identification of a single waterfall. There are 4 waterfalls in main.html.
	            // You can get the form in #win-holder by putting formprefix and one identification together.
	            // <form id="woo-form-(collect|original|album|favalbum)">
	            "arrform": ['album'],

	            // arrsplit, the last part of the url which has been split by page number.
	            // The first part of the url has already been put in the action attribute of the proper form.
	            // Page number can be seen neighther in the first part nor the last part.
	            // Why and how we do this? Think a simple url like '/message/list/1/tail/?type=hot'
	            // First, we put '/message/list/' in form action.
	            // Then, we can make a hidden input in this form <input type="hidden" name="type" value="hot"/>.
	            // Finally, we put '/tail/' into arrsplit.
	            // Or, we could choose no hidden input and '/tail/?type=hot' into arrsplit.
	            // Nevertheless, we put them together and get the entire url.
	            //"arrsplit" : ['/?type=hot','','',''],
	            "arrsplit": [''],

	            // The extend width of each common column including margin between two cols.
	            "arrmasnw": [290, 300, 300, 290],

	            // The margin between two cols.
	            // In this example, visible column width is 245-21=224.
	            "arrmargin": [10, 20, 20, 10],

	            // Diff value of special column width, default 0.
	            // Why the value is 0, not [0,0,0,0]?
	            // We simplified params by converting equal-value array [0,0,0,0] to single value 0.
	            // Params arrsplit, arrmasnw, arrmargin and arrgap can be treated on the same principle.
	            // But, param arrform is out of the principle.
	            "arrfmasnw": 0,

	            // The gap between units in one column.
	            "arrgap": 0,

	            // Install $gopre $gonext $gotop as you like.
	            "gopre": '#gopre',
	            "gonext": '#gonext',
	            "gotop": '#gotop',

	            // Footer selctor, any node below the pager can be treated as footer.
	            "footer": '#footer,#preserve',

	            // Open resize mode.
	            // If you open it, every time window resizes, waterfall will be repainted.
	            // Not recommend in ie.
	            "resize": true,

	            // * 每页的单元数
	            "unitsnum": 24,

	            // * 每一大页子页数量
	            "subpagenum": 10000,

	            // 每次append插入dom的单元个数
	            "appendnum": 12,

	            // 距离底部多远提前开始加载
	            "lbias": 400,

	            // Sth you do during scrolling, say, pop out a login confirm.
	            "onScroll": function (tp) {
	                // tp current scrolltop
	                //			if( (typeof ALREADYNOTICED === 'undefined' || !ALREADYNOTICED) && tp >= 1000 ){
	                //				ALREADYNOTICED = true
	                //				alert("login")
	                //			}
	            }
	        }

	        // Let's go.
	        $.Woo(conf);
	    })
	</script>
	<script type="text/javascript" src="./user_index_files/index.js"></script>
	<!-- 引入footer -->
	

    <div class="afooter navbar-fixed-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./user_index_files/pic.gif"></a></span><script src="./user_index_files/z_stat.php" type="text/javascript"></script><script src="./user_index_files/core.php" charset="utf-8" type="text/javascript"></script>
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