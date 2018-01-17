<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>更新配置</title>
</head>
<body>
<form action="/config/updateConfig" method="post">
	<font style="color:red"> ${msg}</font> <br/><br/>
	<!-- 隐藏id信息不展示 -->
	<input type="hidden" name="id" value="${configBean.id}"/>
	配置类型：<select name="kind">
				<option value="" selected="">-请选择-</option>
				<option value="0" selected="">-来源配置-</option>
				<option value="1" selected="">-人员配置-</option>
		   </select><br/>
	配置名称：<input type="text" name="description" value="${configBean.description}"/><br/>
	<input type="submit" value="提交">
</form>

</body>
</html>