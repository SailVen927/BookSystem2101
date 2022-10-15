<%@page import="OP.Method"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
   <script type = "text/javascript">
  window.onload = function()
        {	
        <%String name=request.getParameter("name");String pass=request.getParameter("pass");%>
        <%Method m=new Method();int re=m.checkLogin(name, pass);if(re==0){%>
           alert('用户名不存在！');
           setTimeout(window.location.href='login.jsp');
           <%}else if(re==2){%>
            alert('用户名或密码错误！');
            setTimeout(window.location.href='login.jsp');
           <%}else{%>
           setTimeout(window.location.href='homepage.jsp');
           <%}%>
        }
  
       
    </script>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录中...</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body> 
  </body>
</html>
