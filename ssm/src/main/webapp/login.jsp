<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	String path = request.getContextPath();
	String webContent = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("webContent", webContent);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/body.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css" />
<script type="text/javascript" src="${webContent}js/jquery.js"></script>
</head>
<body>
	<div class="container">
		<section id="content">
		<form id="loginForm" onsubmit="return login()" method="post">
			<h1>博客登录</h1>
			<div>
				<input type="text" name="username" placeholder="用户名" required="" id="username" />
			</div>
			<div>
				<input type="password" name="password" placeholder="密码" required="" id="password" />
			</div>
			<div class="login_error_tips" >
				<span class="help-block u-errormessage" id="js-server-helpinfo">&nbsp;</span>
			</div>
			<div>
				<!-- <input type="submit" value="Log in" /> -->
				<input type="submit" onclick="login()" value="登录" class="btn btn-primary"
					id="js-btn-login" />
				 <a href="${webContent}pages/findPwd.jsp">忘记密码？</a>
				 <a href="${webContent}pages/register.jsp">立即注册</a>
				<!-- <a href="#">Register</a> -->
			</div>
		</form>
		<!-- form -->
		
		<!-- button --> </section>
		<!-- content -->
	</div>
	<!-- container -->
	<script type="text/javascript">
		function login() {
			var username = $("#username").val();
			var password = $("#password").val();
			$.post("user/login?username=" + username + "&password=" + password,
					function(msg) {
						if (msg == 'success') {
							location.href = "${webContent}pages/main.jsp";
						} else {
							alert(msg);
						}
					});
		}
	</script>
</body>
</html>