<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>tr-SearchStuApply</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
</head>
<body>

<!-- Header --->
	<%@ include file="menu-tr.jsp" %>
<!-- Sidebar -->

 
<!-- Header -->
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>

  <div class="w3-row" style="height:400px">
    <div class="post" style=" margin-left: 550px">
    <h1 class="w3-text-teal"><b>申請單查詢主畫面</b></h1>
	</div>
	
	<div class="search-studentName" style="margin-left: 515px;margin-top: 50px">
	<form action="tr-StuApply.jsp" method="post">
	<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con = DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String sql = "SELECT stuName FROM studentApply";
	ResultSet rs = smt.executeQuery(sql);
	%>
	<label for="search-student" style="font-weight: bold ;font-size: 20px ;">請選擇學生姓名:</label>
	<select name="name" style="width:90px; height:25px; font-size: 18px">
           <%while(rs.next()){ %>
              <option value="<%=rs.getString("stuName")%>"><%=rs.getString("stuName") %></option>
          <%}con.close();%>   
 	</select>
	<input type="submit" value="查詢">
	</form>
	</div>
	</div>
	
	</div>
<!-- Footer -->
<%@ include file="pageend2.jsp" %>
</html>