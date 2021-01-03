<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="BIG5">
<title>finish</title>
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
  <form class="login100-form validate-form flex-sb flex-w" action="apply-stu_DBSelect.jsp">
    <div class="post" align="center">
      <h1 class="w3-text-teal"><b>已成功修改個人資料</b></h1>
    </div>
         <div  align="center">
            		<input type="button" value="返回首頁" style="align-items: center;" onclick="location.href='stu-front.jsp'">	
         </div>
  </form>
  </div>
  </form>
  </div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>