<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>apply</title>
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
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String sql = "SELECT * FROM stuData";
	ResultSet rs = smt.executeQuery(sql);
	rs.next();
	%>
<div class="w3">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>
  
  <div class="w3-row" style="height:450px">
  <form class="login100-form validate-form flex-sb flex-w" action="apply-stu_DBSelect.jsp?stuID=<%=request.getParameter("stuID")%>">
    <div class="post" style=" margin-left: 600px">
      <h1 class="w3-text-teal"><b>宿舍申請表</b></h1>

    </div>
         <table>
              <tr><td><label for="stuID">學號:</label><input type="text" name="stuID" placeholder="請輸入學號" value="<%=rs.getString("stuID") %>"></td>
                  <td><label for="stuName">姓名:</label><input type="text" name="stuName" placeholder="請輸入姓名" value="<%=rs.getString("stuName") %>"></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="subject">科系:</label><input type="text" name="subject" placeholder="請輸入科系" value="<%=rs.getString("subject") %>"></td>
                  <td><label for="stuclass">班級:</label><input type="text" name="stuclass" placeholder="請輸入班級" value="<%=rs.getString("stuclass") %>"></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="phone">電話:</label><input type="text" name="phone" placeholder="請輸入電話" value="<%=rs.getString("phone") %>"></td>
                  <td><label for="address">地址:</label><input type="text" name="address" placeholder="請輸入地址" value="<%=rs.getString("address") %>"></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="email">信箱:</label><input type="text" name="email" placeholder="請輸入電子郵件" value="<%=rs.getString("email") %>"></td>
                  <td><label for="roomNumber">房號:</label><input type="text" name="roomNumber" placeholder="請輸入房號" value="<%=rs.getString("roomNumber") %>"></td></tr><tr><td></td><td></td></tr>
              <tr><td><div >
            				<img src="<%=rs.getString("image") %>" alt="">
            				<h3>選擇要戶籍的文件:</h3>
            				<input type="file" name="theFirstFile" size="50" />
            				<input type="button" onClick="javascript:image();" name=submitButton value="上傳" />
							<script language="javascript">  
								//點選提交按鈕觸發下面的函式
							function pic(){  
							document.form.action="apply-stu_DBSelect_pic.jsp";
							document.form.enctype="multipart/form-data";
							document.form.submit();
										}  
							</script>         
         				</div>              
               		</td></tr><tr><td></td><td></td></tr>
         </table>
         <div class="login-button2">
            <input type="submit" value="確認申請" onclick="location.href='finishapply-stu.jsp'">
            <input type="reset" value="取消申請" onclick="location.href='stu-front.jsp'">
         </div>
  </form>
  </div>
  
  </div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>