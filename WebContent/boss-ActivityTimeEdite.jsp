<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>ActivityTimeEdite</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">

</head>
<body>

<!-- Header --->
<%@ include file="menu-boss.jsp" %>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>
  <%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String sql = "SELECT activity1_start, activity1_end, activity2, activity3, activity4_start, activity4_end, activity5_start, activity5_end, activity6 FROM ActivityTime ";
	ResultSet rs = smt.executeQuery(sql);
	rs.next();
	%>
<form action="boss-ActivityTime_DBUpdate.jsp" method="post">

  <div class="w3-row" style="height:400px">
    <div class="post" style="margin-left: 580px">
      <h1 class="w3-text-teal"><b>�y�{�ɶ��Ʃw</b></h1>
    </div>
  <div style="margin-left: 440px">
  <div style="margin-top: 20px">
    <label for="activity1">�e�X�J�٥ӽ�:</label>
    <input type="date" id="activity1_start" name="activity1_start" min="2020.12.28" required />~
    <input type="date" id="activity1_end" name="activity1_end" min="2020.12.28" required />
  </div>
  <div style="margin-top: 20px">
    <label for="activity2">�d�ݳq�L�W��:</label>
    <input type="date" id="activity2" name="activity2" min="2020.12.28"  required />
  </div>
  <div style="margin-top: 20px">
    <label for="activity4">�Ĥ@���q�ɦ�ӽ�:</label>
    <input type="date" id="activity4_start" name="activity4_start" min="2020.12.28" required />~
    <input type="date" id="activity4_end" name="activity4_end" min="2020.12.28"  required />
  </div>
  <div style="margin-top: 20px">
    <label for="activity5">�ĤG���q�ɦ�ӽ�:</label>
    <input type="date" id="activity5_start" name="activity5_start" min="2020.12.28" required />~
    <input type="date" id="activity5_end" name="activity5_end" min="2020.12.28" required />
  </div>
  <div style="margin-top: 20px">
    <label for="activity5">�Ц쵲�G:</label>
    <input type="date" id="activity6" name="activity6" min="2020.12.28" value="<%=rs.getString("activity6") %>" required />
  </div>
  <div style="margin-top: 20px; margin-left: 190px">
    <input type="submit"  style="width: 80px "value="�x�s">
  </div>
  </div>  
  </div>
</form>
</div>
  

<!-- Footer -->
<%@ include file="pageend2.jsp" %>
</html>