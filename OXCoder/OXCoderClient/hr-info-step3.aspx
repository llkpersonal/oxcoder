﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hr-info-step3.aspx.cs" Inherits="OXCoderClient.hr_info_step3" %>

<!DOCTYPE html>
<!-- saved from url=(0043)http://www.oxcoder.com/hr-info-step3-to.htm -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="BootstrapStyler">

<title>猿圈 <%=cname %>企业完善企业信息
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
<link href="./hr-info-step3_files/style.css" rel="stylesheet" type="text/css">

<!-- Max css -->
<link href="./hr-info-step3_files/style_new.css" rel="stylesheet" type="text/css">

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
                    <a class="navbar-brand hidden-sm" href="http://www.oxcoder.com/index.htm" style="padding: 0;"><img src="./hr-info-step3_files/wlogo_sm.png" style="max-height: 35px;margin:7px;"></a>
                </div>
                <div class="navbar-collapse collapse" role="navigation">
                    <ul class="nav navbar-nav">
                        <li><a href="javascript:;">挑战管理</a></li>
                        <li><a href="javascript:;">人才推荐</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="http://www.oxcoder.com/hr-info-step3-to.htm#" class="dropdown-toggle" data-toggle="dropdown"><span class="text"><%=cname %></span> <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="javascript:;">去打赏</a></li>
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
						<img src="./hr-info-step3_files/corp_step2.png">
						<div class="tag-group">
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E4%BA%94%E9%99%A9%E4%B8%80%E9%87%91"><button class="btn btn-order">
										五险一金
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E5%B9%B4%E5%BA%95%E5%8F%8C%E8%96%AA"><button class="btn btn-order">
										年底双薪
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E8%82%A1%E4%BB%BD%E6%9C%9F%E6%9D%83"><button class="btn btn-order">
										股份期权
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E5%B9%B4%E7%BB%88%E5%88%86%E7%BA%A2"><button class="btn btn-order">
										年终分红
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E7%BB%A9%E6%95%88%E5%A5%96%E9%87%91"><button class="btn btn-order">
										绩效奖金
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E5%B2%97%E4%BD%8D%E6%99%8B%E5%8D%87"><button class="btn btn-order">
										岗位晋升
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E5%B9%B4%E5%BA%A6%E6%97%85%E6%B8%B8"><button class="btn btn-order">
										年度旅游
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E5%BC%B9%E6%80%A7%E5%B7%A5%E4%BD%9C"><button class="btn btn-order">
										弹性工作
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E5%85%8D%E8%B4%B9%E7%8F%AD%E8%BD%A6"><button class="btn btn-order">
										免费班车
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E6%89%81%E5%B9%B3%E7%AE%A1%E7%90%86"><button class="btn btn-order">
										扁平管理
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E6%8A%80%E8%83%BD%E5%9F%B9%E8%AE%AD"><button class="btn btn-order">
										技能培训
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E7%AE%A1%E7%90%86%E8%A7%84%E8%8C%83"><button class="btn btn-order">
										管理规范
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E8%8A%82%E6%97%A5%E7%A4%BC%E7%89%A9"><button class="btn btn-order">
										节日礼物
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E4%B8%93%E9%A1%B9%E5%A5%96%E9%87%91"><button class="btn btn-order">
										专项奖金
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E4%BA%A4%E9%80%9A%E8%A1%A5%E5%8A%A9"><button class="btn btn-order">
										交通补助
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E7%AE%A1%E5%90%83%E7%AE%A1%E4%BD%8F"><button class="btn btn-order">
										管吃管住
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E5%8D%88%E9%A4%90%E8%A1%A5%E5%8A%A9"><button class="btn btn-order">
										午餐补助
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E5%AE%9A%E6%9C%9F%E4%BD%93%E6%A3%80"><button class="btn btn-order">
										定期体检
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E5%B8%85%E5%93%A5%E5%A4%9A"><button class="btn btn-order">
										帅哥多
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E7%BE%8E%E5%A5%B3%E5%A4%9A"><button class="btn btn-order">
										美女多
									</button></a>
							
								<a href="hr-info-step3-handle.aspx?flag=add&strchoose=&chooseTagStr=%E9%A2%86%E5%AF%BC%E5%A5%BD"><button class="btn btn-order">
										领导好
									</button></a>
							
						</div>
						<div class="form-group">
							<div class="input-group">
								<input type="text" id="selftag" name="selftag" maxlength="4" class="form-control" placeholder="添加自定义标签">
								<div class="input-group-btn">
									<button type="button" class="btn btn-new1 dropdown-toggle" onclick="return addSelfTag()">添加</button>
								</div>
							</div>
						</div>

						<div class="tag-group">
							<%=tagsHtml %>
						</div>
						<span class="text-danger">您只能选择3个标签，要选择最有竞争力的3个呦~</span>
						<div class="form-group form-actions pull-right">
							<form action="hr-info-step3-handle2.aspx">
								<input type="hidden" name="tagstr" id="tagstr" value="">
								<button type="submit" class="btn btn-new1 btn-lg" style="border-radius: 3px;">保存&amp;下一步</button>
							</form>
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
	<script src="./hr-info-step3_files/jquery-1.11.0.min.js"></script>

	<!-- Bootstrap core JavaScript -->
	<script src="./hr-info-step3_files/bootstrap.min.js"></script>

	<!-- Sparkline -->
	<script src="./hr-info-step3_files/jquery.sparkline.min.js"></script>

	<!-- Bootstrap Switch -->
	<script src="./hr-info-step3_files/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Select -->
	<script src="./hr-info-step3_files/bootstrap-select.min.js"></script>

	<!-- Bootstrap File -->
	<script src="./hr-info-step3_files/bootstrap-filestyle.js"></script>



	<!-- Summernote -->
	<script src="./hr-info-step3_files/summernote.min.js"></script>

	<!-- Theme script -->
	<script src="./hr-info-step3_files/script.js"></script>

	<!-- 引入footer -->
	

    <div class="afooter navbar-fixed-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.action">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a> <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计"><img border="0" hspace="0" vspace="0" src="./hr-info-step3_files/pic.gif"></a></span><script src="./hr-info-step3_files/z_stat.php" type="text/javascript"></script><script src="./hr-info-step3_files/core.php" charset="utf-8" type="text/javascript"></script>
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



<script type="text/javascript">
    /**
	 * 添加自定义标签，验证输入 
	 */
    function addSelfTag() {

        var tag = $("#selftag").val();
        if (tag == null || tag == "") {
            alert("请输入标签");
            return;
        }
        //判断输入是否 过长
        if (tag.length > 4) {
            alert("标签长度过长");
            return false;
        } else if (tag.length < 3) {
            alert("标签长度过短");
            return false;
        }
        var a = "hr-info-step3-handle.aspx?flag=add&strchoose="
				+ $("#tagstr").val() + "&chooseTagStr=" + tag;
        window.location.replace(a);
        // window.location.href(a);

        return true;
    }

    function countlength(inputStar) {
        var bytesCount = 0;
        for (var i = 0; i < inputStar.length; i++) {
            var c = inputStar.charAt(i);
            if (/^[\u0000-\u00ff]$/.test(c)) {
                bytesCount += 1;
            } else {
                bytesCount += 2;
            }
        }
        return bytesCount;
    }


</script></body></html>