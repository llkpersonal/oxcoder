<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-recruit-list.aspx.cs" Inherits="OXCoderClient.user_recruit_list" %>
<%@ Import namespace="OXCoder.DBModel" %>

<!DOCTYPE html>
<!-- saved from url=(0044)http://www.oxcoder.com/user-recruit-list.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">

<title>猿圈 挑战主页</title>

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
<link href="./user-recruit-list_files/style.css" rel="stylesheet" type="text/css">

<!-- Max css -->
<link href="./user-recruit-list_files/style_new.css" rel="stylesheet" type="text/css">

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
			<a class="navbar-brand hidden-sm" href="./index.html" style="padding: 0;"><img src="./user-recruit-list_files/wlogo_sm.png" style="max-height: 35px; margin: 7px;"></a>
		</div>
		<div class="navbar-collapse collapse" role="navigation">
			<ul class="nav navbar-nav">
				<li><a href="./index.aspx">首页</a></li>
				<li class="active"><a href="./user-recruit-list_files/user-recruit-list.aspxl">挑战</a></li>
				
				
				<li><a href="./user-resume.aspx">个人中心</a></li>
			</ul>
			
				<ul class="nav navbar-nav navbar-right">
					
					<li class="dropdown"><a href="./user-recruit-list.aspx#" class="dropdown-toggle" data-toggle="dropdown"><span class="text">你好</span> <%=(String)Session["name"] %><b class="caret"></b></a>
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
				<section id="middle">
					<!-- <ul class="nav nav-pills" style="margin:20px 0;">
                            <li class="active"><a href="#pill-home" data-toggle="pill">我接受的挑战</a></li>
                            <li><a href="#pill-profile" data-toggle="pill">挑战历史</a></li>
                        </ul> -->
					<h2 class="h2-tab">
						<a href="./user-recruit-list.aspx?flag=underway">我接受的挑战</a>
					</h2>
					<h2 class="h2-tab">
						<a href="./user-recruit-list.aspx?flag=history" class="off">挑战历史</a>
					</h2>
				</section>
			</div>
			<div class="col-md-12 col-no-left-padding">
				<section id="Section1" class="col-md-12">
					<div class="btn-group">
						
						<a class="btn btn-default dropdown-toggle btn-demo-space top-search" data-toggle="dropdown" href="./user-recruit-list.aspx#"> 全部 <span class="caret"></span></a>
						
						<ul class="dropdown-menu">
							<li><a href="./user-recruit-list.aspx?flag=underway&reustate=0">全部</a></li>
							<li><a href="./user-recruit-list.aspx?flag=underway&reustate=1">未完成的挑战</a></li>
							<li><a href="./user-recruit-list.aspx?flag=underway&reustate=2">通过的挑战</a></li>
							<li><a href="./user-recruit-list.aspx?flag=underway&reustate=3">不通过的挑战</a></li>
						</ul>
					</div>
					
				</section>
				<% foreach(OXChallengeDetail c in challengeList) {%>
				<div class="col-md-3">
					<section id="Section5">
						<div class="panel panel-default shadow-effect">
							<div class="col-xs-12 panel-header">
								<div class="pull-left">
									<h4 class="line-control">
										<a href="./user-challenge-cover.aspx?reid=<%=c.challengeid %>"><%=c.challengename %></a>
									</h4>
									<h4 class="line-control">
										<a href="./user-corp-detail.aspx?cid=974"><%=c.Company.companyname %></a>
									</h4>
								</div>
								<div class="pull-right client-info">
									<span class="percent text-danger"><img class="img-circle" style="width: 60px; height: 60px" src="./logo/<%=c.Company.logo %>"></span>
								</div>
							</div>

							<div class="panel-body ">
								<ul class="list-unstyled">
									<li>月薪： <%=c.salary %></li>
									<li>职位诱惑：</li>
									<li>
										<ul class="companyTags">
											<%
                                            String[] tags = c.Company.tag.Split(',');
                                            foreach(String t in tags)
                                            {
                                                Response.Write("<li>" + t + "</li>");
                                            }
                                            
                                            %>
													
										</ul>
									</li>
									<li>挑战项目：</li>
									<li>
										<ul>
											<% foreach(ox_project p in c.ProjectList) {%>
												<li><a href="./recruit-project-detail.aspx?pid=<%=p.projectid %>&reid=<%=c.challengeid %>"><%=p.description %></a></li>
											<%} %>	
										</ul>
									</li>
									<li>难度： 
										<%for(int i=0; i<c.challengelevel; ++i) {%>
                                        <i class="fa fa-star"></i>
										<%} %>
									</li><li><i class="fa fa-calendar"></i> <%=c.begintime %>~<%=c.endtime %></li>
									<li><i class="fa fa-user"></i> <%=c.codernum %>人已接受挑战</li>
									
									<li class="progress-info"><span class="ongoing"><br></span></li>
										
								</ul>

							</div>
							<!-- /.panel-body -->
							<div class="panel-footer align-center">
							
									<a href="./user-challenge-cover.aspx?reid=<%=c.challengeid %>"><button class="btn btn-new1">开始挑战</button></a>
									<a href="./user-cancel-challenge.aspx?reid=<%=c.challengeid %>" class="btn btn-new2">放弃</a>
										

							</div>
							<!-- /.panel-footer -->
						</div>
					</section>
				</div>
			<%} %>
						
					
				
				
			</div>

			
				<%--<div class="col-md-12">
					<section id="Section7">
						<ul class="pagination">
							
								<li class="disabled"><a href="javascript:;">«</a></li>
							
							
							 <li class="active"><a>1</a></li>

							
								<li class="disabled"><a href="javascript:;">»</a></li>
							
							
						</ul>
					</section>
				</div>--%>
			


		</div>
		<!-- /.row -->
	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="./user-recruit-list_files/jquery-1.11.0.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="./user-recruit-list_files/bootstrap.min.js"></script>

	<!-- Sparkline -->
	<script src="./user-recruit-list_files/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./user-recruit-list_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./user-recruit-list_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./user-recruit-list_files/bootstrap-filestyle.js"></script>



	<!-- Summernote -->
	<script src="./user-recruit-list_files/summernote.min.js"></script>

	<!-- Theme script -->
	<script src="./user-recruit-list_files/script.js"></script>
	<!-- 引入footer -->
	

    <div class="afooter">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="./contact-us.aspx">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./user-recruit-list_files/pic.gif"></a></span><script src="./user-recruit-list_files/z_stat.php" type="text/javascript"></script><script src="./user-recruit-list_files/core.php" charset="utf-8" type="text/javascript"></script>
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

	
	<!-- 这里是拍照的部分 -->
	


</body></html>
