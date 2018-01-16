<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file='/common/header.jsp'%>
<title>项目管理系统</title>

<script type="text/javascript">
	//给a标签注册一个事件
	$(function() {
		$("a[title]")
				.click(
						function() {
							var text = $(this).text();
							var href = $(this).attr("title");
							//1、判断当前右面，是否有tab，如果有切换到请求的tab，如果没有则新建一个tab
							if ($("#tt").tabs("exists", text)) {
								//切换到指定tab
								$("#tt").tabs("select", text);
							} else {
								//创建指定tab
								$("#tt")
										.tabs(
												"add",
												{
													title : text,
													closable : true,
													content : "<iframe title="
															+ text
															+ " src="
															+ href
															+ " framborder='0' width='100%' height='100%'  />"
												//href: href
												});
							}
						});
	});
</script>
<style type="text/css">
ul {
	list-style-type: none;
	font-size: 14px;
	font-family: "黑体";
	padding: 0px;
}

ul li {
	margin: 10px;
	padding: 0px;
}

ul li a:link, ul li a:visited {
	color: #20a0ff;
	text-decoration: none;
	text-align: left;
}

ul li a:hover, ul li a:active {
	color: #20a0ff;
	font-size: 16px;
	display: block;
	background-color: #c0ffff;
}
</style>
</head>

<body class="easyui-layout">
	<div data-options="region:'north',title:'项目管理系统',split:true"
		style="height: 100px;">
		<h2>项目管理系统</h2>
	</div>
	<div data-options="region:'west',title:'菜单栏',split:true"
		style="width: 200px;">
		<div id="aa" class="easyui-accordion" data-options="fit:true"
			style="width: 300px; height: 200px;">
			<div title="系统管理" data-options=""
				style="overflow: auto; padding: 10px;">
				<ul>
					<li><a href="#" title="/config/test">用户管理</a></li>
					<li><a href="#" title="">角色管理</a></li>
					<li><a href="#" title="">权限管理</a></li>
				</ul>
			</div>
			<div title="项目管理" data-options="" style="padding: 10px;">
				<ul>
					<li><a href="#" title="/project/list">项目管理</a></li>
				</ul>
			</div>
			<div title="配置管理" data-options="" style="padding: 10px;">
				<ul>
					<li><a href="#" title="/config/list?status=0">来源配置</a></li>
					<li><a href="#" title="/config/list?status=1">人员配置</a></li>
				</ul>
			</div>
		</div>

	</div>
	<div data-options="region:'center'"
		style="padding: 5px; background: #eee;">

		<div id="tt" class="easyui-tabs" data-options="fit:true">
			<div title="欢迎页" style="padding: 20px;">
				<p>欢迎使用！</p>

			</div>
		</div>
	</div>
	<div id="win"></div>
</body>
</html>