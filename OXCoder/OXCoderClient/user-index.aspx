<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user-index.aspx.cs" Inherits="OXCoderClient.user_index" %>
<%@ Import namespace="OXCoder.DBModel" %>
<!DOCTYPE html>
<!-- saved from url=(0032)http://www.oxcoder.com/index.htm -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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


    <link href="Font-Awesome-3.2.1\css\font-awesome.min.css" rel="stylesheet">
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
    <style type="text/css">
        .jqstooltip {
            position: absolute;
            left: 0px;
            top: 0px;
            visibility: hidden;
            background: rgb(0, 0, 0) transparent;
            background-color: rgba(0,0,0,0.6);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
            -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
            color: white;
            font: 10px arial, san serif;
            text-align: left;
            white-space: nowrap;
            padding: 5px;
            border: 1px solid white;
            z-index: 10000;
        }

        .jqsfield {
            color: white;
            font: 10px arial, san serif;
            text-align: left;
        }
    </style>
</head>

<body style="">

    <!-- 引入header -->



    <div class="navbar navbar-default navbar-fixed-top" onload="validateSession()">
        <div class="container">
            <div class="navbar-header">
                <button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                </button>
                <a class="navbar-brand hidden-sm" href="./user_index_files/user_index.aspx" style="padding: 0;">
                    <img src="./user_index_files/wlogo_sm.png" style="max-height: 35px; margin: 7px;"></a>
            </div>
            <div class="navbar-collapse collapse" role="navigation">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="./user_index_files/user_index.aspx">首页</a></li>
                    <li><a href="./user-recruit-list.aspx">挑战</a></li>


                    <li><a href="./user-resume.aspx">个人中心</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">

                    <li class="dropdown"><a href="./index.aspx" class="dropdown-toggle" data-toggle="dropdown"><span class="text">你好，</span> <%=Session["name"] %> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="./user-to-change-pwd.aspx">修改密码</a></li>
                            <li><a href="./logout.aspx">注销</a></li>
                        </ul>
                    </li>
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

        <a class="left carousel-control" href="http://www.oxcoder.com/index.htm#myCarousel" role="button" data-slide="prev">
            <!--
