<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>addAnnouncement</title>
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

  <div class="w3-row" style="height:1100px">
  <form class="login100-form validate-form flex-sb flex-w" action="boss-addAnnouncement_DBSelect.jsp">
    <div class="post" style=" margin-left: 600px">
      <h1 class="w3-text-teal"><b>�s�W���i</b></h1>
    </div>
             <div class="addAnnouncement" style="margin-left: 250px">
                   <div style="margin-top: 20px">
                      <label for="announcementTime">���i���:</label>
                      <input type="date" id="announcementTime" name="announcementTime" min="2020.12.28" required />
                   </div> 
                   <div style="margin-top: 20px">
                      <label for="announcementTitle">���i���D:</label>
                      <input type="text" name="announcementTitle" placeholder="�п�J���D"  style="width:70%" required>
                   </div> 
                   <div style="margin-top: 20px">
                      <label for="announcement">���i���e:</label><br>
                      <textarea id="announcement" name="announcement" style="width:80%;height:650px;" required></textarea>
                   </div> 
                   <div style="margin-top: 20px">
                      <label for="image">�ɮ�:</label>
                      <input type="file" id="image" name="image" placeholder="�ФW���ɮ�">
                   </div>
                   <div style="margin-top: 20px">
                      <label for="category">����:</label>
                     <select name="category" multiple size="2" required>
                            <option value="0">�J�٬����k�W</option>
                            <option value="1">�̷s����</option>
                     </select> 
                   </div>
                   <div style="margin-top: 20px; margin-left: 300px">
                      <input type="submit"  style="width: 250px "value="�x�s">
                   </div>
            </div>
  </form>
  </div>
  </div>
<!-- Footer -->
<%@ include file="pageend2.jsp" %>
</html>