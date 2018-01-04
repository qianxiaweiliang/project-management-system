<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<%@include file='/public/header.jspf'%>
<title>ESC | 后台主页</title>

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
 ul{
   list-style-type:none;
   font-size:14px;
   font-family: "黑体";
   padding: 0px;
 }
 ul li{
   margin: 10px;
   padding:0px;
  
 }
 
 ul li a:link,ul li a:visited{
    color:#20a0ff;
    text-decoration: none;
    text-align: left;
    
 }
 
 ul li a:hover,ul li a:active{
   color:#20a0ff;
   font-size: 16px;
   display: block;
   background-color:#c0ffff;
 }
</style>
</head>

<body class="easyui-layout">
	<div data-options="region:'north',title:'ESC后台',split:true"
		style="height:100px;">
		<h2>ESC后台</h2>
	</div>
	<!--  
	<div data-options="region:'south',title:'South Title',split:true"
		style="height:100px;"></div>
	
	<div
		data-options="region:'east',iconCls:'icon-reload',title:'East',split:true"
		style="width:100px;"></div>
	-->
	<div data-options="region:'west',title:'系统菜单',split:true"
		style="width:200px;">
		<div id="aa" class="easyui-accordion" data-options="fit:true"
			style="width:300px;height:200px;">
			<div title="系统管理" data-options="" style="overflow:auto;padding:10px;">
				<ul>
					<li><a href="#" title="<%=request.getContextPath() %>/user/select.do">用户管理</a></li>
					<li><a href="#" title="<%=request.getContextPath() %>/product/select.do">商品管理</a></li>
					<li><a href="#" title="<%=request.getContextPath() %>/orders/select.do">订单管理</a></li>
				</ul>
			</div>
			<div title="库存管理" data-options="" style="padding:10px;">
				<ul>
					<li><a href="#" title="<%=request.getContextPath() %>/inventory/in.do">入库管理</a></li>
					<li><a href="#" title="<%=request.getContextPath() %>/inventory/query.do">库存查询</a></li>
				</ul>
			</div>
		</div>

	</div>
	<div data-options="region:'center',title:'后台操作'"
		style="padding:5px;background:#eee;">

		<div id="tt" class="easyui-tabs" data-options="fit:true">
			<div title="系统缺省页面" style="padding:20px;">
				<p>此处用以以后显示系统信息</p>

			</div>
		</div>
	</div>
	<div id="win"></div>
</body>

</html>
