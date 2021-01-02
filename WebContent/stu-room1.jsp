<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>room1</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
<style>
table {
  width: 50%;
  border-collapse: collapse;
}
p {
	width: 50%;
  border-collapse: collapse;
}
</style>
</head>
<body>

<!-- Header --->
<%@ include file="menu-stu.jsp" %>
<!-- Sidebar -->
 <nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
     <i class="fa fa-remove"></i>
  </a>
  	<div style="margin-top: 20px">
    <a class="Step" onclick="location.href='stu-room1.jsp'">第一階段</a>
    </div>
    <div style="margin-top: 20px">
	<a class="Step" onclick="location.href='stu-room2.jsp'">第二階段</a>
	</div>
	<div style="margin-top: 20px">
	<a class="Step" onclick="location.href='stu-room3.jsp'">床位狀況</a>
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

  <div class="w3-row" style="height:600px">
    <div class="post" style=" margin-left: 550px">
      <h1 class="w3-text-teal"><b>第一階段</b><br>
      <p style="color:red;">每位學生只可選擇一個房號，選後一律不能更改<br>沒申請者一律由系統隨機分配，一間至多四名學生。<br></p>
      </h1>
	
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
              <select multiple size=5>
              <%while(rs.next()){%>
              <option value=<%=rs.getString("roomID") %>><%=rs.getString("roomID") %> </option>
              <%} %>
              </select>
              <!-- 第一層結束 -->
              </td>
              
              <td>
              <!-- 第二層開始 -->
              <% 
				String sq2 = "SELECT roomID FROM room where floorID=2";
				ResultSet rs2 = smt.executeQuery(sq2);
				rs.next();
				%>
				第二層
              </td>
              <td>
              <select multiple size=5>
              <%while(rs2.next()){%>
              <option value=<%=rs2.getString("roomID") %>><%=rs2.getString("roomID") %> </option>
              <%} %>
              </select>
              <!-- 第二層結束 -->
              </td>
              <td>
              <!-- 第三層開始 -->
              <% 
				String sq3 = "SELECT roomID FROM room where floorID=3";
				ResultSet rs3 = smt.executeQuery(sq3);
				rs.next();
				%>
				第三層
              </td>
              <td>
              <select multiple size=5>
              <%while(rs3.next()){%>
              <option value=<%=rs3.getString("roomID") %>><%=rs3.getString("roomID") %> </option>
              <%} %>
              </select>
              <!-- 第三層結束 -->
              </td>
              
              </tr>
			<tr>
			<td>
			</td>
			</tr>
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
              <select multiple size=5>
              <%while(rs4.next()){%>
              <option value=<%=rs4.getString("roomID") %>><%=rs4.getString("roomID") %> </option>
              <%} %>
              </select>
              <!-- 第四層結束 -->
              </td>
              <td>
              <!-- 第五層開始 -->
              <% 
				String sq5 = "SELECT roomID FROM room where floorID=5";
				ResultSet rs5 = smt.executeQuery(sq5);
				rs.next();
				%>
				第五層
              </td>
              <td>
              <select multiple size=5>
              <%while(rs5.next()){%>
              <option value=<%=rs5.getString("roomID") %>><%=rs5.getString("roomID") %> </option>
              <%} %>
              </select>
              <!-- 第五層結束 -->
              </td>
              <td>
              <!-- 第六層開始 -->
              <% 
				String sq6 = "SELECT roomID FROM room where floorID=6";
				ResultSet rs6 = smt.executeQuery(sq6);
				rs.next();
				%>
				第六層
              </td>
              <td>
              <select multiple size=5>
              <%while(rs6.next()){%>
              <option value=<%=rs6.getString("roomID") %>><%=rs6.getString("roomID") %> </option>
              <%} %>
              </select>
              <!-- 第六層結束 -->
              </td>
              <tr>
              <td>
              </td>
              </tr>
         </table>
         <div class="post" style=" margin-left: 550px">
      		學號:<input type="text" name="roomID" placeholder="請輸入學號" value="">
      		</h1>
	
    	</div>
         <div class="login-button2">
         	
            <input type="submit" value="確認申請" onclick="location.href='stu-room1finish.jsp'">
            <input type="reset" value="取消申請" onclick="location.href='stu-front.jsp'">
         </div>
  </div>
  </div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>
