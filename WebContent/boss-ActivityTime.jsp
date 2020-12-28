<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>ActivityTime</title>
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
<form action="boss-ActivityTime_DBSelect.jsp">

  <div class="w3-row" style="height:380px">
    <div class="post" style="margin-left: 600px">
      <h1 class="w3-text-teal"><b>流程時間排定</b></h1>
    </div>
  <div style="margin-left: 550px">
  <div style="margin-top: 25px">
    <label for="activity1">寄出送出申請:</label>
    <input type="date" id="activity1" name="activity1" min="2020.12.28" required>
  </div>
  <div style="margin-top: 25px">
    <label for="activity2">寄出公告申請結果設定床位開放:</label>
    <input type="date" id="activity2" name="activity2" min="2020.12.28" required>
  </div>
  <div style="margin-top: 25px">
    <label for="activity3">學生選床位:</label>
    <input type="date" id="activity3" name="activity3" min="2020.12.28" required>
  </div>
  <div style="margin-top: 25px">
    <label for="activity4">開放候補申請:</label>
    <input type="date" id="activity4" name="activity4" min="2020.12.28" required>
  </div>
  <div style="margin-top: 25px">
    <label for="activity5">寄出候補結果:</label>
    <input type="date" id="activity5" name="activity5" min="2020.12.28" required>
  </div>
  <div style="margin-top: 25px; margin-left: 100px">
    <input type="submit">
  </div>
  </div>  
  </div>
</form>
</div>
  

<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>