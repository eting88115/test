<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<body>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String announcementTime = new String(request.getParameter("announcementTime"));
	String announcementTitle = new String(request.getParameter("announcementTitle"));
	String announcement = new String(request.getParameter("announcement"));
	Object image = new String(request.getParameter("image"));
	String category = new String(request.getParameter("category"));
	try 
	{
		smt.execute("INSERT INTO announcement (announcementTime, announcementTitle, announcement, image, category) VALUES('"+announcementTime+"','"+announcementTitle+"','"+announcement+"'+'"+image+"','"+category+"')");
		con.close();
		response.sendRedirect("boss-front.jsp?status=newAnnouncement");
	}catch (Exception e){
		response.sendRedirect("boss-addAnnouncement.jsp?status=IDexist");
	}
	%>
</body>
</html>