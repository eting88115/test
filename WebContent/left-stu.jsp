<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />

<html >
<head>
<meta charset="BIG5">
<title>left-stu</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
</head>
<body>
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
<nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
     <i class="fa fa-remove"></i>
  </a>
<head>
<meta charset="BIG5">
<title>JSP Page</title>
</head>
<body>


   
    
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
            
            
            
            
            <li>送出宿舍申請</li>(4/18~4/25)<br>
            <li>查看申請結果 </li>(4/28)<br>
            <li>床位抽籤</li>(5/1)<br>
            <li>選床位</li>(5/3~5/11)<br>
            <li>候補申請</li>(5/13~5/18)<br>
          </ul>
        <form action="">
          <div class="login-button">
            <input type="submit" id="logout" value="登出"/>
            <input type="hidden" name="Logout" value="true"/><br></br>
          </div>
        </div>
     </form>
    </nav>
</body>
</html>