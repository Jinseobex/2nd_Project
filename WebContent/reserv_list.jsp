<%@page import="org.reservation.ReservationDao"%>
<%@page import="org.reservation.ReservationDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="https://corona-19.kr/img/favicon.ico">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<link href="assets/css/style.css" rel="stylesheet">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="assets/js/bootstrap.js"></script>
<head>
<%
/*
String userID = request.getParameter("ID");
if (session.getAttribute("ID") != null) {
	userID = (String) session.getAttribute("ID");
}
if (userID == null) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('로그인이 필요한 서비스입니다.')");
	script.println("location.href = '' ");
	script.println("</script>");
}

if (userID.equals("admin") == false) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('잘못된 접근입니다.')");
	script.println("location.href = 'index.jsp'");
	script.println("</script>");
}
*/
%>


<script>
	function noDelete(delNo) {
		if (confirm("정말 삭제하시겠습니까?"))
			location.href = "reserv_delete_action.jsp?no=" + delNo;
	}

	function noModify(modiNo) {
		if (confirm("수정?"))
			location.href = "reserv_modify.jsp?no=" + modiNo;
	}
</script>

<title>예약 리스트 페이지</title>

<style>
h2 {
	text-align: center;
	margin-top: 30px;
}
</style>

</head>
<body> 
<!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="#" class="logo"><img src="assets/img/g_logo.png" alt=""></a><a href="index.jsp"> 코로나바이러스감염증-19<span> (COVID-19)</span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->

      <nav id="navbar" class="navbar">
        <ul>
         <li><a class="nav-link scrollto" href="#hero">안내</a></li>
          <li><a class="nav-link scrollto" href="#about">진료소 찾기</a></li>
          <li><a class="nav-link scrollto" href="#services">국내 현황판</a></li>
          <li><a class="nav-link scrollto" href="#contact">관리자</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
<br>
<br>
	<h2>예약 리스트</h2>

	<br>
	<form class="row row-cols-lg-auto g-3 align-items-center"
		style="float: right; margin-right: 30px">
		<div class="input-group mb-3">

			<input type="text" class="form-control" placeholder="검색어 입력"
				aria-label="Recipient's username" aria-describedby="basic-addon2"
				id="myInput">
			<div class="input-group-append">
				<button class="btn btn-primary" type="submit">검색</button>
			</div>

		</div>
	</form>
	<br>
	<table class="table"
		style="text-align: center; border: 1px solid #ddddd">
		<thead>
			<tr>
				<th style="background-color: #fafafa; text-align: center;">번호</th>
				<th style="background-color: #fafafa; text-align: center;">이름</th>
				<th style="background-color: #fafafa; text-align: center;">주민등록번호</th>
				<th style="background-color: #fafafa; text-align: center;">전화번호</th>
				<th style="background-color: #fafafa; text-align: center;">코로나
					의심증상</th>
				<th style="background-color: #fafafa; text-align: center;">선별진료소</th>
				<th style="background-color: #fafafa; text-align: center;">예약날짜</th>
				<th style="background-color: #fafafa; text-align: center;">예약시간</th>
				<th style="background-color: #fafafa; text-align: center;">수정</th>
				<th style="background-color: #fafafa; text-align: center;">삭제</th>


			</tr>
		</thead>
		<%
		ArrayList<ReservationDto> list = ReservationDao.selectAll();
		for (int i = 0; i < list.size(); i++) {
			ReservationDto reserve = list.get(i);
		%>
		<tbody id="myTable">
			<tr>
				<td><%=reserve.getNo()%></td>
				<td><%=reserve.getName()%></td>
				<td><%=reserve.getJumin()%></td>
				<td><%=reserve.getTel()%></td>
				<td><%=reserve.getSymptoms()%></td>
				<td><%=reserve.getLocation()%></td>
				<td><%=reserve.getDate()%></td>
				<td><%=reserve.getTime()%></td>
				<td>
					<button onclick="noModify('<%=reserve.getNo()%>');" type="button"
						class="btn btn-outline-success">수정</button>
				</td>
				<td>
					<button onclick="noDelete('<%=reserve.getNo()%>');" type="button"
						class="btn btn-outline-danger">삭제</button>
				</td>

			</tr>
			<%
			}
			%>
		
	</table>
	<a href="join.jsp">예약하기(테스트용)</a>
</body>
</html>