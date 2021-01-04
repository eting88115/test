<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>boss-addAnnouncement_DBUpdate_info</title>
</head>
<body>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String announcementTime = new String(request.getParameter("announcementTime"));
	String announcementTitle = new String(request.getParameter("announcementTitle").getBytes("ISO-8859-1"));
	String category = new String(request.getParameter("category"));
	smt.executeUpdate("UPDATE announcement SET announcementTime ='" + announcementTime+"', announcementTitle ='" + announcementTitle +"', categoryId ='" + category);
	response.sendRedirect("boss-front.jsp?memberId="+session.getAttribute("accessId")+"");
%>
</body>
</html>