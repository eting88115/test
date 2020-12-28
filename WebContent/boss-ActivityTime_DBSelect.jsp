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
	String activity1 = new String(request.getParameter("activity1"));
	String activity2 = new String(request.getParameter("activity2"));
	String activity3 = new String(request.getParameter("activity3"));
	String activity4 = new String(request.getParameter("activity4"));
	String activity5 = new String(request.getParameter("activity5"));
	try 
	{
		smt.execute("INSERT INTO ActivityTime (activity1, activity2, activity3, activity4, activity5) VALUES('"+activity1+"','"+activity2+"','"+activity3+"'+'"+activity4+"','"+activity5+"')");
		con.close();
		response.sendRedirect("tr-front.jsp?status=newmember");
	}catch (Exception e){
		response.sendRedirect("boss-ActivityTime.jsp?status=IDexist");
	}
	%>
</body>
</html>