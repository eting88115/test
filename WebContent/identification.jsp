<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>identification</title>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<!--===============================================================================================-->
</head>
<body>
<div class="limiter">
<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
    <div class="login100-form-title p-t-80 p-b-53">
                北護宿舍系統
                身分別登入
    </div>
    

	<input type="button" value="宿舍老師登入" style=" color:#F0F0F0;align-items: center;width: 15%;height: 60px; background-color: #333333;border-radius: 10px;" onclick="location.href='login-tr.jsp'">			
    &nbsp;&nbsp;
    <input type="button" value="學生登入" style=" color:#F0F0F0;align-items: center;width: 15%;height: 60px; background-color: #333333;border-radius: 10px;" onclick="location.href='login.jsp'">
</div>
</div>

</body>
</html>