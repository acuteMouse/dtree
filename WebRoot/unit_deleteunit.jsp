<%@ page contentType="text/html; charset=gb2312" language="java"  errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:directive.page import="java.util.List"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>tree</title>
</head>







<body>
<p>请输入要删除的节点id</p> 
<form action="deleteunit.action" method="post">
 id<input type="text" name="id">
 <input type="submit" value="提交">
 
 </form>

</body>
</html>
