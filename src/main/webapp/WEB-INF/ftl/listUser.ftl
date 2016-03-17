<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/WEB-INF/tlds/extremecomponents.tld" prefix="ec" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<link href="${pageContext.request.contextPath}/css/extremecomponents.css" rel="stylesheet" type="text/css">
		<title>ListUser</title>
	</head>
	<body>
	<div>
		<h2>显示用户</h2>
		<form action="${pageContext.request.contextPath}/demo/user/listUser.do" id="testForm">
			<a href="${pageContext.request.contextPath}/demo/user/addUser.do">添加用户</a>
			<table>
				<tr align="center">
					<th></th>
					<th><input type="text" id="name" name="name"/></th>
					<th><input type="text" id="age" name="age"/></th>
					<th><input type="text" id="phone" name="phone"/></th>
					<th><input type="button" name="submit" value="查询"/></th>
				</tr>
			</table>
		</form>
	</div>
	<br>
	<hr size="20" color="yellow">
	<br>
	<div>
		<ec:table
			imagePath="${pageContext.request.contextPath}/images/*.gif"
			items="users" var="vo"
			action="${pageContext.request.contextPath}/demo/user/listUser.do">
			<ec:row highlightRow="true">
				<ec:column property="name" title="姓名"/>
				<ec:column property="age" title="年龄"/>
				<ec:column property="phone" title="电话号"/>
				<ex.column property="uid" title="操作">
			 		<a href="${pageContext.request.contextPath}/demo/user/toUpdateUser.do?uid=${user.uid}">更新</a>|
					<a href="${pageContext.request.contextPath}/demo/user/deleteUser.do?uid=${user.uid}">删除</a>|
					<a href="${pageContext.request.contextPath}/demo/address/toAddNewAddress.do?uid=${user.uid}">添加新地址</a>
			 	</ex.column>
			</ec:row>
		</ec:table>
	</div>
	</body>
</html>