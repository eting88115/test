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
			request.getParameter("memberPwd")+"' and role='1'";
	ResultSet members = smt.executeQuery(getMemberData);
	if(members.next()){
		session.setAttribute("accessID",request.getParameter("memberID"));		
		response.sendRedirect("stu-front.jsp");
	}else
		response.sendRedirect("login.jsp?status=loginerror");
}
%>