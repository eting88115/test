<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="BIG5">
<title>stu-register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">

</head>
<body>

<!-- Header --->
<%@ include file="menu-stu.jsp" %>
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>
<form action="signUp_DB.jsp">
  <div class="w3-row" style="height:380px">
  <form class="login100-form validate-form flex-sb flex-w" action="signUp_DBSelect.jsp">
    <div class="post" style=" margin-left: 600px">
      <h1 class="w3-text-teal"><b>註冊帳號</b></h1>
      <%if (request.getParameter("status")!="" && request.getParameter("status")!=null){
							if(request.getParameter("status").equals("IDexist")){ %>
							<p><font color="red">帳號已存在，請登入或重新註冊!</font></p>
						<%}else{} }%>
    </div>
         <table>
              <tr><td><label for="stuID">學號:</label><input type="text" name="stuID" placeholder="請輸入學號" required></td>
                  <td><label for="stuPW">密碼:</label><input type="text" name="stuPW" placeholder="請輸入密碼" required></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="stuName">姓名:</label><input type="text" name="stuName" placeholder="請輸入姓名" required></td>
                  <td><label for="subject">科系:</label><input type="text" name="subject" placeholder="請輸入科系" required></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="class">班級:</label><input type="text" name="class" placeholder="請輸入班級" required></td>
                  <td><label for="phone">電話:</label><input type="text" name="phone" placeholder="請輸入電話" required></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="address">地址:</label><input type="text" name="address" placeholder="請輸入地址" required></td>
                  <td><label for="email">信箱:</label><input type="text" name="email" placeholder="請輸入電子郵件" required></td></tr><tr><td></td><td></td></tr>
         </table>
         <div class="login-button2">
            <input type="submit" value="確認註冊">
            <input type="reset" value="取消註冊">
         </div>
  </form>
  </div>
  </form>
  </div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>