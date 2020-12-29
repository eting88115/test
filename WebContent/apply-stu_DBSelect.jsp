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
	String stuI = new String(request.getParameter("stuID").getBytes("ISO-8859-1"));
	String stuNam = new String(request.getParameter("stuName").getBytes("ISO-8859-1"));
	String subjec = new String(request.getParameter("subject").getBytes("ISO-8859-1"));
	String stuclas = new String(request.getParameter("stuclass").getBytes("ISO-8859-1"));
	String phon = new String(request.getParameter("phone").getBytes("ISO-8859-1"));
	String addres = new String(request.getParameter("address").getBytes("ISO-8859-1"));
	String emai = new String(request.getParameter("email").getBytes("ISO-8859-1"));
	String roomNumbe = new String(request.getParameter("roomNumber").getBytes("ISO-8859-1"));
	String position = new String(request.getParameter("position"));
	smt.executeUpdate("UPDATE stuData SET stuID ='" + stuI+"', stuName ='" + stuNam+"', subject ='" + subjec +"', stuclass ='" + stuclas +"', phone ='" + phon+"', address ='" + addres+"', email ='" + emai+"', roomNumber ='" + roomNumbe+"'WHERE stuID ='" + request.getParameter("stuID")+"' ");
	response.sendRedirect("finishapply-stu.jsp?stuID="+request.getParameter("stuID")+"");
	%>
</body>
</html>