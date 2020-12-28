<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>boss-passApply</title>
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


  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>

  <div class="w3-row">
    <div class="post" align="center">
      <h1 class="w3-text-teal"><b>通過名單</b></h1>
    </div>
          <div class="template" style="position: relative; height: 460px">                    
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String sql = "SELECT stuID, stuName, address, class FROM studentApply where ApprovalStatus=1";
	ResultSet rs = smt.executeQuery(sql);
%>
      
            <div class="FindApply">
            <table class="FindApply">
                  <tr> 
                     <th class="text-center" scope="col" width="10%">學號</th> 
                     <th class="text-center" scope="col" width="10%">姓名</th>
                     <th class="text-center" scope="col" width="15%">地址</th>
                     <th class="text-center" scope="col" width="10%">班級</th>
                  </tr>
                  <%while(rs.next()){%> 
                      <tr> 
                         <td><%=rs.getString("stuID") %></td> 
                         <td><%=rs.getString("stuName") %></td>
                         <td><%=rs.getString("address") %></td>
                         <td><%=rs.getString("class") %></td>
                      </tr>
                      <%} %>
             </table>
             </div>
        </div> 
</div>
<!-- Footer -->
<%@ include file="pageend2.jsp" %>
</html>