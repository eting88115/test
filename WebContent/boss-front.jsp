<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>boss-Checklist-all</title>
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
 <nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
     <i class="fa fa-remove"></i>
  </a>
   <%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt4= con.createStatement();
	String sql4 = "SELECT * FROM ActivityTime ";
	ResultSet rs4 = smt4.executeQuery(sql4);
	%>
	<div class="activity-time">
          <ul>
          <font color="blue">後臺管理者 您好!</font>
          <p color="black">以下為本學期排程時間</p>
          </ul>
          <div class="activity-time" style="font-size:18px;">
	<%while(rs4.next()){%>
	<ul>  
     <li>送出宿舍申請:<br>
     <%=rs4.getDate("activity1_start") %>~<%=rs4.getDate("activity1_end") %></li>
     <li>查看通過名單:<br>
     <%=rs4.getDate("activity2") %></li>
     <li>第一階段床位申請:<br>
     <%=rs4.getDate("activity4_start") %>~<%=rs4.getDate("activity4_end") %></li>
     <li>第二階段床位申請:<br>
     <%=rs4.getDate("activity5_start") %>~<%=rs4.getDate("activity5_end") %></li>
     <li>房位結果:<br>
     <%=rs4.getDate("activity6") %></li>
     </ul>
    <%} %> 
         </div>
   </div>
 </nav>
 
<!-- Header -->
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:230px">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>

  <div class="w3-row">
    <div class="post" align="center">
      <h1 class="w3-text-teal"><b>公告資訊</b></h1>
      <a href="boss-addAnnouncement.jsp" class="w3-text-cyan w3-hover-red">新增公告</a>
    </div>
          <div class="template" style="position: relative; height: 460px">
          <div class="panel-group">
              <input type="radio" name="panel-radio" id="radio2" class="panel-control" checked>
              <input type="radio" name="panel-radio" id="radio3" class="panel-control">
                 <div class="tab-group">
                   <label for="radio2" class="active">宿舍相關法規</label>
                   <label for="radio3">最新消息</label>
                 </div>
                 
                 <div class="content-group">
<%! int num=0; //宣告全域變數num %>
	<%
	// Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	// Connection con =DriverManager.getConnection("jdbc:odbc:dataBase") ;
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String sql = "SELECT * FROM announcement ORDER BY announcementTime DESC";
	ResultSet rs = smt.executeQuery(sql);
	rs.last(); //將指標移至最後一筆資料
	int last = rs.getRow(); //取得總資料筆數
	int lastno, lastpage, nowpage, prepage, nextpage, nostart, noend;
	int CounterStart=0,CounterEnd=0;
	lastno = rs.getRow();
	lastpage = (int)Math.ceil((double)lastno/5);//計算最後一頁編號
	if(request.getParameter("page") == null){
		nowpage = 1;
	}
	if(request.getParameter("page") != null)
		try{
			nowpage = Integer.parseInt(request.getParameter("page"));
		}catch(Exception e){
			nowpage = Integer.parseInt(request.getParameter("p"));
		}
	else nowpage = 1;
	
	prepage = nowpage-1; //上一頁
	nextpage = nowpage+1; //下一頁
	if(nowpage == 1) //判斷是否為第一頁
		prepage=1;
	if(nowpage == lastpage) //判斷是否為最後一頁
		nextpage=lastpage;
	
	nostart = nowpage * 5 -4;  //計算開始編號
	noend = nowpage * 5;  //計算結束編號
	
	sql = "SELECT * FROM announcement WHERE ID BETWEEN "+nostart+" AND "+noend+" ORDER BY announcementTime DESC";
	rs = smt.executeQuery(sql);
	%>
	              <!-- 宿舍相關法規 -->
                 <div class="content content2">
                     <div class="announcement1">
    <%
    Statement smt2 = con.createStatement();
	String sql2 = "SELECT ID, announcementTitle, announcementTime FROM announcement where category=0";
	ResultSet rs2 = smt2.executeQuery(sql2);
	%>
     
            <div class="announcement">
            <table class="announcement">
                  <tr> 
                     <th class="text-center" scope="col" width="2%">編號</th>
                     <th class="text-center" scope="col" width="6%">公告日期</th> 
                     <th class="text-center" scope="col" width="30%">公告標題</th>
                     <th class="text-center" scope="col" width="2%">操作</th>
                  </tr>
                <%while(rs2.next()){%>  
                      <tr> 
                         <td><%=rs2.getString("ID") %></td> 
                         <td><%=rs2.getDate("announcementTime") %></td> 
                         <td><%=rs2.getString("announcementTitle")%></td>
                         <td><button class="edit">刪除</button></td>
                      </tr>
                   <%} %>   
             </table>
             </div>
                  
	        
	
    </div>
   </div>
                 <!-- 最新消息 -->
                <div class="content content3">
                <div class="announcement1">
    <%
	Statement smt3 = con.createStatement();                         
	String sql3 ="SELECT ID, announcementTitle, announcementTime FROM announcement where category=1";
	ResultSet rs3 = smt3.executeQuery(sql3);
	%>
     
            <div class="announcement">
            <table class="announcement">
                  <tr> 
                     <th class="text-center" scope="col" width="2%">編號</th>
                     <th class="text-center" scope="col" width="6%">公告日期</th> 
                     <th class="text-center" scope="col" width="30%">公告標題</th>
                     <th class="text-center" scope="col" width="2%">操作</th>
                  </tr>
                <%while(rs3.next()){%>  
                      <tr> 
                         <td><%=rs3.getString("ID") %></td> 
                         <td><%=rs3.getDate("announcementTime") %></td> 
                         <td><%=rs3.getString("announcementTitle")%></td>
                         <td><button class="edit">刪除</button></td>
                      </tr>
                   <%} %>   
             </table>
             </div>
             <form action="boss-front1.jsp" method="get">
				<table class="table">
				<tr>
				<td class="pagination"><a href="instruct.jsp?page=1">&laquo;</a></td>
				<td class="pagination"><a href="instruct.jsp?page=<%=prepage%>">&lt;</a></td>
				<td class="pagination"><a href="instruct.jsp?page=1" <%if (nowpage == 1) out.println("class='active'"); %>>1</a></td>
				<%int c=1;
				while (lastpage>c){
					c++;%>
				<td class="pagination"><a href="instruct.jsp?page=<% out.println(c);%>"<%if (nowpage == c) out.println("class='active'"); %>><% out.println(c);%></a></td><%} %>
				<td class="pagination"><a href="instruct.jsp?page=<%=nextpage%>">&gt;</a></td>
				<td class="pagination"><a href="instruct.jsp?page=<%=lastpage%>">&raquo;</a></td>
				</tr>
				</table>
			</form>		
             </div>
             </div>
     
   </div>
   </div>
   </div>
   </div>
   </div>
<br></br>
 <%	
	con.close();
	%>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>
