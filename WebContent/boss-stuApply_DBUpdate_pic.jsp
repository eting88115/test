<%@ page language="java" contentType="text/html" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*,java.util.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<jsp:useBean id='objFolderConfig' scope='session' class='test22.FolderConfig' />
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<% String stuId = new String(request.getParameter("stuId")); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
	MultipartRequest theMultipartRequest = new MultipartRequest (request,objFolderConfig.FilePath(),10*1024*1024) ;
	Enumeration theEnumeration = theMultipartRequest.getFileNames() ;
	while (theEnumeration.hasMoreElements()){
	String fieldName = (String)theEnumeration.nextElement () ;
	String fileName =theMultipartRequest.getFilesystemName (fieldName);
	String contentType = theMultipartRequest.getContentType (fieldName) ;
	
	
	File theFile = theMultipartRequest.getFile(fieldName) ;
			out.println("檔案路徑:"+theFile.getAbsolutePath()+"<br>") ;
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
			Statement smt= con.createStatement();
			smt.executeUpdate("UPDATE studentApply SET pic ='"+objFolderConfig.WebsiteRelativeFilePath()+fileName+ "' WHERE stuId ='"+request.getParameter("stuId")+"' ");
			
	}
	response.sendRedirect("boss-StuApply.jsp?stuId="+request.getParameter("stuId")+"");
%>

</body>
</html>