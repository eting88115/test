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
	String stuName = new String(request.getParameter("stuName"));
	String subject = new String(request.getParameter("subject"));
	String stuclass = new String(request.getParameter("stuclass"));
	String phone = new String(request.getParameter("phone"));
	String address = new String(request.getParameter("address"));
	String email = new String(request.getParameter("email"));
	String roomNumber = new String(request.getParameter("roomNumber"));
	String image = new String(request.getParameter("image"));
	try 
	{
		smt.execute("INSERT INTO stuData (stuID, stuName, subject, stuclass, phone, address, email, roomNumber, image) VALUES('"+stuID+"','"+stuName+"','"+subject+"'+'"+stuclass+"','"+phone+"','"+address+"''"+email+"','"+roomNumber+"','"+image+"')");
		con.close();
		response.sendRedirect("login.jsp?status=newmember");
	}catch (Exception e){
		response.sendRedirect("signUp-stu.jsp?status=IDexist");
	}
	%>
</body>
</html>