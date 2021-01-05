<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<jsp:useBean id='objFolderConfig' scope='session' class='test22.FolderConfig' />
<!DOCTYPE html>

<html>
<head>
  <meta charset="BIG5">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>LeeLab Web</title>
  <link href="//fonts.googleapis.com/css2?family=Merriweather:wght@300;400;700;900&amp;display=swap" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&amp;display=swap" rel="stylesheet">
</head>
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
	smt.executeUpdate("UPDATE stuData SET stuID ='" + stuI+"', stuName ='" + stuNam+"', subject ='" + subjec +"', stuclass ='" + stuclas +"', phone ='" + phon+"', address ='" + addres+"', email ='" + emai+"'WHERE stuID ='" + request.getParameter("stuID")+"' ");
	response.sendRedirect("finishapply-stu.jsp?stuID="+request.getParameter("stuID")+"");
	%>
</body>

</html>