﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin-add-project.aspx.cs" Inherits="OXCoderClient.admin_add_project" %>

<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>添加新项目</title>

    <!-- Bootstrap core CSS -->
    <link href="./css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="./css/dashboard.css" rel="stylesheet">
    <link href="./css/xreset.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/holder.js"></script>
  </head>

  <body class="fontChange">

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" style="color:#ffffff">OXcoder后台</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">
                <span class="glyphicon glyphicon-user" aria-hidden="true"/><span class="fontChange"> admin</span></a></li>
            <li><a href="#">
                <span class="glyphicon glyphicon-off" aria-hidden="true"/><span class="fontChange"> 退出</span></a></li>
            
          </ul>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li style="margin-left:20px; font-size:15px;margin-bottom:10px"><strong>用户管理</strong></li>
            <li class="active"><a href="#">
                <span class="glyphicon glyphicon-dashboard" aria-hidden="true"/><span class="fontChange"> 添加新项目</span></a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <form action="newproject.aspx" method="post">
              <p>项目名称：<input type="text" name="projectname" /></p>
              <p>项目描述：<textarea name="description" cols="100" rows="10"></textarea></p>
              <p>模版代码：<textarea name="template" cols="100" rows="10"></textarea></p>
              <p>难度：<input type="text" name="difficulty"/></p>
              <p>标签：<input type="text" name="tags" /></p>
              <p>类型：<input type="text" name="type" /></p>
              <input type="submit" value="提交" />
            </form>
          </div></div>
    </div>
    
  </body>
</html>
