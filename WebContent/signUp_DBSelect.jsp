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
	String memberId = new String(request.getParameter("memberId"));
	String memberPwd = new String(request.getParameter("memberPwd"));
	try{
		smt.execute("INSERT INTO leelab (memberId, memberPwd) VALUES('"+memberId+"','"+memberPwd+"')");
		con.close();
		response.sendRedirect("login.jsp?status=newmember");
	}catch (Exception e){
		response.sendRedirect("signUp.jsp?status=IDexist");
	}
	%>
</body>
</html>