<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>详情页</title>
  <%@include file="/include/resources_v3.jsp"%>
</head>
<body>
<jsp:include page="/include/header_v3.jsp"/>
<div class="crumbs">XXX管理<span>&gt;</span>详情页</div>
<div class="main">
<div class="page-content"> 
  <table class="table table-form"> 
    <tbody> 
        <tr> 
      <th width="200">主键id：</th> 
      <td>${form.id}</td>
    </tr>
    <tr> 
      <th width="200">角色名称：</th> 
      <td>${form.roleName}</td>
    </tr>
    <tr> 
      <th width="200">备注：</th> 
      <td>${form.memo}</td>
    </tr>
    <tr> 
      <th width="200">创建人：</th> 
      <td>${form.creatorId}</td>
    </tr>
    <tr> 
      <th width="200">创建时间：</th> 
      <td>${form.createtime}</td>
    </tr>
    <tr> 
      <th width="200">修改时间：</th> 
      <td>${form.modifytime}</td>
    </tr>
    </tbody>
  </table>
  <div class="form-actions text-center">
    <button type="button" class="btn" data-selector="back-btn">返回</button>
  </div>
</div>
<%@ include file="/include/statistic_v3.html"%>
</body>
<script>
$(function(){
  //返回
  $('[data-selector="back-btn"]').bind("click", function () {
    //history.back();
    window.close();
  });
});
</script>
</html>