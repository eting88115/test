<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>room3</title>
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

  <div class="w3-row" style="height:400px">
  <form class="login100-form validate-form flex-sb flex-w" action="boss-point_DBSelect.jsp">
    <div class="post" style=" margin-left: 600px">
      <h1 class="w3-text-teal"><b>學生生活自治評鑑記點</b></h1>
    </div>
      
                 <table>
              <tr><td><label for="name">班級:</label><input type="text" name="name" placeholder="健四一A"></td>
                   <td><label for="name">姓名:</label><input type="text" name="email" placeholder="黃冠宇"></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="account">扣點數：</label><input type="text" name="account" placeholder="2"></td>
                  <td><label for="name">扣點原因:</label><input type="text" name="email" placeholder="外宿未先辦理登記"></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="name">學號:</label><input type="text" name="name" placeholder="072114217"></td>
                  <td><label for="name">床號:</label><input type="text" name="email" placeholder="4073"></td></tr><tr><td></td><td></td></tr>
         </table>
         <div class="login-button2">
           <button class="login100-form-btn" a href="boss-point.jsp">
							確認
						</button>
         </div>
  </div>
 </div>>
 </body>

<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>