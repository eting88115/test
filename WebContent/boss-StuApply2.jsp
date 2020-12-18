<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5" import="java.sql.*"%>
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
<%@ include file="menu-stu.jsp" %>
<!-- Sidebar -->
 <nav class="w3-sidebar w3-bar-block w3-collapse w3-large w3-theme-l5 w3-animate-left" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-right w3-xlarge w3-padding-large w3-hover-black w3-hide-large" title="Close Menu">
     <i class="fa fa-remove"></i>
  </a>
    <%@ include file="left-stu.jsp" %>
 </nav>
 
<!-- Header -->
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3-main" style="margin-left:100px; height: 900px">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>
  <%! int num=1; //�ŧi�����ܼ�num %>
	<%	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement
			(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	String sql = "SELECT stuName, address, stuID, phone, sex, department, email, class, ApprovalStatus FROM studentApply ";
	ResultSet rs = smt.executeQuery(sql);
	rs.last(); //�N���в��̫ܳ�@�����
	int last = rs.getRow(); //���o�`��Ƶ���
	String view = request.getParameter("view");
	if(view != null){
		int select = Integer.parseInt(view);
		switch(select){
		case 1:
			num = 1;   //����s���Ĥ@��,num �]�� 1
			break;
		case 2:
			if(num == 1)  //����s���W�@��,num ���� 1
				num = 1;
			else
				num--;
			break;
		case 3:
			if(num == last)  //����s���U�@��,num ���W 1
				num = last;
			else
				num++;
			break;
		case 4:
			num = last; //����s���̫�@��,num �]�� last
			break;
		default:
		}
	}
	String input = request.getParameter("input");
	if(input != null)
		num = Integer.parseInt(input);
	rs.absolute(num);  //�N���в��ʨ��num����Ƥ���
	%>
    <div class="post" align="center" style="margin-left:150px">
      <h1 class="w3-text-teal"><b>�J�٥ӽЪ�</b></h1>
    </div>
    <div class="apply">
         
         <table border="1" style="margin-left:70px; width: 700px;height: 20px">
         <font color="#009393" size="5" style="margin-left:550px"><%=rs.getString("stuID") %><%=rs.getString("stuName") %>_�ӽг�</font>
         </table>
	 <div class="ApplyDetail">
              <table border="1" style="margin-left:50px; width: 700px;height: 300px">
                <tr><td><label for="name">�m�W:<%=rs.getString("stuName") %></label></td>
                    <td><label for="address">��}:<%=rs.getString("address") %></label></td></tr><tr><td></td><td></td></tr>
                <tr><td><label for="account">�Ǹ�:<%=rs.getString("stuID") %></label></td>
                    <td><label for="phone">�q��:<%=rs.getString("phone") %></label></td></tr><tr><td></td><td></td></tr>
                <tr><td><label for="sex">�ʧO:<%=rs.getString("sex") %></label></td>
                    <td><label for="photo">���y��ƹϤ���:<%=rs.getString("sex") %></label></td></tr><tr><td></td><td></td></tr>
                <tr><td><label for="department">��t:<%=rs.getString("department") %></label></td>
                    <td><label for="email">�H�c:<%=rs.getString("email") %></label></td></tr><tr><td></td><td></td></tr>
                <tr><td><label for="classroom">�Z��:<%=rs.getString("class") %></label></td>
                    <td><label for="audit">�f�֪��A:</label><% String audit = request.getParameter("ApprovalStatus");out.println(audit); %></td></tr><tr><td></td><td></td></tr>
              </table> 
     </div>
           <br>
           <div class="button3">
           <input type = "button" value = "�^�ӽг�d�ߥD�e��" onclick = "window.location.href = 'boss-searchApply.jsp'">
           </div>
           <hr>
           <div class="page" style="margin-left:10px; margin-top:40px">
	       <form action="boss-StuApply2.jsp" method="get">
	          <table>
	             <tr><td><a href="boss-StuApply2.jsp?view=1">�Ĥ@��</a></td>
	                 <td><a href="boss-StuApply2.jsp?view=2">�W�@��</a></td>
	                 <td><a href="boss-StuApply2.jsp?view=3">�U�@��</a></td>
	                 <td><a href="boss-StuApply2.jsp?view=4">�̫�@��</a></td>
	                 <td> ��J�Ǹ��G<input type="text" size="3" name="input">
	             <input type="submit" value="��ܦ��Z"></td></tr>
	          </table>
           </form>
           </div>
    </div>
         
</div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>