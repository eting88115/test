<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
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
  	<div style="margin-top: 20px">
    <a class="Step" onclick="location.href='boss-room1.jsp'">第一階段</a>
    </div>
    <div style="margin-top: 20px">
	<a class="Step" onclick="location.href='boss-room2.jsp'">第二階段</a>
	</div>
	<div style="margin-top: 20px">
	<a class="Step" onclick="location.href='boss-room3.jsp'">床位狀況</a>
	</div>
	
 </nav>
 
<!-- Header -->
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();

	%>
<div class="w3">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>

  <div class="w3-row" style="height:450px">
  <form class="login100-form validate-form flex-sb flex-w" action="apply-stu_DBSelect.jsp?stuID=<%=request.getParameter("stuID")%>">
    <div class="post" style=" margin-left: 600px">
      <h1 class="w3-text-teal"><b>第一階段</b></h1>
	
    </div>
    	<table>
    	<!-- 第一層開始 -->
    		  <% 
				String sql = "SELECT roomID FROM room where floorID=1";
				ResultSet rs = smt.executeQuery(sql);
				rs.next();
				%>
              <tr><td>
              第一層
              </td>
              <td>
              <select>
              <%while(rs.next()){%>
              <option value=<%=rs.getString("roomID") %>><%=rs.getString("roomID") %> </option>
              <%} %>
              </select>
              
              </td>
              </tr>
              <!-- 第一層結束 -->
              <!-- 第二層開始 -->
              <% 
				String sq2 = "SELECT roomID FROM room where floorID=2";
				ResultSet rs2 = smt.executeQuery(sq2);
				rs.next();
				%>
              <tr><td>
              第二層
              </td>
              <td>
              <select>
              <%while(rs2.next()){%>
              <option value=<%=rs2.getString("roomID") %>><%=rs2.getString("roomID") %> </option>
              <%} %>
              </select>
              </td>
              </tr>
              <!-- 第二層結束 -->
              <!-- 第三層開始 -->
              <% 
				String sq3 = "SELECT roomID FROM room where floorID=3";
				ResultSet rs3 = smt.executeQuery(sq3);
				rs.next();
				%>
              <tr><td>
              第三層
              </td>
              <td>
              <select>
              <%while(rs3.next()){%>
              <option value=<%=rs3.getString("roomID") %>><%=rs3.getString("roomID") %> </option>
              <%} %>
              </select>
              </td>
              </tr>
              <!-- 第三層結束 -->
              <!-- 第四層開始 -->
              <% 
				String sq4 = "SELECT roomID FROM room where floorID=4";
				ResultSet rs4 = smt.executeQuery(sq4);
				rs.next();
				%>
              <tr><td>
              第四層
              </td>
              <td>
              <select>
              <%while(rs4.next()){%>
              <option value=<%=rs4.getString("roomID") %>><%=rs4.getString("roomID") %> </option>
              <%} %>
              </select>
              </td>
              </tr>
              <!-- 第四層結束 -->
              <!-- 第五層開始 -->
              <% 
				String sq5 = "SELECT roomID FROM room where floorID=5";
				ResultSet rs5 = smt.executeQuery(sq5);
				rs.next();
				%>
              <tr><td>
              第五層
              </td>
              <td>
              <select>
              <%while(rs5.next()){%>
              <option value=<%=rs5.getString("roomID") %>><%=rs5.getString("roomID") %> </option>
              <%} %>
              </select>
              </td>
              </tr>
              <!-- 第五層結束 -->
              
              
         </table>
         <div class="login-button2">
            <input type="submit" value="確認申請" onclick="location.href='finishapply-stu.jsp'">
            <input type="reset" value="取消申請" onclick="location.href='stu-front.jsp'">
         </div>
  </form>
  </div>
  </div>
<select name="cars" multiple size="5">
  <option value="volvo">Volvo</option>
  <option value="bmw">BMW</option>
  <option value="saab">Saab</option>
  <option value="benz">Benz</option>
  <option value="audi">Audi</option>
</select>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>
