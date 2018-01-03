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
  <form action="/project/list/" method="post">
    <table class="table-search">
      <tbody>
        <tr>
          <th>主键id：</th>
          <td><input class="text" type="text" name="id" value="${queryCondition.id}"></td>
          <th>项目来源：</th>
          <td><input class="text" type="text" name="project_source" value="${queryCondition.project_source}"></td>
          <th>项目类型：</th>
          <td><input class="text" type="text" name="project_type" value="${queryCondition.project_type}"></td>
        </tr>
        <tr>
          <th>项目名称：</th>
          <td><input class="text" type="text" name="project_name" value="${queryCondition.project_name}"></td>
          <th>项目描述：</th>
          <td><input class="text" type="text" name="project_memo" value="${queryCondition.project_memo}"></td>
          <th>级别：</th>
          <td><input class="text" type="text" name="level" value="${queryCondition.level}"></td>
        </tr>
        <tr>
          <th>开始时间：</th>
          <td><input class="text" type="text" name="start_time" value="${queryCondition.start_time}"></td>
          <th>结束时间：</th>
          <td><input class="text" type="text" name="end_time" value="${queryCondition.end_time}"></td>
          <th>项目经理：</th>
          <td><input class="text" type="text" name="project_manager" value="${queryCondition.project_manager}"></td>
        </tr>
        <tr>
          <th>项目组成员：</th>
          <td><input class="text" type="text" name="project_employees" value="${queryCondition.project_employees}"></td>
          <th>工作总时长：</th>
          <td><input class="text" type="text" name="total_working_time" value="${queryCondition.total_working_time}"></td>
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
          <th>项目来源</th>
          <th>项目类型</th>
          <th>项目名称</th>
          <th>项目描述</th>
          <th>级别</th>
          <th>开始时间</th>
          <th>结束时间</th>
          <th>项目经理</th>
          <th>项目组成员</th>
          <th>工作总时长</th>
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
        <td>${form.projectSource}</td>
        <td>${form.projectType}</td>
        <td>${form.projectName}</td>
        <td>${form.projectMemo}</td>
        <td>${form.level}</td>
        <td>${form.startTime}</td>
        <td>${form.endTime}</td>
        <td>${form.projectManager}</td>
        <td>${form.projectEmployees}</td>
        <td>${form.totalWorkingTime}</td>
        <td>${form.creatorId}</td>
        <td>${form.createtime}</td>
        <td>${form.modifytime}</td>
        <td>
          <a target="_blank" href="/project/detail/?id=${form.id}">查看</a>
          <a data-selector="edit" data-id="${form.id}" href="javascript:void(0)">编辑</a>
          <a data-selector="delete" data-id="${form.id}" href="javascript:void(0)">删除</a>
        </td>
      </tr>
      </c:forEach>   
    </tbody>
    <tfoot>
      <tr>
        <td colspan="15">
          <div class="float-left">合计：<span class="text-warning">${queryCondition.totalRows}</span>个</div>
          <div class="float-right"><liepin:pagingBar queryCondition="${queryCondition}" pageUrl="/project/list"/></div>
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
        url: "${pageContext.request.contextPath}/project/delete.json",
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
    var url = "/project/edit/?id="+id;
    window.location.href=url;
    //$.dialog.load(url).lock();
    return false;
  });
  //新增
  $('[data-selector="add"]').click(function(){
    var url = "/project/edit/?id=";
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