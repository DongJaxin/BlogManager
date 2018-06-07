<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String webContent = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("webContent", webContent);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改密码</title>
<link rel="stylesheet" href="${webContent}css/bootstrap.min.css" />
<link rel="stylesheet" href="${webContent}css/style.css" />
<script type="text/javascript" src="${webContent}js/bootstrap.min.js"></script>
<script type="text/javascript" src="${webContent}js/jquery.js"></script>
</head>
<body>
	<div class="whole" style="background:url(../images/loginbg3.png); no-repeat ; center ; width:100%; height:585px; overflow:hidden; position:absolute; top:94px;padding:20px;">
	<div class="container" style="width: 440px; margin-top: 16%;">
	<div style="">
				<a>修改图片</a>
			</div>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="form-group">
					<div class="col-sm-10" style="margin:5px">
						<a>用户名</a>
						<input id="username" name="username" class="form-control"
							type="text" placeholder="用户名"  />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-10" style="margin:5px">
						<a>密码</a>
						<input id="password" name="password" class="form-control"
							type="password" placeholder="密码"  />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-10" style="margin:5px">
						<a>手机号</a>
						<input id="phone" name="phone" class="form-control" type="text" placeholder="手机号"  />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-10" style="margin:5px">
						<a>邮箱</a>
						<input id="email" name="email" class="form-control" type="text" placeholder="邮箱"  />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10" style="text-align: left;">
						<input class="btn btn-default" type="button" style="width: 100px;"
							value="修改密码" onclick="findpwd()" /> 
							<a href="${webContent}login.jsp">&nbsp;&nbsp;登录</a>
							<a href="${webContent}pages/register.jsp">&nbsp;|&nbsp;注册帐号</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script type="text/javascript">
		function findpwd() {
			var username = $("#username").val();
			var password = $("#password").val();
			var phone = $("#phone").val();
			var email = $("#email").val();
			$.post("${webContent}user/findpwd?username=" + username + "&password=" + password + "&phone=" + phone + "&email=" + email,
				function(msg) {
					if (msg == 'success') {
						location.href = "${webContent}login.jsp";
					} else {
						alert(msg);
					}
			});
		}
	</script>
</body>
</html>