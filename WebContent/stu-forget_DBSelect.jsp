<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<%
if(request.getParameter("stuID") !=null &&
	request.getParameter("email") !=null){
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String getMemberData = "SELECT * FROM stuforget WHERE stuID='"+
			request.getParameter("stuID")+"' AND email='" +
			request.getParameter("email")+"'";
	ResultSet members = smt.executeQuery(getMemberData);
	if(members.next()){
		session.setAttribute("accessID",request.getParameter("stuID"));
		//session.setMaxInactiveInterval(20); ¦Û°Êµn¥X
		response.sendRedirect("login.jsp");
	}else
		response.sendRedirect("login.jsp?status=login");
}
%>