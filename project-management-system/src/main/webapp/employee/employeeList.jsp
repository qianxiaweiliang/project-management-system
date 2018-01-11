<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户管理</title>
</head>
<body>
  <div class="crumbs">
    用户管理<span>&gt;</span>列表页
  </div>
  <div>
    <div>
      <div>
        <form action="/employee/list/" method="post">
          <table>
            <tbody>
              <tr>
                <th>用户名：</th>
                <td><input type="text" name="username" value="${username}"></td>
                <th>姓名：</th>
                <td><input type="text" name="name" value="${name}"></td>
              </tr>
              <tr>
                <th>手机：</th>
                <td><input type="text" name="phone" value="${phone}"></td>
                <th>角色：</th>
                <td><input type="text" name="roleId" value="${roleId}"></td>
              </tr>
            </tbody>
          </table>
          <div>
            <button type="submit" data-selector="searchButton">搜索</button>
            <button type="button" data-selector="clear-form">清除</button>
            <button type="button" data-selector="add">新增</button>
          </div>
        </form>
      </div>
      <div>
        <table>
          <thead>
            <tr>
              <th>主键id</th>
              <th>用户名</th>
              <th>用户密码</th>
              <th>姓名</th>
              <th>手机</th>
              <th>邮箱</th>
              <th>角色id</th>
              <th>备注</th>
              <th>创建人</th>
              <th>创建时间</th>
              <th>修改时间</th>
              <th>操作</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${list}" var="form" varStatus="count">
              <tr>
                <td>${form.id}</td>
                <td>${form.username}</td>
                <td>${form.password}</td>
                <td>${form.name}</td>
                <td>${form.phone}</td>
                <td>${form.email}</td>
                <td>${form.roleId}</td>
                <td>${form.memo}</td>
                <td>${form.creatorId}</td>
                <td>${form.createtime}</td>
                <td>${form.modifytime}</td>
                <td><a target="_blank" href="/employee/detail/?id=${form.id}">查看</a> <a data-selector="edit" data-id="${form.id}" href="javascript:void(0)">编辑</a> <a data-selector="delete" data-id="${form.id}" href="javascript:void(0)">删除</a></td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </div>
  </div>
  <script>
			$(function() {
				$('[data-selector="delete"]')
						.click(
								function() {
									var id = $(this).data('id');
									vdialog
											.confirm(
													'您确认要删除吗？',
													function() {
														$
																.ajax({
																	url : "/employee/delete",
																	type : "POST",
																	dataType : "json",
																	data : {
																		"id" : id
																	},
																	success : function(
																			data) {
																		if (data.flag == 1) {
																			vdialog
																					.success(
																							"操作成功!",
																							function() {
																								location
																										.reload();
																							});
																		} else {
																			vdialog
																					.error(data.errmsg);
																		}
																	}
																});
													});
								});
				//编辑
				$('[data-selector="edit"]').click(function() {
					var id = $(this).data('id');
					var url = "/employee/edit/?id=" + id;
					window.location.href = url;
					return false;
				});
				//新增
				$('[data-selector="add"]').click(function() {
					var url = "/employee/edit/?id=";
					window.location.href = url;
					return false;
				});
				//清除
				$('[data-selector="clear-form"]').bind("click", function() {
					$(":text,select").val("");
				});
			});
		</script>
</body>
</html>