<%@page import="org.dom4j.Document"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="OP.Book" %>
<%@ page import="OP.Method" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>新增图书</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
		*{margin: 0px;padding: 0px;}
		.page{
			width: 800px;
			height:1200px;
			margin: 0 auto;
			background-color: #e7eaee;
		}
		.title{
			width: 800px;
			height: 200px;
			 background-image: url(img/loginbg.jpg);
			 background-position: 200px 270px;
		}
		.navview{
			text-align: center;
			width:160px;
			height: 400px;
			margin: 20px;
			padding-top: 40px;
			background-color: #5fa3e7; 
			float: left;
			border-radius: 10px;
		}
		.functionview{
			text-align: center;
			width: 560px;
			height: 1200px;
			background-color: white;
			float: left;
			border-radius: 10px;
			margin: 20px;
			padding-top:50px;

		}
		.function{
			width: 500px;
			height: 100px;
			margin: 40px;
			background-color: green;
		}
		.funcbtn{
			width: 500px;
			height: 100px;
			font-size: 40px;
			font-weight: bolder;
			font-family: "隶书";
		}
		.check{
			text-align:left;
		}
		input{
		margin:20px;
		}
		a{
		 text-decoration:none;
		 font-size: 16px;
			font-weight: bolder;
		 color: white;
		margin:0;
		display:block;
		height:50px;padding-top:25px;
		}
		a:hover{
		background:#3485d5;
		}

	</style>
	<script type="text/javascript">
		function backown(){
			setTimeout(window.location.href='getadd.jsp');
		}
	</script>
</head>
<body>
	<div class="page">
		<div class="title"></div>
		<div class="navview">
			<nav>
				<a href="homepage.jsp">图书信息查询</a><br>
				<a href="addbook.jsp">新增图书</a><br>
				<a href="updbook.jsp">修改图书信息</a><br>
				<a href="delbook.jsp">删除图书信息</a><br>
			</nav>
		</div>
		<div class="functionview">
			<form action="getadd.jsp" method="post">
			<h3>新增图书</h3>
				<div>
					<!-- 编号：<input type="text" name="bid"><br/> -->
					书名：<input type="text" name="bn" placeholder="请输入新增图书名字..."><br/>
					价格：<input type="text" name="bp" placeholder="请输入新增图书价格..."><br/>
					库存：<input type="text" name="bs" placeholder="请输入新增图书库存..."><br/>
					<button onclick="backown()" style="width:200px;margin-top:20px;background-color:#5fa3e7;color:white;border:2px solid #3485d5;font-weight: bolder;">新 增</button>
				</div>
			</form>
		</div>
	</div>
	

</body>
</html>
