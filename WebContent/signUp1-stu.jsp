<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import="java.sql.*"%>
<jsp:useBean id='objDBConfig' scope='session' class='test2.DBConfig' />
<!DOCTYPE html>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
<body>
		
<form action="signUp_DBSelect.jsp" method="get" style="border:1px solid #ccc">
  <div class="container">
    <h1>註冊</h1>
    <%if (request.getParameter("status")!="" && request.getParameter("status")!=null){
							if(request.getParameter("status").equals("IDexist")){ %>
							<p><font color="red">帳號已存在，請登入或重新註冊!</font></p>
						<%}else{} }%>
    <p>請填寫資料以建立帳號</p>
    <hr>

    <label for="stuID"><b>ID</b></label>
    <input type="text" placeholder="請輸入帳號" name="stuID" required>

	<label for="email"><b>email</b></label>
    <input type="text" placeholder="請輸入信箱" name="email" required>
    
    <label for="stuPwd"><b>Password</b></label>
    <input type="password" placeholder="請輸入密碼" name="stuPwd" required>

    <div class="clearfix">
      <button type="submit" class="signupbtn" a href="login.jsp">註冊</button>
      <button type="reset" class="cancelbtn">取消</button>
    </div>
  </div>
</form>

	
</body>
</html>