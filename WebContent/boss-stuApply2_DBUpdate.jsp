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
	String statusID = new String(request.getParameter("statusID"));
	try 
	{
		smt.execute("update studentApply set statusID='"+statusID+"' where stuID='"+request.getParameter("studID") +"'");
		con.close();
		response.sendRedirect("boss-StuApply2.jsp?status=newApprovalStatus&studID="+request.getParameter("studID"));
	}catch (Exception e){
		
	}
	%>
</body>
</html>