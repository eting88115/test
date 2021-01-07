<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con = DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt = con.createStatement();
	String stuID = new String(request.getParameter("stuID"));
	String statusID = new String(request.getParameter("statusID"));
	smt.executeUpdate("UPDATE studentApply SET statusID ='" +statusID+"' WHERE stuID ='" + stuID+"'");
	out.println("UPDATE studentApply SET statusID ='" +statusID+"' WHERE stuID ='" + stuID+"'");
	response.sendRedirect("boss-StuApply.jsp?stuID="+stuID+"");	
%>
	