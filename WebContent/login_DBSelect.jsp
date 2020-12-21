<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<%
if(request.getParameter("stuID") !=null &&
	request.getParameter("stuPwd") !=null){
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String getMemberData = "SELECT * FROM stuData WHERE stuID='"+
			request.getParameter("stuID")+"' AND stuPwd='" +
			request.getParameter("stuPwd")+"'";
	ResultSet members = smt.executeQuery(getMemberData);
	if(members.next()){
		session.setAttribute("accessID",request.getParameter("stuName"));		
		//session.setMaxInactiveInterval(20); ¦Û°Êµn¥X
		//response.sendRedirect("left-stu.jsp?accessID="+request.getParameter("stuID"));
		//response.sendRedirect("left-stu.jsp?accessID="+session.getAttribute("accessId"));
		response.sendRedirect("stu-front.jsp");
	}else
		response.sendRedirect("login.jsp?status=loginerror");
}
%>