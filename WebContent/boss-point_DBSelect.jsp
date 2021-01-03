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
	String memberClass = new String(request.getParameter("memberClass"));
	String memberName = new String(request.getParameter("memberName"));
	String Point = new String(request.getParameter("Point"));
	String reason = new String(request.getParameter("reason"));
	String ID = new String(request.getParameter("ID"));
	String BedNo = new String(request.getParameter("BedNo"));
	

	try 
	{
		smt.execute("INSERT INTO point (memberClass, memberName, Point, reason, ID, BedNo) VALUES('"+memberClass+"','"+memberName+"','"+Point+"','"+reason+"','"+ID+"','"+BedNo+"')");
		con.close();
		response.sendRedirect("boss-point.jsp?status=newmember");
	}catch (Exception e){
		response.sendRedirect("boss-point.jsp?status=IDexist");
	}
	%>
</body>
</html>