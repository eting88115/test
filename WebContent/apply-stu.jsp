<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="BIG5">
<title>apply</title>
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
      <h1 class="w3-text-teal"><b>���U�b��</b></h1>
      <%if (request.getParameter("status")!="" && request.getParameter("status")!=null){
							if(request.getParameter("status").equals("IDexist")){ %>
							<p><font color="red">�b���w�s�b�A�еn�J�έ��s���U!</font></p>
						<%}else{} }%>
    </div>
         <table>
              <tr><td><label for="stuID">�Ǹ�:</label><input type="text" name="stuID" placeholder="�п�J�Ǹ�" required></td>
                  <td><label for="stuPW">�m�W:</label><input type="text" name="stuPW" placeholder="�п�J�m�W" required></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="stuName">��t:</label><input type="text" name="stuName" placeholder="�п�J��t" required></td>
                  <td><label for="subject">�Z��:</label><input type="text" name="subject" placeholder="�п�J�Z��" required></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="class">�q��:</label><input type="text" name="class" placeholder="�п�J�q��" required></td>
                  <td><label for="phone">�a�}:</label><input type="text" name="phone" placeholder="�п�J�a�}" required></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="address">�H�c:</label><input type="text" name="address" placeholder="�п�J�q�l�l��" required></td>
                  <td><label for="email">�и�:</label><input type="text" name="email" placeholder="�п�J�и�" required></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="address">�ɮ�:</label><input type="file" name="address" placeholder="�ФW���ɮ�" required></td></tr><tr><td></td><td></td></tr>
         </table>
         <div class="login-button2">
            <input type="submit" value="�T�{���U" onclick="location.href='finishapply-stu.jsp'">
            <input type="reset" value="�������U" onclick="location.href='stu-front.jsp'">
         </div>
  </form>
  </div>
  </form>
  </div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>