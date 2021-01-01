<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>boss-room2</title>
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
<!-- Sidebar -->
 <nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
     <i class="fa fa-remove"></i>
  </a>
  	<div style=“position:absolute;top:100px;left:1000px;height:100px;width:100px;”>
  	<br>
  	<br>
  	<br>
  	<br>
  	<br>
  	<br>
    <button onclick="location.href='boss-room1.jsp'">第一階段</button><br>
    <br>
	<button onclick="location.href='boss-room1.jsp'">第二階段</button><br>
	<br>
	<button onclick="location.href='boss-room1.jsp'">最終床況</button><br>
	</div>
 </nav>
 
<!-- Header -->
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->

<br></br>

<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>
