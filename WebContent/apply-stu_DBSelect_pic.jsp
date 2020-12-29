<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<body>
<%
	MultipartRequest theMultipartRequest = new MultipartRequest (request,objFolderConfig.FilePath(),10*1024*1024) ;
	Enumeration theEnumeration = theMultipartRequest.getFileNames() ;
	while (theEnumeration.hasMoreElements()){
	String fieldName = (String)theEnumeration.nextElement () ;
	String fileName =theMultipartRequest.getFilesystemName (fieldName);
	String contentType = theMultipartRequest.getContentType (fieldName) ;
	
	File theFile = theMultipartRequest.getFile(fieldName) ;
			out.println("檔案名稱:"+fileName+"<br>") ;
			out.println("檔案型態:"+contentType+"<br>");
			out.println("檔案路徑:"+theFile.getAbsolutePath()+"<br>") ;
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
			Statement smt= con.createStatement();
			smt.executeUpdate("UPDATE leelab SET pic ='"+objFolderConfig.WebsiteRelativeFilePath()+fileName+ "' WHERE memberId ='" + session.getAttribute("accessId")+"' ");
			response.sendRedirect("member.jsp?memberId="+session.getAttribute("accessId")+"");
	}		
%>