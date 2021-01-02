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
	<a class="Step" onclick="location.href='stu-room3.jsp'">房位結果</a>
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

  <div class="w3-row" style="height:600px; margin-left: 200px">
    <div class="post" style=" margin-left: 480px;margin-top:25px">
      <h1 class="w3-text-teal"><b>第一階段</b></h1>
      <div style=" margin-left: -280px;margin-top:25px">
      <h2 class="note"style="font-weight: bold ;font-size: 20px ;"><b>注意事項</b><br></h2>
      <ol type="1" style="color:red">
       <li>每位學生只可選擇一個房號，選後一律不能更改，選擇多個房號一律視同未申請成功。
       <li>第一階段第二階段皆沒申請者一律由系統隨機分配，一間至多四名學生，房間額滿將不可點選。
       <li>第一階段已申請者，可不參與第二階段。
       </ol>
      </div>
      
    </div>
        <div  style="margin-left: -120px;width: 130%">
    	<table>
    	<!-- 第一層開始 -->
    		  <% 
				String sql = "SELECT roomID FROM room where floorID=1 and floorsex=0";
				ResultSet rs = smt.executeQuery(sql);
				rs.next();
				%>
              <tr><td>
              第一層樓
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
				String sq2 = "SELECT roomID FROM room where floorID=2 and floorsex=0";
				ResultSet rs2 = smt.executeQuery(sq2);
				rs.next();
				%>
				第二層樓
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
				String sq3 = "SELECT roomID FROM room where floorID=3 and floorsex=0";
				ResultSet rs3 = smt.executeQuery(sq3);
				rs.next();
				%>
				第三層樓
              </td>
              <td>
              <select multiple size=5>
              <%while(rs3.next()){%>
              <option value=<%=rs3.getString("roomID") %>><%=rs3.getString("roomID") %> </option>
              <%} %>
              </select>
              <!-- 第三層結束 -->
              </td>
              
              
              <!-- 第四層開始 -->
              <% 
				String sq4 = "SELECT roomID FROM room where floorID=4 and floorsex=0";
				ResultSet rs4 = smt.executeQuery(sq4);
				rs.next();
				%>
              </td>
              <td>
              第四層樓
              </td>
              <td>
              <select multiple size=5>
              <%while(rs4.next()){%>
              <option value=<%=rs4.getString("roomID") %>><%=rs4.getString("roomID") %> </option>
              <%} %>
              </select>
              <!-- 第四層結束 -->
              </td>
              
              </tr>
			<tr>
			<td>
			</td>
			</tr>
              
              
              <td>
              <!-- 第五層開始 -->
              <% 
				String sq5 = "SELECT roomID FROM room where floorID=5 and floorsex=0";
				ResultSet rs5 = smt.executeQuery(sq5);
				rs.next();
				%>
				第五層樓
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
				String sq6 = "SELECT roomID FROM room where floorID=6 and floorsex=0";
				ResultSet rs6 = smt.executeQuery(sq6);
				rs.next();
				%>
				第六層樓
              </td>
              <td>
              <select multiple size=5>
              <%while(rs6.next()){%>
              <option value=<%=rs6.getString("roomID") %>><%=rs6.getString("roomID") %> </option>
              <%} %>
              </select>
              <!-- 第六層結束 -->
              </td>
              <td>
              <!-- 第七層開始 -->
              <% 
				String sq7 = "SELECT roomID FROM room where floorID=7 and floorsex=0";
				ResultSet rs7 = smt.executeQuery(sq7);
				rs.next();
				%>
				第七層樓
              </td>
              <td>
              <select multiple size=5>
              <%while(rs7.next()){%>
              <option value=<%=rs7.getString("roomID") %>><%=rs7.getString("roomID") %> </option>
              <%} %>
              </select>
              <!-- 第七層結束 -->
              </td>
              <td>
              <!-- 第八層開始 -->
              <% 
				String sq8 = "SELECT roomID FROM room where floorID=8 and floorsex=0";
				ResultSet rs8 = smt.executeQuery(sq8);
				rs.next();
				%>
				第八層樓
              </td>
              <td>
              <select multiple size=5>
              <%while(rs8.next()){%>
              <option value=<%=rs8.getString("roomID") %>><%=rs8.getString("roomID") %> </option>
              <%} %>
              </select>
              <!-- 第八層結束 -->
              </td>
              <tr>
              <td>
              </td>
              </tr>
         </table>
         <div class="post" style="margin-left: 550px">
      		學號:<input type="text" name="roomID" placeholder="請輸入學號" value="" required>
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
