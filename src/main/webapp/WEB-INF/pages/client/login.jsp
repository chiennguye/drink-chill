<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>Laptop Shop - Đăng nhập</title>
<link rel="stylesheet" href="Frontend/css/login.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>


	<c:set var="contextPath" value="${pageContext.request.contextPath}" />
	<div class="login-page">
		<div class="form">
		    <h2 class="form-signin-heading" style="text-align: center">LaptopShop - Đăng nhập</h2>
		    <hr>
			<c:if test="${param.error != null}">
				<div class="alert alert-danger">
					<p>Tên đăng nhập hoặc mật khẩu không đúng.</p>
				</div>
			</c:if>
			<c:if test="${param.logout != null}">
				<div class="alert alert-success">
					<p>Bạn đã đăng xuất thành công.</p>
				</div>
			</c:if>
			<c:if test="${param.accessDenied != null}">
				<div class="alert alert-danger">
					<p>Bạn không có quyền truy cập vào trang này</p>
				</div>
			</c:if>

			<form class="login-form" method="POST" action="${contextPath}/login">
			    
				<input type="text" placeholder="Email" name="email" required="required" style="padding:  10px;"/> 
				
				<input type="password" placeholder="Mật khẩu" name="password" required="required" style="padding:  10px;" /> 
				
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				
                <label style="padding-right: 130px; font-size: 15px;" id="label">
                    <input type="checkbox" class="form-check-input" id="" name="remember-me">
                     Duy trì đăng nhập</label>
				
				<input id="submit" type="submit" value="ĐĂNG NHẬP">
				<p class="message" style="font-size: 18px; padding-top:10px"> Chưa có tài khoản? <a href="<c:url value='/register'/> ">Tạo tài khoản mới</a></p>
			</form>
		</div>
	</div>

	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

</body>
</html>