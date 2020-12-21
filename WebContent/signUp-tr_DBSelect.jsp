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
	String TrID = new String(request.getParameter("TrID"));
	String email = new String(request.getParameter("email"));
	String TrPwd = new String(request.getParameter("TrPwd"));
	try 
	{
		smt.execute("INSERT INTO TrData (TrID, email, TrPwd) VALUES('"+TrID+"','"+email+"','"+TrPwd+"')");
		con.close();
		response.sendRedirect("login-tr.jsp?status=newmember");
	}catch (Exception e){
		response.sendRedirect("signUp-tr.jsp?status=IDexist");
	}
	%>
</body>
</html>