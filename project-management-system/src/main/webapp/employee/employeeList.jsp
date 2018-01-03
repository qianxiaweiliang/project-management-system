<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>列表页</title>
  <%@include file="/include/resources_v3.jsp"%>
</head>
<body>
<jsp:include page="/include/header_v3.jsp"/>
<div class="crumbs">XXX管理<span>&gt;</span>列表页</div>
<div class="main">
<div class="page-content">
  <div class="search-area">
  <form action="/employee/list/" method="post">
    <table class="table-search">
      <tbody>
        <tr>
          <th>主键id：</th>
          <td><input class="text" type="text" name="id" value="${queryCondition.id}"></td>
          <th>用户名：</th>
          <td><input class="text" type="text" name="username" value="${queryCondition.username}"></td>
          <th>用户密码：</th>
          <td><input class="text" type="text" name="password" value="${queryCondition.password}"></td>
        </tr>
        <tr>
          <th>姓名：</th>
          <td><input class="text" type="text" name="name" value="${queryCondition.name}"></td>
          <th>手机：</th>
          <td><input class="text" type="text" name="phone" value="${queryCondition.phone}"></td>
          <th>邮箱：</th>
          <td><input class="text" type="text" name="email" value="${queryCondition.email}"></td>
        </tr>
        <tr>
          <th>角色id：</th>
          <td><input class="text" type="text" name="role_id" value="${queryCondition.role_id}"></td>
          <th>备注：</th>
          <td><input class="text" type="text" name="memo" value="${queryCondition.memo}"></td>
          <th>创建人：</th>
          <td><input class="text" type="text" name="creator_id" value="${queryCondition.creator_id}"></td>
        </tr>
        <tr>
          <th>创建时间：</th>
          <td><input class="text" type="text" name="createtime" value="${queryCondition.createtime}"></td>
          <th>修改时间：</th>
          <td><input class="text" type="text" name="modifytime" value="${queryCondition.modifytime}"></td>
       </tr>
      </tbody>
    </table>
    <div class="form-actions text-center">
      <button type="submit" class="btn btn-primary" data-selector="searchButton">搜索</button>
      <button type="button" class="btn" data-selector="clear-form">清除</button>
      <button type="button" class="btn btn-primary" data-selector="add">新增</button>
    </div>
  </form>
  </div>
  <div class="table-box">
  <table class="table table-data table-striped table-hover table-text-center">
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
        <td>
          <a target="_blank" href="/employee/detail/?id=${form.id}">查看</a>
          <a data-selector="edit" data-id="${form.id}" href="javascript:void(0)">编辑</a>
          <a data-selector="delete" data-id="${form.id}" href="javascript:void(0)">删除</a>
        </td>
      </tr>
      </c:forEach>   
    </tbody>
    <tfoot>
      <tr>
        <td colspan="12">
          <div class="float-left">合计：<span class="text-warning">${queryCondition.totalRows}</span>个</div>
          <div class="float-right"><liepin:pagingBar queryCondition="${queryCondition}" pageUrl="/employee/list"/></div>
        </td>
      </tr>
    </tfoot>
  </table>
  </div>
</div>
</div>
<script>
$(function(){
    $('[data-selector="delete"]').click(function(){
    var id = $(this).data('id');
    vdialog.confirm('您确认要删除吗？',function(){
      $.ajax({
        url: "${pageContext.request.contextPath}/employee/delete.json",
        type: "POST",
        dataType: "json",
        data: {"id":id},
        success: function(data){
          if(data.flag == 1) {
            vdialog.success("操作成功!",function(){
               location.reload();
            });
          }else{
            vdialog.error(data.errmsg);
          }
        }
      });
    });
  });
  //编辑
  $('[data-selector="edit"]').click(function(){
    var id = $(this).data('id');
    var url = "/employee/edit/?id="+id;
    window.location.href=url;
    //$.dialog.load(url).lock();
    return false;
  });
  //新增
  $('[data-selector="add"]').click(function(){
    var url = "/employee/edit/?id=";
    window.location.href=url;
    //$.dialog.load(url).lock();
    return false;
  });
  //清除
  $('[data-selector="clear-form"]').bind("click", function () {
    $(":text,select").val("");
  });
});
</script>
<%@ include file="/include/statistic_v3.html"%>
</body>
</html>