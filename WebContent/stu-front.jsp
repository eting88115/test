<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>stu-front</title>
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
<!-- Sidebar -->
 <nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
     <i class="fa fa-remove"></i>
  </a>
  <div class="activity-time">
          <ul>
         
  <%
if(session.getAttribute("accessID") == null){
	out.println("null");
}
else{ 
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String getStuMemberData = "SELECT stuName FROM stuData WHERE stuID='"+session.getAttribute("accessID")+"'";
	ResultSet stuMembers = smt.executeQuery(getStuMemberData);
	if(stuMembers.next()){%>
		<font color="blue"><%=stuMembers.getString("stuName")%>您好!</font>
	<%}%>
<%} %>
      <%
    Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt4= con.createStatement();
	String sql4 = "SELECT activity1_start, activity1_end, activity2, activity3, activity4_start, activity4_end, activity5_start, activity5_end, activity6 FROM ActivityTime ";
	ResultSet rs4 = smt4.executeQuery(sql4);
	%>   
          </ul>
        <form action="identification.jsp">
        <div class="activity-time" style="font-size:14px;">
	<%while(rs4.next()){%>
	<ul>  
     <li>送出宿舍申請:<br>
     <%=rs4.getString("activity1_start") %>~<%=rs4.getString("activity1_end") %></li>
     <li>查看通過名單:<br>
     <%=rs4.getString("activity2") %></li>
     <li>床位抽籤:<br>
     <%=rs4.getString("activity3") %></li>
     <li>選床位:<br>
     <%=rs4.getString("activity4_start") %>~<%=rs4.getString("activity4_end") %></li>
     <li>候補申請:<br>
     <%=rs4.getString("activity5_start") %>~<%=rs4.getString("activity5_end") %></li>
     <li>候補結果:<br>
     <%=rs4.getString("activity6") %></li>
     </ul>
    <%} %> 
          <div class="login-button">
            <input type="submit" id="logout" value="登出"/>
            <input type="hidden" name="Logout" value="true"/><br></br>
          </div>
        </div>
     </form>
  
  
  

 </nav>
 
<!-- Header -->
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:250px">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>

  <div class="w3-row">
    <div class="post" align="center">
      <h1 class="w3-text-teal"><b>公告資訊</b></h1>
    </div>
    <hr>
        <div class="w3-twothird w3-container">
        <h2 class="statute"><b>宿舍相關法規</b></h2>
        </div>
            <div class="w3-twothird w3-container">
              <ul>
              <li><a href="#">[109-04-27]宿舍申請作業資訊</a></li>
              <li><a href="#">[109-04-27]學生宿舍住宿規則</a></li>
              <li><a href="#">[109-04-27]學生宿舍生活自治評鑑記點標準</a></li>
              <li><a href="#">[109-04-27]學生宿舍應注意事項暨生活公約</a></li>
              </ul>
            </div>
        <div class="w3-twothird w3-container">
        <h2 class="news"><b>最新消息</b></h2>
        </div>
            <div class="w3-twothird w3-container">
              <ul>
              <li><a href="#">[109-05-01]學生宿舍住宿費調漲相關說明</a></li>
              <li><a href="#">[109-05-01]欲以低收入戶或中低收入戶資格申請宿舍保障或優惠注意事項</a></li>
              <li><a href="#">[109-04-28]109學年度校本部學生宿舍申請審核結果公告</a></li>
              <li><a href="#">[109-04-11]109學年度校本部學生宿舍開放申請床位數</a></li>
              </ul>
            </div>
   </div>
   
  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a class="w3-button w3-black" href="#">1</a>
      <a class="w3-button w3-hover-black" href="#">2</a>
      <a class="w3-button w3-hover-black" href="#">3</a>
      <a class="w3-button w3-hover-black" href="#">4</a>
      <a class="w3-button w3-hover-black" href="#">5</a>
      <a class="w3-button w3-hover-black" href="#">&raquo;</a>
    </div>
  </div>
</div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>