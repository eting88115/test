<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.sql.*"%>
    <jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="BIG5">
<title>boss-StuApply</title>
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

 
<!-- Header -->
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:100px; height: 700px">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>

  
    <div class="apply">
   <%
	// Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	// Connection con =DriverManager.getConnection("jdbc:odbc:dataBase") ;
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String name = new String(request.getParameter("name").getBytes("ISO-8859-1"));
	String sql = "SELECT * FROM studentApply WHERE stuName ='" + name + "'";
	String color;
	ResultSet rs = smt.executeQuery(sql);
	rs.next();
	
	%>
         <table border="1" style="margin-left:70px; width: 700px;height: 20px">
         <font color="#009393" size="5" style="margin-left:550px"><%=rs.getString("stuID") %><%=rs.getString("stuName") %>_申請單</font>
         </table>
	 <div class="ApplyDetail">
         <form method="post" action="boss-StuApply_DBSelect.jsp">
            <table border="1" style="margin-left:50px; width: 700px;height: 300px">
                <tr><td><label for="name">姓名:<%=rs.getString("stuName") %></label></td>
                    <td><label for="address">住址:<%=rs.getString("address") %></label></td></tr><tr><td></td><td></td></tr>
                <tr><td><label for="account">學號:<%=rs.getString("stuID") %></label></td>
                    <td><label for="phone">電話:<%=rs.getString("phone") %></label></td></tr><tr><td></td><td></td></tr>
                <tr><td><label for="sex">性別:<%=rs.getString("sex") %></label></td>
                    <td><label for="photo">戶籍資料圖片檔:<%=rs.getString("sex") %></label></td></tr><tr><td></td><td></td></tr>
                <tr><td><label for="department">科系:<%=rs.getString("department") %></label></td>
                    <td><label for="email">信箱:<%=rs.getString("email") %></label></td></tr><tr><td></td><td></td></tr>
                <tr><td><label for="classroom">班級:<%=rs.getString("class") %></label></td>
                    <td><label for="Status">審核狀態:</label>
                        <select name="ApprovalStatus" id="ApprovalStatus" required>
                            <option value="0" selected>請選擇</option>
                            <option value="通過">通過</option>
                            <option value="未通過">未通過</option>
                        </select>
                    </td></tr><tr><td></td><td></td></tr> 
             </table> 
           <div class="button3">
             <input type="submit"  style="width:100px" value="儲存">
           </div>
          </form>
     </div>        
    </div>
</div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>