<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>首页</title>
  <%@ include file="/common/header.jsp"%>
</head>
<body>
<form action="/employee/main" method="get">

	用户名：<input type="text" name="username"><br>
	密码：<input type="password" name="password"><br>
	<input type="reset" value="重置" >
	<input type="submit" value="提交" >

</form>
</body>
</html>