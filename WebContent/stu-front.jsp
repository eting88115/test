<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>stu-front</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
</head>
<body>

<!-- Header --->
<%@ include file="menu-stu.jsp" %>
<!-- Sidebar -->
 <nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
     <i class="fa fa-remove"></i>
  </a>
  <div class="activity-time">
          <ul>
         
  <%
if(session.getAttribute("accessID") == null){
	out.println("null");
}
else{ 
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String getStuMemberData = "SELECT stuName FROM stuData WHERE stuID='"+session.getAttribute("accessID")+"'";
	ResultSet stuMembers = smt.executeQuery(getStuMemberData);
	if(stuMembers.next()){%>
		<font color="blue"><%=stuMembers.getString("stuName")%>�z�n!</font>
	<%}%>
<%} %>
      <%
    Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt4= con.createStatement();
	String sql4 = "SELECT activity1_start, activity1_end, activity2, activity3, activity4_start, activity4_end, activity5_start, activity5_end, activity6 FROM ActivityTime ";
	ResultSet rs4 = smt4.executeQuery(sql4);
	%>   
          </ul>
        <form action="identification.jsp">
        <div class="activity-time" style="font-size:14px;">
	<%while(rs4.next()){%>
	<ul>  
     <li>�e�X�J�٥ӽ�:<br>
     <%=rs4.getString("activity1_start") %>~<%=rs4.getString("activity1_end") %></li>
     <li>�d�ݳq�L�W��:<br>
     <%=rs4.getString("activity2") %></li>
     <li>�ɦ����:<br>
     <%=rs4.getString("activity3") %></li>
     <li>��ɦ�:<br>
     <%=rs4.getString("activity4_start") %>~<%=rs4.getString("activity4_end") %></li>
     <li>�Ըɥӽ�:<br>
     <%=rs4.getString("activity5_start") %>~<%=rs4.getString("activity5_end") %></li>
     <li>�Ըɵ��G:<br>
     <%=rs4.getString("activity6") %></li>
     </ul>
    <%} %> 
          <div class="login-button">
            <input type="submit" id="logout" value="�n�X"/>
            <input type="hidden" name="Logout" value="true"/><br></br>
          </div>
        </div>
     </form>
  
  
  

 </nav>
 
<!-- Header -->
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:250px">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>

  <div class="w3-row">
    <div class="post" align="center">
      <h1 class="w3-text-teal"><b>���i��T</b></h1>
    </div>
    <hr>
        <div class="w3-twothird w3-container">
        <h2 class="statute"><b>�J�٬����k�W</b></h2>
        </div>
            <div class="w3-twothird w3-container">
              <ul>
              <li><a href="#">[109-04-27]�J�٥ӽЧ@�~��T</a></li>
              <li><a href="#">[109-04-27]�ǥͱJ�٦�J�W�h</a></li>
              <li><a href="#">[109-04-27]�ǥͱJ�٥ͬ��۪v��Ų�O�I�з�</a></li>
              <li><a href="#">[109-04-27]�ǥͱJ�����`�N�ƶ��[�ͬ�����</a></li>
              </ul>
            </div>
        <div class="w3-twothird w3-container">
        <h2 class="news"><b>�̷s����</b></h2>
        </div>
            <div class="w3-twothird w3-container">
              <ul>
              <li><a href="#">[109-05-01]�ǥͱJ�٦�J�O�պ���������</a></li>
              <li><a href="#">[109-05-01]���H�C���J��Τ��C���J����ӽбJ�٫O�٩��u�f�`�N�ƶ�</a></li>
              <li><a href="#">[109-04-28]109�Ǧ~�׮ե����ǥͱJ�٥ӽмf�ֵ��G���i</a></li>
              <li><a href="#">[109-04-11]109�Ǧ~�׮ե����ǥͱJ�ٶ}��ӽЧɦ��</a></li>
              </ul>
            </div>
   </div>
   
  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a class="w3-button w3-black" href="#">1</a>
      <a class="w3-button w3-hover-black" href="#">2</a>
      <a class="w3-button w3-hover-black" href="#">3</a>
      <a class="w3-button w3-hover-black" href="#">4</a>
      <a class="w3-button w3-hover-black" href="#">5</a>
      <a class="w3-button w3-hover-black" href="#">&raquo;</a>
    </div>
  </div>
</div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>