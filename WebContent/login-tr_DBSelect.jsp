<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<%
if(request.getParameter("memberID") !=null &&
	request.getParameter("memberPwd") !=null){
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String getMemberData = "SELECT * FROM member WHERE memberID='"+
			request.getParameter("memberID")+"' AND memberPwd='" +
			request.getParameter("memberPwd")+"' and role='2'";
	ResultSet teachers = smt.executeQuery(getMemberData);
	if(teachers.next()){
		session.setAttribute("accessID",request.getParameter("memberID"));
		//session.setMaxInactiveInterval(20); ¦Û°Êµn¥X
		response.sendRedirect("tr-front.jsp");
	}else
		response.sendRedirect("login-tr.jsp?status=loginerror");
}
%>