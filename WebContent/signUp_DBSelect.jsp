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
	String memberID = new String(request.getParameter("memberID"));
	String memberPwd = new String(request.getParameter("memberPwd"));
	String email = new String(request.getParameter("email"));
	try 
	{
		smt.execute("INSERT INTO member (memberID, memberPwd, email) VALUES('"+memberID+"','"+memberPwd+"','"+email+"')");
		con.close();
		response.sendRedirect("login.jsp?status=newmember");
	}catch (Exception e){
		response.sendRedirect("signUp-stu.jsp?status=IDexist");
	}
	%>
</body>
</html>