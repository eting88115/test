<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="tc">
<head>
<meta charset="BIG5">
<title>boss-qa</title>
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
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- Main content: shift it to the right by 250 pixels when the sidebar is visible -->
<div class="w3">

  <div class="w3-row w3-padding-64">
    <div class="form-fields d-grid"> 
    </div>
  </div>

  <div class="w3-row" style="height:600px">
    <div class="post" style=" margin-left: 600px">
      <h1 class="w3-text-teal"style="position:relative;left:10px"><b>常見問題Q&A</b></h1><br>
    </div>
       <div class="qa" style="" >
         <table>
              <tr><td><label for="Q1">Q.請問宿舍可以使用電壺或快煮鍋嗎？</label></td>
                  <td><label for="A1">A：不行，因為有可能造成宿舍跳電，如發現有使用情形將會以<span style="color:red">違規計10點。</span></label></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="Q2">Q.請問忘記帶宿舍鑰匙該怎麼辦？</label></td>
                  <td><label for="A2">A：未帶鑰匙時<span style="color:red">請向值櫃室登記借用</span>，勿爬窗進入寢室，以免發生危險。</label></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="Q3">Q.請問記幾點才會被退宿？</label></td>
                  <td><label for="A3">A：違規記點均累計至次一學期，凡累計滿10點，則簽<span style="color:red">奉准後公告起1週內退宿</span>，並自退宿日起停權住宿1年，始得再申請宿舍。</label></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="Q4">Q.請問外宿幾次就會被退宿？</label></td>
                  <td><label for="A4">A：學期當中外宿<span style="color:red">超過20日者</span>（因病需住院治療、外縣市實習等特殊因素，能提具證明者不在此限），<span style="color:red">自公告日起1週內</span>辦理退宿手續。</label></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="Q5">Q.請問宿舍有規定門禁時間嗎？</label></td>
                  <td><label for="A5">A：住宿生應於每晚11時30分點名，<span style="color:red">晚上11時30分前</span>應返舍，逾時 返舍者，以違規計。上午6時可外出，晚間11時30分至清晨6時間有特殊原因須外出者，應向值班人員申請核准後始可外出。</label></td></tr><tr><td></td><td></td></tr>
              <tr><td><label for="Q6">Q.請問寢室內有設備損壞該怎麼辦？</label></td>
                  <td><label for="A6">A：寢室內設備損壞，則請<span style="color:red">自行上網報修</span>；報修後若遲未修復，請通知樓長。</label></td></tr><tr><td></td><td></td></tr>
        </table>
        <div></div>
        </div>
   </div>
         <div class="call" style="position:relative;left:230px" >
 			<p>如果還有不了解的部分，請撥打宿舍專線為(02)2821-3147或校內分機**499，會有值班老師或教官為你解答，謝謝！</p>        
  		</div>
  </div>
<!-- Footer -->
<%@ include file="pageend.jsp" %>
</html>