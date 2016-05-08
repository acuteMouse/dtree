<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>警告</title>
    


  </head>
  
  <body>
    更新数据失败,请确保所填所有选项不为空!!!
    <input type="button" onclick="window.location.href='unit_updateunit.jsp'" value="返回上一步">
    <input type="button" onclick="window.location.href='select.action'" value="返回主页面">
  </body>
</html>
