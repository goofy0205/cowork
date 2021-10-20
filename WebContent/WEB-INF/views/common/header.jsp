<%-- <%@page import="com.kh.afm.member.model.service.MemberService"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@page import="com.kh.afm.common.vo.Member"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery-3.6.0.js"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Festive&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Lobster&family=Pacifico&display=swap" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Lobster&display=swap" rel="stylesheet">

<style>
/* body{font-family: 'Gothic A1', sans-serif; overflow-x: hidden;} */

/* body{font-family: 'Nanum Gothic Coding', monospace; overflow-x: hidden;} */

/* body{font-family: 'Sunflower', sans-serif; overflow-x: hidden;} */

/* body{font-family: 'IBM Plex Sans KR', sans-serif; overflow-x: hidden;} */

/* body{font-family: 'Gaegu', cursive; font-weight:bold; overflow-x: hidden;} */

body{font-family: 'Hahmlet', serif; overflow-x: hidden;padding:0;margin:0;padding-top: 15%;}
a{text-decoration:none;}
header{position: fixed;}
.mainHeader{background-color:#FBF6F0;top: 0;left: 0;font-weight: bold;justify-content: space-between;width: 100%;height: 20%;display: flex;position: fixed;}
.homepageName{padding-left:10px;color:green;display: flex;top: 0;}
/* .homepageName{font-family: 'Lobster', cursive;padding-left:10px;color:green;display: flex;top: 0;font-weight: bold;} */
.profileImg{background-color:#FBF6F0;padding: 10px;border: none;}
.cartImg{background-color:#FBF6F0;padding: 10px;border: none;}
.settingImg{background-color:#FBF6F0;padding: 10px;border: none;}
.profile{padding-top:15px;width:40px;}
.cart{padding-top:15px;padding-left:10px;width:40px;}
.setting{padding-top:15px;padding-left:10px;width:40px;}
.logoImg{width:35%;}
.nickName{font-size:45px;padding:0;margin:0;padding-top:1%;}
.main-nav{background-color:#FFA45B;padding:0px;margin:auto;display:flex;position:fixed;top:18%;left:50%;transform:translate(-50%,-50%);width:100%;}
.main-nav div{width: 100%;height: 10%;float: left;text-align: center;border-left: 1px #47C83E solid;}
.main-nav div:first-of-type{border-left:none;}
.main-nav div a {display: block;padding:.4em;text-decoration: none;color: black;font-weight: bold;}
.main-nav div:hover{background-color:#00C652;}
.main-nav div:hover > a{color:#FFCD12;}
.dropdown{display: flex;}
.buttonImgName{display: flex;font-weight: 400;justify-content: flex-end;}
.search{display: flex;padding-top:25px;width: 45%;justify-content: center;}
.searchform{width:100%}
.searchImg{width:40px;vertical-align: middle;}
.btnSearch{background-color:#FBF6F0;padding: 10px;border: none;}
.btnSearch:hover{cursor:pointer;}
.searchinput{border:1px green solid;width: 60%;height: 30%;border-radius:50px;padding-top:5px;font-size:12px;color:#777777;}
.logofont{padding-top:15px;height:60px;}
</style>

<script>
<%
	String msg = (String)session.getAttribute("msg");
	//System.out.println("msg@header.jsp = " + msg);
	if(msg != null) session.removeAttribute("msg");
	
	/* Member loginMember = (Member)session.getAttribute("loginMember"); */
	//System.out.println("loginMember@header.jsp = " + loginMember);

%>
<% if(msg != null) {%>
	alert("<%= msg %>");
<% } %>
</script>
<title>농수산물 거래 사이트</title>
</head>
<body>
    <!-- Header -->
    <header class="">
    <div class="mainHeader">
          <h2 class="nickName"><a class="homepageName" href="<%= request.getContextPath() %>/index.jsp"><img src="<%= request.getContextPath() %>/images/logo.png" class="logoImg"/><img class="logofont" src="<%= request.getContextPath() %>/images/logofont.png"></a></h2>
      <div class="search">
	      <form class="searchform" action="">
	      <label for="search">검색 : </label>
	      <input type="text" id="search" name="search" class="searchinput" placeholder="검색어를 입력하세요."/>
	      <button class="btnSearch" type="submit"><img class="searchImg" src="<%= request.getContextPath() %>/images/search.png"></button>
	      </form>
      </div>
      <nav class="header-navMenu">
        <div class="container">
        	<div class="dropdown">
	        	<div class="button">
				  <button class="profileImg"><a href="#"><img class="profile" src="<%= request.getContextPath() %>/images/profile.png">
				  <span class="buttonImgName">로그인</span>
				  </a></button>
				  </div>
				<div class="button">
				  <button class="cartImg"><a href="#"><img class="cart" src="<%= request.getContextPath() %>/images/cart3.png">
				  <span class="buttonImgName">장바구니</span>
				  </a></button>
				  </div>
				<div class="button">
				  <button class="settingImg"><a href="#"><img class="setting" src="<%= request.getContextPath() %>/images/settings.png">
				  <span class="buttonImgName">관리자</span>
				  </a></button>
				</div>
			</div>
		</div>
      </nav>
	</div>
          <div>
				<div class="main-nav">
					<div class="home"><a href="<%= request.getContextPath() %>">Home</a></div>
					<div class="info"><a href="<%= request.getContextPath() %>">소개</a></div>
					<div class="product"><a href="<%= request.getContextPath() %>">상품</a></div>
					<div class="cs"><a href="<%= request.getContextPath() %>">고객센터</a></div>
				</div>
		</div>
    </header>
    