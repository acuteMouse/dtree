<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>tree 修改</title>

</head>
<body>
	<form action="updateunit" method="post">
 			输入节点id
	 <input type="text" name="id" >
 			输入修改后的节点名  <br>
 	<input type="text" name="name"> <br>
 		
 <input type="submit" value="提交"> 
 </form>
</body>
</html>
