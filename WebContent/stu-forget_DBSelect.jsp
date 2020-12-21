<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<%
if(request.getParameter("stuID") !=null &&
	request.getParameter("email") !=null){
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String getMemberData = "SELECT * FROM stuforget WHERE stuID='"+
			request.getParameter("stuID")+"' AND email='" +
			request.getParameter("email")+"'";
	ResultSet members = smt.executeQuery(getMemberData);
		
	if(members.next()){
		session.setAttribute("accessID",request.getParameter("stuID"));
		//session.setMaxInactiveInterval(20); 自動登出
		
  %>      
      
       <p>您的密碼為 }<%=members.getString("stuPwd")%>, 請回到首頁重新登入謝謝!</p>
        

	}else
		out.println("帳號密碼不符！請重新登入");
}
 