<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'insfaile.jsp' starting page</title>
    
	

  </head>
  
  <body>
   插入节点失败,请确保所有选项都不为空 <br>
   <input type="button" onclick="window.location.href='unit_insertunit.jsp'" value="返回上一步">
   <input type="button" onclick="window.location.href='select.action'" value="返回主页面">
  </body>
</html>
