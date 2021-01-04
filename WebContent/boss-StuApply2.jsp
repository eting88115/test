<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.sql.*"%>
    <jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>boss-StuApply2</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
</head>
<body>


<!-- Header --->
<%@ include file="menu-boss.jsp" %>
<!-- Sidebar -->

 
<!-- Header -->
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:0px; height: 900px">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>
  <%! int num=1; //宣告全域變數num %>
	<%	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String sql = "SELECT stuName, address, stuID, phone, sex, department, email, class, statusID FROM studentApply ";
	ResultSet rs = smt.executeQuery(sql);
	rs.last(); //將指標移至最後一筆資料
	int last = rs.getRow(); //取得總資料筆數
	String view = request.getParameter("view");
	if(view != null){
		int select = Integer.parseInt(view);
		switch(select){
		case 1:
			num = 1;   //選擇瀏覽第一筆,num 設為 1
			break;
		case 2:
			if(num == 1)  //選擇瀏覽上一筆,num 遞減 1
				num = 1;
			else
				num--;
			break;
		case 3:
			if(num == last)  //選擇瀏覽下一筆,num 遞增 1
				num = last;
			else
				num++;
			break;
		case 4:
			num = last; //選擇瀏覽最後一筆,num 設為 last
			break;
		default:
		}
	}
	String input = request.getParameter("input");
	if(input != null)
		num = Integer.parseInt(input);
	rs.absolute(num);  //將指標移動到第num筆資料元素
	%>
	<%
	Statement smt2= con.createStatement();
	String sql2 = "SELECT statusDes FROM approvalStatus";
	ResultSet rs2 = smt2.executeQuery(sql2);
	%>
    <div class="post" align="center" style="margin-left:30px">
      <h1 class="w3-text-teal"><b>審核名單-宿舍申請表</b></h1>
    </div>
    <div class="apply">
    <form action="boss-StuApply2_DBUpdate.jsp?stuID="<%=rs.getString("stuID")%>" method="get">
         <table border="1" style="margin-left:550px; width: 800px;height: 20px">
         <font color="#009393" size="5" style="margin-left:550px"><%=rs.getString("stuID") %><%=rs.getString("stuName") %>_申請單</font>
         </table>
	 <div class="ApplyDetail">
              <table border="1" style="margin-left:50px; width: 700px;height: 300px">
                <tr><td><label for="name">姓名:<%=rs.getString("stuName") %></label></td>
                    <td><label for="address">住址:<br><%=rs.getString("address") %></label></td></tr><tr><td></td><td></td></tr>
                <tr><td><label for="account">學號:<%=rs.getString("stuID") %></label></td>               
                    <td><label for="phone">電話:<%=rs.getString("phone") %></label></td></tr><tr><td></td><td></td></tr>
                <tr><td><label for="sex">性別:<%=rs.getString("sex") %></label></td>
                    <td><label for="photo">戶籍資料圖片檔:<%=rs.getString("sex") %></label></td></tr><tr><td></td><td></td></tr>
                <tr><td><label for="department">科系:<%=rs.getString("department") %></label></td>
                    <td><label for="email">信箱:<%=rs.getString("email") %></label></td></tr><tr><td></td><td></td></tr>
                <tr><td><label for="classroom">班級:<%=rs.getString("class") %></label></td>
                <%while(rs2.next()){%>
                    <td><label for="Status">審核狀態:<%=rs2.getString("statusDes")%></label></td></tr><tr><td></td><td></td></tr>
                <%} %>
              </table> 
     </div>
           <br>
           
           </form>
           </div>
           <br>
           <hr>
           <div class="page" style="margin-left:0px; margin-top:20px;width:1000px">
	       <form action="boss-StuApply2.jsp" method="get">
	          <table>
	             <tr><td><a href="boss-StuApply2.jsp?view=1">第一筆</a></td>
	                 <td><a href="boss-StuApply2.jsp?view=2">上一筆</a></td>
	                 <td><a href="boss-StuApply2.jsp?view=3">下一筆</a></td>
	                 <td><a href="boss-StuApply2.jsp?view=4">最後一筆</a></td></tr>
	          </table>
           </form>
           </div>
       
    </div>
         
</div>
<!-- Footer -->
<%@ include file="pageend2.jsp" %>
</html>