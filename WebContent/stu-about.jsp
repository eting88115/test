<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>about</title>
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
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String sql = "SELECT stuID,stuName,subject,stuclass,phone,address,email FROM stuData";
	ResultSet rs = smt.executeQuery(sql);
	rs.next();
	%>
<div class="w3">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>
  
  <div class="w3-row" style="height:450px">
  <form class="login100-form validate-form flex-sb flex-w" action="stu-about_DBUpdate.jsp?stuID=<%=request.getParameter("stuID")%>">
    <div class="post" style=" margin-left: 600px">
      <h1 class="w3-text-teal"><b>�ӤH��ƭק�</b></h1>

    </div>
         <table>
              <tr><td><label for="stuID">�Ǹ�:</label><input type="text" name="stuID" placeholder="�п�J�Ǹ�" value="<%=rs.getString("stuID") %>"></td>
                  <td><label for="stuName">�m�W:</label><input type="text" name="stuName" placeholder="�п�J�m�W" value="<%=rs.getString("stuName") %>"></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="subject">��t:</label><input type="text" name="subject" placeholder="�п�J��t" value="<%=rs.getString("subject") %>"></td>
                  <td><label for="stuclass">�Z��:</label><input type="text" name="stuclass" placeholder="�п�J�Z��" value="<%=rs.getString("stuclass") %>"></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="phone">�q��:</label><input type="text" name="phone" placeholder="�п�J�q��" value="<%=rs.getString("phone") %>"></td>
                  <td><label for="address">�a�}:</label><input type="text" name="address" placeholder="�п�J�a�}" value="<%=rs.getString("address") %>"></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="email">�H�c:</label><input type="text" name="email" placeholder="�п�J�q�l�l��" value="<%=rs.getString("email") %>"></td>
              <tr><td>              
               		</td></tr><tr><td></td><td></td></tr>
         </table>
         <div class="login-button2">
            <input type="submit" value="�T�{�ק�" onclick="location.href='finishabout.jsp'">
            <input type="reset" value="�����ק�" onclick="location.href='stu-front.jsp'">
         </div>
  </form>
  </div>
  
  </div>
<!-- Footer -->
<%@ include file="pageend2.jsp" %>
</html>