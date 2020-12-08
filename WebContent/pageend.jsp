<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="utf-8">
<title>pageend</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css\styles.css" >
<link rel="stylesheet" href="css\styles2.css" >
<link rel="stylesheet" href="css\styles3.css" >
<link rel="stylesheet" href="css\styles4.css">
<link rel="stylesheet" href="css\styles5.css">
</head>
<body>
<!-- Footer -->
  
  <footer id="myFooter" style="margin-left:250px">
    <div class="w3-container w3-theme-l2 w3-padding-32">
      <h5>Copyright ©2020國立臺北護理健康大學健康事業管理系所 醫療資訊管理學程 設計團隊：黃荷心。謝芸蘋。廖于婷。吳宜靜。 指導：李麗惠老師 請尊重智慧財產權，勿上傳未經授權之檔案資料。</h5>
    </div>

  </footer>

<!-- END MAIN -->

<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
    overlayBg.style.display = "none";
  } else {
    mySidebar.style.display = 'block';
    overlayBg.style.display = "block";
  }
}

// Close the sidebar with the close button
function w3_close() {
  mySidebar.style.display = "none";
  overlayBg.style.display = "none";
}
</script>

</body>
</html>