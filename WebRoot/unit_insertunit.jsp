<%@ page contentType="text/html; charset=utf-8" language="java"  errorPage="" %>

<html>
<head>
<title>tree insert</title>
</head>

<body>  <h1 align=center>输入增加的信息</h1>
 <form action="insertunit.action" method="post"> 
 				id <input type="text" name="id"><br/>
    		 name <input type="text" name="name"><br/>
    	  parentId <input type="text" name="parentId"><br/>
    	  <input type="submit"  value="提交">
    	  <input type="reset"   value="重置">
      </form>  
</body>
</html>
