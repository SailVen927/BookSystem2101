<%@page import="org.dom4j.Document"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="OP.Book" %>
<%@ page import="OP.Method" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% List<Book> booklist=new ArrayList<Book>(); %>
<% request.setCharacterEncoding("utf-8");String check="";check=request.getParameter("check").trim();String col="";col=request.getParameter("selectcheck").trim(); %>
<% Method m=new Method();booklist=m.showSelect(col, check); %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>图书管理系统主页</title>
    
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
		table{
		table-border:3px;
		table-height:30px;
		margin-top:50px;
		}

	</style>
	<script type="text/javascript">
		function seltarget(){
			setTimeout(window.location.href='search.jsp');
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
			<form class="check" action="search.jsp" method="post" style="padding-left:30px;padding-top:10px;">
				<div class="searchtext" style="float:left;">
					查询条件：<input type="text" name="check" style="margin-right:10px;margin-top:8px;" placeholder="请输入对应数值..."/>
				</div>
				<div class="selectcheck" id="selectcheck"  style="margin:8px;float:left;">
					查询属性：<select name="selectcheck">
					    <option value="">请选择</option>
						<option value="Bid">编号</option>
						<option value="Bname">书名</option>
						<option value="Bprice">价格</option>
						<option value="Bstock">库存</option>
					</select>
				</div>
				<div class="checkbtn"  style="margin:8px;float:left;">
					<button onclick="seltarget()" style="width:70px;margin-left:20px;background-color:#5fa3e7;color:white;border:2px solid #3485d5;font-weight: bolder;">查 询</button>
				</div>
			</form><!--查询行end-->
			<div class="show">
				<div class="bookshow">
					<table border="0px" cellspacing="0px" width="560px">
        <tr style="background:#3485d5;color:white;">
            <th>编号</th>
            <th>书名</th>
            <th>价格</th>
            <th style="height: 40px; ">库存</th>
        </tr>
       
       <%for(Book n:booklist) {%>
       <tr>
       		<td style="height: 40px;background:	#E6E6FA;"><%=n.getBid() %></td>
       		<td><%=n.getBname() %></td>
       		<td style="background:	#E6E6FA;"><%=n.getBprice() %></td>
       		<td><%=n.getBstock() %></td>
       </tr>
       <%} %>
      
    </table>
				</div>
			</div>
		</div>
	</div>
	

</body>
</html>
