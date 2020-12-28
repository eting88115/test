<%@page contentType="text/html; charset=BIG5"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />

<html >
<head>
<meta charset="BIG5">
<title>left-boss</title>
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
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");			
	Statement smt= con.createStatement();
	String sql = "SELECT activity1_start, activity1_end, activity2, activity3, activity4_start, activity4_end, activity5_start, activity5_end, activity6 FROM ActivityTime ";
	ResultSet rs = smt.executeQuery(sql);
	rs.next();
%>
<div class="activity-time">
          <ul>
          <font color="blue">後臺管理者 您好!</font>
          <p color="black">以下為本學期排程時間</p>
          </ul>
        
          <form action="">
          <div class="activity-time" style="font-size:14px;">
          <ul>
            <li>送出宿舍申請</li><%=rs.getString("activity1_start") %>~<%=rs.getString("activity1_end") %><br>
            <li>查看通過名單</li><%=rs.getString("activity2") %><br>
            <li>床位抽籤</li><%=rs.getString("activity3") %><br>
            <li>選床位</li><%=rs.getString("activity4_start") %>~<%=rs.getString("activity4_end") %><br>
            <li>候補申請</li><%=rs.getString("activity5_start") %>~<%=rs.getString("activity5_end") %><br>
            <li>候補申請</li><%=rs.getString("activity6") %><br>
          </ul>
          </div>
          </form>
</div>
     
</nav>
</body>
</html>