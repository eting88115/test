<%@ page language="java" 
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>menu</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
</head>
<body>
<div class="w3-top">
  <div class="w3-bar w3-theme w3-top w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-right w3-hide-large w3-hover-white w3-large w3-theme-l1" href="javascript:void(0)" onclick="w3_open()"><i class="fa fa-bars"></i></a>
    <a href="stu-about_member.jsp?stuID=<%=session.getAttribute("accessId")%>"
                  <%
					if(session.getAttribute("accessId") == null){
						out.println("");
					}else{
						out.println(session.getAttribute("accessId"));
					}
			 %> class="w3-bar-item w3-button w3-hide-small w3-hover-white">個人資料修改</a>
    <a href="apply-stu.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">宿舍申請</a>
    <a href="stu-passApply.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">通過名單</a>
    <a href="stu-room1.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">房位選填</a>
    <a href="https://student.ntunhs.edu.tw/files/11-1002-1545.php?Lang=zh-tw" class="w3-bar-item w3-button w3-hide-small w3-hover-white">校網-宿舍專區</a>
    <a href="qa-stu.jsp" class="w3-bar-item w3-button w3-hide-small w3-hover-white">常見問題QA</a>
    <a href="stu-front.jsp"><img src="images/LOGO.png" width="200" height="42" style="margin-left:350px"></a>
    
  </div>
</div>
</body>
</html>