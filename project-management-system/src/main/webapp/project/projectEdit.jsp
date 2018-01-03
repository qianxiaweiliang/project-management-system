<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>创建编辑页</title>
  <%@include file="/include/resources_v3.jsp"%>
</head>
<body>
<jsp:include page="/include/header_v3.jsp"/>
<div class="crumbs">XXX管理<span>&gt;</span>创建编辑页</div>
<div class="main">
<div class="page-content">
<form action="/project/addorupdate/" data-selector="form-edit" method="post">
  <table class="table table-form">
    <tbody>
     <input type="hidden" name="id" value="${form.id}">
     <tr>
      <th><span class="help-required">*</span>项目来源：</th>
      <td><input class="text" type="text" name="projectSource" value="${form.projectSource}"></td>
     </tr>
     <tr>
      <th><span class="help-required">*</span>项目类型：</th>
      <td><input class="text" type="text" name="projectType" value="${form.projectType}"></td>
     </tr>
     <tr>
      <th><span class="help-required">*</span>项目名称：</th>
      <td><input class="text" type="text" name="projectName" value="${form.projectName}"></td>
     </tr>
     <tr>
      <th><span class="help-required">*</span>项目描述：</th>
      <td><input class="text" type="text" name="projectMemo" value="${form.projectMemo}"></td>
     </tr>
     <tr>
      <th><span class="help-required">*</span>级别：</th>
      <td><input class="text" type="text" name="level" value="${form.level}"></td>
     </tr>
     <tr>
      <th><span class="help-required">*</span>开始时间：</th>
      <td><input class="text" type="text" name="startTime" value="${form.startTime}"></td>
     </tr>
     <tr>
      <th><span class="help-required">*</span>结束时间：</th>
      <td><input class="text" type="text" name="endTime" value="${form.endTime}"></td>
     </tr>
     <tr>
      <th><span class="help-required">*</span>项目经理：</th>
      <td><input class="text" type="text" name="projectManager" value="${form.projectManager}"></td>
     </tr>
     <tr>
      <th><span class="help-required">*</span>项目组成员：</th>
      <td><input class="text" type="text" name="projectEmployees" value="${form.projectEmployees}"></td>
     </tr>
     <tr>
      <th><span class="help-required">*</span>工作总时长：</th>
      <td><input class="text" type="text" name="totalWorkingTime" value="${form.totalWorkingTime}"></td>
     </tr>
    </tbody>
  </table>
  <div class="form-actions text-center">
    <button type="submit" class="btn btn-primary">确定</button>
    <button type="button" class="btn" data-selector="back-btn">返回</button>
  </div>
</form>
</div>
<%@ include file="/include/statistic_v3.html"%>
</body>
<script> 
$(function(){ 
    var form = $('[data-selector="form-edit"]');
    LT.File.Js.load('http://concat.lietou-static.com/core/pc/js/common/plugins/jquery.valid.js,http://concat.lietou-static.com/core/pc/js/common/plugins/jquery.simpleValidTips.js',function(){
      form.valid({ 
        scan:function(data){
          if(!data.valid){
            $.each(data.result, function(i,n){
              !n.valid && n.element.trigger("highlight", true);
            });
            data.firstError.element.focus();
          }else{
            form.find(".text-error").removeClass("text-error");
          }
        },
        success:function(){
          return true;
        }
      });
      $('form [validate-rules]').SimpleValidTips()
    });
    //返回
    $('[data-selector="back-btn"]').bind("click", function () {
      history.back();
    });
 });
</script>
</html>