<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<%
if(request.getParameter("memberID") !=null &&
	request.getParameter("email") !=null){
	Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
	Connection con=DriverManager.getConnection("jdbc:ucanaccess://"+objDBConfig.FilePath()+";");
	Statement smt= con.createStatement();
	String getMemberData = "SELECT * FROM member WHERE memberID='"+
			request.getParameter("memberID")+"' AND email='" +
			request.getParameter("email")+"'";
	ResultSet members = smt.executeQuery(getMemberData);
		
	if(members.next()){
		session.setAttribute("accessID",request.getParameter("memberID"));
		//session.setMaxInactiveInterval(20); �۰ʵn�X
		
  %>      
      
       <p>�z���K�X�� }<%=members.getString("stuPwd")%>, �Ц^�쭺�����s�n�J����!</p>
        

	}else
		out.println("�b���K�X���šI�Э��s�n�J");
}
 