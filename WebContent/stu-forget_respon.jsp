<%@ page language="java" 
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>stu-forget_respon</title>
</head>
<body>
 String stuPwd;
 stuPwd = request.getParameter("stuPwd");
 out.println("您的密碼為" + stuPwd + ", 請回到登入重登謝謝!");
</body>
</html>