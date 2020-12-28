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
	String activity1 = new String(request.getParameter("activity1").getBytes("ISO-8859-1"));
	String activity2 = new String(request.getParameter("activity2").getBytes("ISO-8859-1"));
	String activity3 = new String(request.getParameter("activity3").getBytes("ISO-8859-1"));
	String activity4 = new String(request.getParameter("activity4").getBytes("ISO-8859-1"));
	String activity5 = new String(request.getParameter("activity5").getBytes("ISO-8859-1"));
	smt.executeUpdate("UPDATE ActivityTime SET activity1 ='" + activity1+"', activity2 ='" + activity2+"', activity3 ='" + activity3 +"', activity4 ='" + activity4 +"', activity5 ='" + activity5 +"'");
	response.sendRedirect("boss-front.jsp?status=newActivityTime");
%>
</body>
</html>