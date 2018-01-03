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
<form action="/permission/addorupdate/" data-selector="form-edit" method="post">
  <table class="table table-form">
    <tbody>
     <input type="hidden" name="id" value="${form.id}">
     <tr>
      <th><span class="help-required">*</span>权限名称：</th>
      <td><input class="text" type="text" name="permissionName" value="${form.permissionName}"></td>
     </tr>
     <tr>
      <th><span class="help-required">*</span>备注：</th>
      <td><input class="text" type="text" name="memo" value="${form.memo}"></td>
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