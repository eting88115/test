<%@ page language="java" contentType="text/html; charset=BIG5" pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>room3girl</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
</head>
<body>
<div class="w3">
    <div class="w3-row w3-padding-64">
       <div class="form-fields d-grid"> 
       </div>
    </div>
  <div class="w3-row" style="height:1100px; margin-left: 200px">
  <div class="post" style=" margin-left: 480px;margin-top:25px">
      <h1 class="w3-text-teal"><b>女宿舍-房位結果</b></h1>
  </div>
  <div class="template" style="position: relative; height: 460px; width:80%; margin-left: 100px">                    
<%
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String sql = "SELECT floorID, roomID, roommember1, roommember2, roommember3, roommember4 FROM room where floorsex=0";
	ResultSet rs = smt.executeQuery(sql);	
%>
<%!
public String roomNull(String str){
  if(str == null){
     return "";
  }
  return str;
}
%>
            <div class="FindApply">
            <table class="FindApply">
                  <tr> 
                     <th class="text-center" scope="col" width="10%">樓層</th> 
                     <th class="text-center" scope="col" width="10%">房號</th>
                     <th class="text-center" scope="col" width="15%">床號1</th>
                     <th class="text-center" scope="col" width="15%">床號2</th>
                     <th class="text-center" scope="col" width="15%">床號3</th>
                     <th class="text-center" scope="col" width="15%">床號4</th>
                  </tr>
                  <%while(rs.next()){%> 
                      <tr> 
                         <td><%=rs.getString("floorID") %></td> 
                         <td><%=rs.getString("roomID") %></td>

                         <td><%=roomNull(rs.getString("roommember1"))%></td>
                         <td><%=roomNull(rs.getString("roommember2"))%></td>
                         <td><%=roomNull(rs.getString("roommember3"))%></td>
                         <td><%=roomNull(rs.getString("roommember4"))%></td>
                      </tr>
                      <%} %>
             </table>
             </div>
        </div> 
  
  
  
  
  </div>
</div>
</body>
</body>