<span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
-->
        </a><a class="right carousel-control" href="http://www.oxcoder.com/index.htm#myCarousel" role="button" data-slide="next">
            <!--
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
                            <option value="Java">Java</option>
                            <option value="Android">Android</option>
                            <option value="iOS">iOS</option>
                            <option value="C语言">C语言</option>
                            <option value="C++">C++</option>
                            <option value="php">php</option>
                            <option value="python">python</option>

                        </select>
                    </div>
                    <div class="col-md-2 col-no-left-padding" style="margin-bottom: 10px;">
                        <select id="select-salary" class="form-control">
                            <option selected="" value="0">起始薪资</option>
                            <option value="2k~5k">2k~5k</option>
                            <option value="5k~8k">5k~8k</option>
                            <option value="8k~10k">8k~10k</option>
                            <option value="10k~12k">10k~12k</option>
                            <option value="12k~15k">12k~15k</option>
                            <option value="15k以上">15k以上</option>
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
                        <form class="input-group">
                            <input name="salary" id="input-salary" type="hidden" value="0">
                            <input name="province" id="input-province" type="hidden" value="">
                            <input name="retype" id="input-retype" type="hidden" value="0">
                            <input name="flag" id="input-flag" type="hidden" value="0">
                            <input name="selectedProvince" id="input-selected-province" type="hidden" value="14">
                            <input name="selectedCity" id="input-selected-city" type="hidden" value="1401">
                            <input name="searchCondition" id="keyword" class="form-control" placeholder="请输入关键词，如公司名称等" value="">
                            <span class="input-group-btn">
                            <button id="sub-key-btn" type="submit" class="btn"><i class="icon-search"></i></button>
                            </span>
                        </form>
                    </div>
                </section>
            </div>
            <div class="col-md-4 col-no-left-padding col-md-offset-8" style="margin-top: 20px;">
                <section id="middle" style="margin-bottom: 20px;">
                    排序： 
                    <a href="javascript:void(0);" data-type="time" class="btn btn-order" <%if (null == orderByColumn || "time".Equals(orderByColumn)) {%>id="btn-order-on"<%} %>>时间</a>
                    <a href="javascript:void(0);" data-type="hotpoint" class="btn btn-order" <%if ("hotpoint".Equals(orderByColumn)) {%>id="btn-order-on"<%} %>>热度</a>
                    <a href="javascript:void(0);" data-type="salary" class="btn btn-order" <%if ("salary".Equals(orderByColumn)) {%>id="btn-order-on"<%} %>>薪资</a>
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
                            <div class="woo-tmpmasn woo-pcont woo-masned" style="position: relative; height: 0; overflow: hidden; margin: 0; padding: 0;"></div>
                            <div class="woo-pcont woo-masned" data-totalunits="600" style="position: relative; width: 1150px; visibility: visible; height: 1368px;">
                                <!-- .woo-pcont 节点内可预先放好若干个单元(个数没有限制) -->
                                <!-- 预先放置的会被当做第一子页数据，后面会直接从第二子页开始 -->
                                <!-- 可以选择不放置 -->
                            <%foreach(OXChallengeDetail c in challengeList){ %>
                                <div class="col-xs-12 col-lg-3 col-md-4 woo co0" data-ht="456" data-idx="0" style="top: 0px; left: 0px;">
                                    <section id="Section1">
                                        <div class="panel panel-default shadow-effect">
                                            <div class="col-xs-12 panel-header">
                                                <div class="pull-left">
                                                    <h4 title="<%=c.challengename %>" class="line-control"><a href="./battle-detail.aspx?reid=<%=c.challengeid %>"><%=c.challengename %></a></h4>
                                                    <h4 title="<%=c.Company.companyname %>" class="line-control"><a href="./user-corp-detail.aspx?cid=<%=c.Company.userid %>"><%=c.Company.companyname %></a></h4>
                                                </div>
                                                <div class="pull-right client-info hidden-md"><span class="percent text-danger">
                                                    <img class="img-circle" style="width: 60px; height: 60px" src="./logo/<%=c.Company.logo %>"></span>                                    </div>
                                            </div>
                                            <div class="panel-body ">
                                                <ul class="list-unstyled">
                                                    <li>月薪： <%=c.salary %></li>
                                                    <li>职位诱惑：</li>
                                                    <li>
                                                        <ul class="companyTags">
                                                            <%
                                                            String[] tags = c.Company.tag.Split(';');
                                                            for(int i=0; i<tags.Length-1; ++i)
                                                            {
                                                                Response.Write("<li>" + tags[i] + "</li>");
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
                                                        <i class="icon-star"></i>
										                <%} %>
                                                    </li>
                                                    <li><i class="icon-calendar"></i> <%=((DateTime)c.begintime).ToShortDateString() %>~<%=((DateTime)c.endtime).ToShortDateString() %></li>
									                <li><i class="icon-user"></i> <%=c.codernum %>人已接受挑战</li>
                                                </ul>
                                            </div>
                                            <!-- /.panel-body -->
                                            <div class="panel-footer align-center"><a href="./user-choose-challenge.aspx?reid=<%=c.challengeid %>">
                                                <button class="btn btn-new1">接受挑战</button></a>	          					                            </div>
                                            <!-- /.panel-footer -->
                                        </div>
                                    </section>
                                </div>
                            <%} %>
                            <div class="col-md-12 woo-pager" style="display: none;"></div>
                            <div id="woo-loading" class="woo-loading" style="visibility: hidden;"></div>
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

        <form id="woo-form-album" action="http://www.oxcoder.com/battle.aspx?page=">
            <input type="hidden" name="flag" value="0">
            <input type="hidden" name="salary" value="0">
            <input type="hidden" name="location" value="">
            <input type="hidden" name="key" value="">
            <input type="hidden" name="retype" value="0">
        </form>
    </div>
    <script type="text/javascript">

        $("#select-retype").change(orderDisplay);
        $("#select-salary").change(orderDisplay);
        $("#province").change(orderDisplay);
        $("#sub-key-btn").click(orderDisplay);
        
        $("a.btn.btn-order").click(function () {
            $("a.btn.btn-order").removeAttr("id");
            $(this).attr("id", "btn-order-on");
            orderDisplay();
        });

        function orderDisplay()
        {
            var query = "./user-index.aspx?";
            if ($("#select-retype").val() != "0")
            {
                query += "retype=" + $("#select-retype").val();
            }
            if ($("#select-salary").val() != "0") {
                query += "&salary=" + $("#select-salary").val();
            }
            if ($("#province").val() != "0") {
                query += "&province=" + $("#province").val();
            }
            if ($("#keyword").val() != "") {
                query += "&key=" + $("#keyword").val();
            }

            query += "&orderByColumn=" + $("a.btn.btn-order[id='btn-order-on']").attr("data-type");

            location.href = query;

        }

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
    
    <!-- 引入footer -->


    <div class="afooter navbar-fixed-bottom">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    © 2015 oxcoder.com <a href="http://www.oxcoder.com/contact-us.aspx">联系我们</a> <a href="http://jq.qq.com/?_wv=1027&k=eeKvVb" target="_blank">QQ交流群:77590762</a> <a href="http://www.mikecrm.com/f.php?t=7GdYKp" target="_blank">意见反馈</a>
                    <script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1253509620'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s23.cnzz.com/z_stat.php%3Fid%3D1253509620%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
                    <span id="cnzz_stat_icon_1253509620"><a href="http://www.cnzz.com/stat/website.php?web_id=1253509620" target="_blank" title="站长统计">
                        <img border="0" hspace="0" vspace="0" src="./user_index_files/pic.gif"></a></span><script src="./user_index_files/z_stat.php" type="text/javascript"></script><script src="./user_index_files/core.php" charset="utf-8" type="text/javascript"></script>
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


</body>
</html>
