<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file='/common/header.jsp'%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>配置列表</title>
<script type="text/javascript">
	function delete_onclick() {
		if (!window.confirm("确定删除吗？")) {
			return false;
		}

		return true;
	}

	function reset_onclick() {
		var objs = document.getElementsByTagName("INPUT");
		for (var i = 0; i < objs.length; i++) {
			if (objs[i].type == 'text') {
				objs[i].value = "";
			}
		}
	}
</script>
</head>

<body>
	<form action="/config/list" method="post" id="form">
		配置类型:<input type="text" name="kind" id="name">&nbsp;&nbsp;
		配置名称:<input type="text" name="description" id="phone">&nbsp;&nbsp;
		创建人:<input type="text" name="creatorId" id="creator_id">&nbsp;&nbsp;
		创建时间:<input type="text" name="createtime" id="createtime">&nbsp;&nbsp;
		<input type="submit" value="搜索" />&nbsp;&nbsp; <input type="button"
			value="清除" id="reset" onclick="reset_onclick()" />&nbsp;&nbsp; <a
			href="/config/addConfig.jsp">添加配置</a>&nbsp;&nbsp; <input
			type="hidden" name="currentPage" id="currentPage" /><input
			type="hidden" name="pageCount" id="pageCount" />
	</form>
	<br />
	<br />

	<table border="1" width="100%" cellpadding="0" cellspacing="0">
		<tr>
			<th>id</th>
			<th>配置类型</th>
			<th>配置名称</th>
			<th>状态</th>
			<th>创建人</th>
			<th>创建时间</th>
			<th>修改时间</th>
			<th>操作</th>

		</tr>
		<c:forEach var="config" items="${list}">
			<tr>
				<td>${config.id}</td>
				<td>${config.kind}</td>
				<td>${config.description}</td>
				<td>${config.status}</td>
				<td>${config.creatorId}</td>
				<td>${config.createtime }</td>
				<td>${config.modifytime }</td>
				<td align="center"><a href="selectConfig?id=${config.id }">修改</a>
					<a href="daleteConfig?id=${config.id }"
					onclick="return delete_onclick();">删除</a></td>
			</tr>
		</c:forEach>
	</table>
	<%-- <div style="float: right;">
		共${count}条&nbsp;&nbsp;共${configQuery.pageCount}页&nbsp;&nbsp; <a
			href="#" onclick="firstForm();">第一页</a>&nbsp;&nbsp; <a href="#"
			onclick="upForm();">上一页</a>&nbsp;&nbsp; <a href="#"
			onclick="nextForm();">下一页</a>&nbsp;&nbsp; <a href="#"
			onclick="lastForm();">最后一页</a>&nbsp;&nbsp;
	</div> --%>

</body>

<script type="text/javascript">
	function firstForm() {
		document.getElementById("currentPage").value = 1;
		document.getElementById("form").submit();
	}

	function upForm() {
		var tmp = document.getElementById("currentPage").value;
		if (1 == parseInt(tmp)) {
			alert("已经是第一页了！");
			return;
		}
		document.getElementById("currentPage").value = parseInt(tmp) - 1;
		document.getElementById("form").submit();
	}
	function nextForm() {
		var tmp = document.getElementById("currentPage").value;
		var tmpend = document.getElementById("pageCount").value;
		if (tmpend <= parseInt(tmp)) {
			alert("已经是最后一页了！");
			return;
		}
		document.getElementById("currentPage").value = parseInt(tmp) + 1;
		document.getElementById("form").submit();
	}

	function lastForm() {
		document.getElementById("currentPage").value = document
				.getElementById("pageCount").value;
		document.getElementById("queryForm").submit();
	}

	function reset() {
		document.getElementById("name").value = "";
		document.getElementById("phone").value = "";
		document.getElementById("creatorId").value = "";
		document.getElementById("createtime").value = "";
	}
</script>
</html>