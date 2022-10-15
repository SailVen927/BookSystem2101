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
    
    <title>更新图书</title>
    
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

		}
		.searchtext .selectcheck{
			text-align:center;
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
		.check{
		text-align:center;
		}
		td{
		text-align:center;
		}

	</style>
	<script type="text/javascript">
		function seltarget(){
			setTimeout(window.location.href='getupd.jsp');
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
		<div class="functionview" style="padding-top:50px;">
			<form class="check" action="getupd.jsp" method="post">
			<h3 >修改图书</h3>
				<div class="searchtext" style="margin:16px;">
					要修改的图书编号：<input type="text" name="text" placeholder="请输入要修改的图书编号..."/>
				</div>
				<div class="selectcheck" id="selectcheck" >
					要修改的图书属性：<select name="col" style="margin:10px;">
					    <option value="">请选择</option>
						<option value="Bname">书名</option>
						<option value="Bprice">价格</option>
						<option value="Bstock">库存</option>
					</select>
				</div>
				<div class="searchtext" style="margin:10px;">
					修改为：<input type="text" name="check" placeholder="请输入修改后的数值..."/>
				</div>
				<div class="checkbtn">
					<button onclick="seltarget()" style="width:150px;margin-top:20px;background-color:#5fa3e7;color:white;border:2px solid #3485d5;font-weight: bolder;">修改</button>
				</div>
			</form><!--查询行end-->
			
		</div>
	</div>
	

</body>
</html>
