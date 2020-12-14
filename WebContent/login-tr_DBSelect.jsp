<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<%
if(request.getParameter("TrID") !=null &&
	request.getParameter("TrPwd") !=null){
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String getMemberData = "SELECT * FROM TrData WHERE TrID='"+
			request.getParameter("TrID")+"' AND TrPwd='" +
			request.getParameter("TrPwd")+"'";
	ResultSet members = smt.executeQuery(getMemberData);
	if(members.next()){
		session.setAttribute("accessID",request.getParameter("TrID"));
		//session.setMaxInactiveInterval(20); ¦Û°Êµn¥X
		response.sendRedirect("Tr-front.jsp");
	}else
		response.sendRedirect("login.jsp?status=loginerror");
}
%>