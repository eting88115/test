<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>addAnnouncement</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">

</head>
<body>

	<%	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String sql = "SELECT ID, announcementTime, announcementTitle, announcement, image, category FROM announcement ";
	 %>
	
	<%
	ResultSet rs = smt.executeQuery(sql);
	rs.afterLast(); //將指標移至最後一筆資料之後
	int afterLast =rs.getRow();
	String ID = request.getParameter("ID");
	
	%>
<!-- Header --->
<%@ include file="menu-boss.jsp" %>
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>

  <div class="w3-row" style="height:1100px">
  <form action="boss-addAnnouncement_DBUpdate_info.jsp?" method="post" name="form" >
    <div class="post" style=" margin-left: 600px">
      <h1 class="w3-text-teal"><b>新增公告</b></h1>
    </div>
             <div class="addAnnouncement" style="margin-left: 250px">
                   <div style="margin-top: 20px">
                      <label for="announcementTime">公告日期:</label>
                      <input type="date" id="announcementTime" name="announcementTime" min="2020.12.28" required />
                   </div> 
                   <div style="margin-top: 20px">
                      <label for="announcementTitle">公告標題:</label>
                      <input type="text" name="announcementTitle" placeholder="請輸入標題"  style="width:70%" required>
                   </div> 
                   
                   <div style="margin-top: 20px">
                     <div class="position-relative">
			            
			            <h3>選擇要上傳的文件:</h3>
			            <input type="file" name="theFirstFile" size="50" />
			            
						<script language="javascript">  
						//點選提交按鈕觸發下面的函式
						function pic(){  
							document.form.action="boss-addAnnouncement_DBUpdate_pic.jsp";
							document.form.enctype="multipart/form-data";
							document.form.submit();
						}  
						</script>         
			         </div>
          
                   <div style="margin-top: 20px">
                      <label for="category">分類:</label>
                     <select name="categoryID" multiple size="2" required>
                            <option value="0">宿舍相關法規</option>
                            <option value="1">最新消息</option>
                     </select> 
                   </div>
                   <div style="margin-top: 20px; margin-left: 300px">
                      <input type="submit"  style="width: 250px "value="儲存">
                   </div>
            </div>
            </div>
  </form>
  </div>
  </div>
<!-- Footer -->
<%@ include file="pageend2.jsp" %>
</html>