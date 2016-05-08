<%@ page contentType="text/html; charset=gb2312" language="java"  errorPage="" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<jsp:directive.page import="java.util.List"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>tree</title>
</head>


<body>

	<s:iterator value="list">
	
	id:<s:property value="id"/>
	name:<s:property value="name"/>
	parentName:<s:property value="parentName"/> 

	</s:iterator>
	

</body>
</html>
