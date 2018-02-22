<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>首页</title>
<%@ include file="/common/header.jsp"%>
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

	function enter_onclick() {
		checklogin();
		return false;
	}

	function checklogin() {
		if ($("#username").val() == "") {
			alert("用户名不能为空！");
			$("#username").focus();
			return false;
		}
		if ($("#password").val() == "") {
			alert("密码不能为空！");
			$("#password").focus();
			return false;
		}
		$.ajax({
			type : "POST",
			url : "/employee/login.json",
			data : "username=" + $("#username").val().toString() + "&password="
					+ $("#password").val().toString(),
			success : function(data) {
				if (data.key == 1) {
					location.href = "/common/main.jsp";
					return true;
				} else {
					alert(data.value);
					$("#username").val("");
					$("#password").val("");
					$("#username").focus();
					return false;
				}
			}

		})
	}

	function keyLogin(){
  		if (event.keyCode==13)  //回车键的键值为13
  		   document.getElementByIdx_x("sumbit").click(); //调用登录按钮的登录事件
  		}
</script>
</head>
<body>
  <form action="/employee/login.json" method="get">

    用户名：<input type="text" id="username" name="username"><br>
    密码：<input type="password" id="password" name="password"><br> 
     <input type="reset" id="reset" name="reset" value="重置"> 
     <input type="button" id="sumbit" name="sumbit" onclick="return enter_onclick()" value="提交">

  </form>
</body>
</html>