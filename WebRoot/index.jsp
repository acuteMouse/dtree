<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.unitBean.Unit"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="s" uri="/struts-tags"%>

<html>
  <head>
    <title>unit</title>
   
	<link rel="StyleSheet" href="dtree.css" type="text/css" />
	<script type="text/javascript" src="dtree.js"></script>
  </head>
  <body ><div class="dtree"  >
 
   <script type="text/javascript">
   d=new dTree('d');

   d.add(0,-1,'��Ŀ¼' );
   <s:iterator value="list">  
   d.add(<s:property value="id"/>,<s:property value="parentId"/>,'<s:property value="name"/>');
   </s:iterator>  
   document.write(d); 
   


   </script>       
   </div>    
   
		
<input type="button" onclick="window.location.href='select.action'" value="��ѯ">
<input type="button" onclick="window.location.href='unit_insertunit.jsp'" value="����һ���ڵ�">
<input type="button" onclick="window.location.href='unit_deleteunit.jsp'" value="ɾ��һ���ڵ�">
<input type="button" onclick="window.location.href='unit_updateunit.jsp'" value="�޸Ľڵ�">
  </body>
</html>
