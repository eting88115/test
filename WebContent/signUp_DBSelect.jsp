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
	String stuID = new String(request.getParameter("stuID"));
	String email = new String(request.getParameter("email"));
	String stuPwd = new String(request.getParameter("stuPwd"));
	try{
		smt.execute("INSERT INTO stuID (stuID, email, stuPwd) VALUES('"+stuID+"','"+email+"','"+stuPwd+"')");
		con.close();
		response.sendRedirect("login.jsp?status=newmember");
	}catch (Exception e){
		response.sendRedirect("signUp.jsp?status=IDexist");
	}
	%>
</body>
</html>