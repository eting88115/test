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
	String stuI = new String(request.getParameter("stuID"));
	String stuNam = new String(request.getParameter("stuName"));
	String subjec = new String(request.getParameter("subject"));
	String stuclas = new String(request.getParameter("stuclass"));
	String phon = new String(request.getParameter("phone"));
	String addres = new String(request.getParameter("address"));
	String emai = new String(request.getParameter("email"));
	String roomNumbe = new String(request.getParameter("roomNumber"));
	smt.executeUpdate("UPDATE stuData SET stuID ='" + stuI+"', stuName ='" + stuNam+"', subject ='" + subjec +"', stuclass ='" + stuclas +"', phone ='" + phon+"', address ='" + addres+"', email ='" + emai+"', roomNumber ='" + roomNumbe+"' WHERE stuID ='" + request.getParameter("stuID")+"' ");
	response.sendRedirect("finishapply-stu.jsp?stuID="+request.getParameter("stuID")+"");
	%>
</body>
</html>