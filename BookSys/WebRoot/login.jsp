<%@page import="org.jaxen.Function"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    <base href="<%=basePath%>">
    
    <title>欢迎来到图书管理系统！</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
		body{
			margin: 0px;padding: 0px;
		}
		.body{
			padding: 200px;
			background: url("images/loginbg.jpg") 0 0 repeat;
			background-attachment: fixed;
		}
		.view{
			text-align: center;
			height: 300px;
			width: 500px;
			padding-top: 30px;
			padding-bottom: 30px; 
			background-color: rgba(255,240,245,0.7);
			border-radius: 20px;
		}
		.inputtext{
			margin: 20px;
			padding: 4px;
		}
		input{
			height:30px;
			width: 200px;
			border-radius: 4px;
		}
		label{
			font-weight: bold;
			font-size: 20px;
		}
		button{
			height: 30px;
			width: 80px;
			border-radius: 15px;
		}
	</style>

  </head>
  
  <body>
  
   <!--主体开始-->
	<div class="body" align="center">
		<form class="view" action="getlogin.jsp" method="post" name="myform">				<!--提交地址-->
			<div class="title">
			<h1>图书管理系统</h1>
			<h2 style="font-size: 16px;">管理员登录</h2>
		</div>
		<div style="background:black; height:2px;width:400px;margin-left:50px;"></div>
		<div class="inputtext">
			<label>账号：</label>
			<input type="text" name="name" placeholder="请输入用户名..."/>
		</div>
		<div class="inputtext">
			<label>密码：</label>
			<input type="password" name="pass" placeholder="请输入密码..."/>
		</div>
		<div class="loginbutton">
			<input type="submit" value="登录" name="submit" style="font-weight: bold;font-size:16px;">		<!--登录判断函数-->
		</div>
		</form>
		
		
	</div>
	<!--主体结束-->
  </body>
</html>
