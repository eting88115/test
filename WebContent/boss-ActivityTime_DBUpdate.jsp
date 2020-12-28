<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*,java.util.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<jsp:useBean id='objDBConfig' scope='application' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<body>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String activity1_start = new String(request.getParameter("activity1_start").getBytes("ISO-8859-1"));
	String activity1_end = new String(request.getParameter("activity1_end").getBytes("ISO-8859-1"));
	String activity2 = new String(request.getParameter("activity2").getBytes("ISO-8859-1"));
	String activity3 = new String(request.getParameter("activity3").getBytes("ISO-8859-1"));
	String activity4_start = new String(request.getParameter("activity4_start").getBytes("ISO-8859-1"));
	String activity4_end = new String(request.getParameter("activity4_end").getBytes("ISO-8859-1"));
	String activity5_start = new String(request.getParameter("activity5_start").getBytes("ISO-8859-1"));
	String activity5_end = new String(request.getParameter("activity5_end").getBytes("ISO-8859-1"));
	String activity6 = new String(request.getParameter("activity6").getBytes("ISO-8859-1"));
	smt.executeUpdate("UPDATE ActivityTime SET activity1_start ='" + activity1_start+"', activity2 ='" + activity2+"', activity3 ='" + activity3 +"', activity4_start ='" + activity4_start +"', activity4_end ='" + activity4_end +"', activity5_start ='" + activity5_start +"', activity5_end ='" + activity5_end +"', activity6 ='" + activity6 +"'");
	response.sendRedirect("boss-front.jsp?status=newActivityTime");
%>
</body>
</html>