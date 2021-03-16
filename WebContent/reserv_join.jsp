<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="assets/js/bootstrap.js"></script>
<link rel="shortcut icon" type="image/x-icon"
	href="https://corona-19.kr/img/favicon.ico">
	
<!-- 진섭 CDN -->

  <!-- Favicons -->
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <!-- status Board1 -->
  <link rel="shortcut icon" type="image/x-icon" href="assets/img/g_logo.png">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  
  <!-- status Board2 -->
  <!-- fontawesome -->
  <script src="https://kit.fontawesome.com/41caffd54e.js" crossorigin="anonymous"></script>
  
  <!-- XEICON -->
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
  
  <!-- Custom CSS -->
  <link href="assets/css/style.min.css" rel="stylesheet">

  <!-- SweetAlert -->
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 
	<script src="assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- apps -->
    <!-- apps -->
    <script src="dist/js/app-style-switcher.js"></script>
    <script src="dist/js/feather.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <!-- themejs -->
    <!--Menu sidebar -->
    <script src="dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="dist/js/custom.min.js"></script>
    
	<!-- Chart JS -->
    <script src="dist/js/pages/chartjs/chartjs.init.js"></script>
    <script src="assets/libs/chart.js/dist/Chart.min.js"></script>
    
    <!-- c3 CDN -->
   	<!-- Load c3.css -->
	<link href="assets/css/c3.css" rel="stylesheet">
	<script src="assets/js/c3.js"></script>
	<script src="https://d3js.org/d3.v5.min.js"></script>
	<script src="assets/js/c3.min.js"></script>
	<link href="assets/css/c3.css" rel="stylesheet">


<%
/* String userID = null;
 if(session.getAttribute("ID") != null){
	userID= (String) session.getAttribute("ID");
}

if (userID == null ){
PrintWriter script = response.getWriter();
script.println("<script>");
script.println("alert('로그인먼저하셈.')");
script.println("location.href = 'main.jsp'");
script.println("</script>");
} */


%>
<style>

.box{
	width:146px;

}

.submit {
	margin-top: 20px;
	text-align: center;
}
span1{ 
background:#3CB371;
 border-radius:30px;
font-color
}

#stitle{
align=center;
style=width:50%; 
height: 70px;
border-radius: 4em;
background-color: #04B486;
padding:20px;
}

h4 {
font-weight: bold;
color: white;
text-align: center;

}
#ss{
width: 20px;
border-color: #D8D8D8;
border-radius: 15%;
border-style: double;

}

#aa{
align=center;
}

</style>
<title>예약 등록</title>

</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="#" class="logo"><img src="assets/img/g_logo.png" alt=""></a><a href="index.jsp"> 코로나바이러스감염증-19<span> (COVID-19)</span></a></h1>

    </div>
  </header><!-- End Header -->
<br>

		<!-- ========= Start reserv_join ========= -->
		<div class="reserv" style="width:350px; height: 600px; top: 120px; position: absolute; left: 50px;">
				<div id="stitle" ><h4>선별진료소 검사 예약</h4></div>
				<br>
				<div class="p-3 border bg-light">
					<form method="post" action="reserv_join_action.jsp">
						<div class="mb-3">
							<label for="name" class="form-label"><strong>예약자명</strong></label> <input
								type="text" class="form-control" name="name" placeholder="성함">
						</div>

						<label for="rrn" class="form-label"><strong>주민등록번호</strong></label>
						<div class="input-group mb-3">
							<input type="text"  name="jumin" class="form-control"
								aria-label="Username"><label> - </label> 
								<input type="text" id="ss"  name="jumin"><label id="aa">******</label>  <input
								type="button" name="button" class="btn btn-primary" value="확인하기"
								onClick="checkAlert(this.form,this.form.jumin.value)">
						</div>

						<div class="mb-3">
							<label for="phone" class="form-label">전화번호</label> <input
								type="text" class="form-control" name="tel"
								aria-describedby="namebox" value="010-">
						</div>
						<label for="name" class="form-label"><strong>* 코로나19 의심증상</strong></label> <br>

						<div class="form-check form-check-inline" >
							<input class="form-check-input" type="checkbox" name="symptoms"
								id="inlineCheckbox1" value="37.5°C 이상 발열" checked> 
								<label class="form-check-label" for="inlineCheckbox1">37.5°C 이상 발열</label>
						</div>
						<div class="form-check form-check-inline box">
							<input class="form-check-input" type="checkbox" name="symptoms"
								id="inlineCheckbox2" value="기침"> <label
								class="form-check-label" for="inlineCheckbox2">기침</label>
						</div>
						<div class="form-check form-check-inline box">
							<input class="form-check-input" type="checkbox" name="symptoms"
								id="inlineCheckbox3" value="인후통"> <label
								class="form-check-label" for="inlineCheckbox3">인후통</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox" name="symptoms"
								id="inlineCheckbox4" value="호흡곤란"> <label
								class="form-check-label" for="inlineCheckbox4">호흡곤란</label>
						</div>

						<br>
						<div class="form-check form-check-inline box">
							<input class="form-check-input" type="checkbox" name="symptoms"
								id="inlineCheckbox5" value="오한"> <label
								class="form-check-label" for="inlineCheckbox1">오한</label>
						</div>
						<div class="form-check form-check-inline box">
							<input class="form-check-input" type="checkbox" name="symptoms"
								id="inlineCheckbox6" value="근육통"> <label
								class="form-check-label" for="inlineCheckbox2">근육통</label>
						</div>
						<div class="form-check form-check-inline box">
							<input class="form-check-input" type="checkbox" name="symptoms"
								id="inlineCheckbox7" value="두통"> <label
								class="form-check-label" for="inlineCheckbox3">두통</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox" name="symptoms"
								id="inlineCheckbox8" value="미각 또는 후각소실"> <label
								class="form-check-label" for="inlineCheckbox4">미각 또는
								후각소실</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="본인 또는 동거가족의 최근 14일 이내 해외 여행력"
								id="flexCheckDefault" name="symptoms"> <label class="form-check-label"
								for="flexCheckDefault"> 본인 또는 동거가족의 최근 14일 이내 해외<br> 여행력 </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="동거가족 중 현재 자가격리자 있음"
								id="flexCheckChecked" name="symptoms"> <label
								class="form-check-label" for="flexCheckChecked"> 동거가족 중 현재 자가격리자 있음 </label>
						</div>		
						<br>
						<div class="submit">
							<button type="submit" class="btn btn-primary" id=sumbmitBtn>등록</button>
						</div>
					</form>
				</div>
				
			</div>
			<!-- ========= End reserv_join ========= -->
			
				<!-- ========= Start reserv_join_calendar ========== -->
				<div class="reserved_cal" style="float:left; position: absolute; top: 120px; left: 450px; width:100%">
				
				<jsp:include page="reserve_join_calendar2.jsp" flush="false" />
				
				</div>
				<!-- ========= End reserv_join_calendar ========= -->
		

	<script>
	function check_jumin(jumin) { 
	      if(jumin=="" || jumin==null || jumin.length!=13) { 
	              alert("주민등록번호 13자리를 적어주세요."); 
	              return false; 
	      } 
	      // 9502221111111
	      var jumin1 = jumin.substr(0,6); // 950222
	      var jumin2 = jumin.substr(6,7); //   1111111
	      var yy        = jumin1.substr(0,2);    // 년도 95
	      var mm    = jumin1.substr(2,2);    // 월  02
	      var dd    = jumin1.substr(4,2);    // 일  22
	      var genda = jumin2.substr(0,1);    // 성별   1
	      var msg, ss, cc; 

	    
	      if (!isNumeric(jumin1)) { // 숫자가 아닌 것을 입력한 경우 
	              alert("주민등록번호 앞자리를 숫자로 입력하세요."); 
	              return false; 
	      } 
	    
	      if (jumin1.length != 6) { // 앞자리 길이가 6이 아닌 경우 
	              alert("주민등록번호 앞자리를 다시 입력하세요."); 
	              return false; 
	      } 
	    // 첫번째 자료에서 연월일(YYMMDD) 형식 중 기본 구성 검사 
	      if (yy < "00" || yy > "99" || 
	              mm < "01" || mm > "12" || 
	              dd < "01" || dd > "31") { 
	              alert("주민등록번호 앞자리를 다시 입력하세요."); 
	              return false; 
	      } 
	    // 숫자가 아닌 것을 입력한 경우 
	      if (!isNumeric(jumin2)) { 
	              alert("주민등록번호 뒷자리를 숫자로 입력하세요."); 
	              return false; 
	      } 
	    // 길이가 7이 아닌 경우 
	      if (jumin2.length != 7) { 
	              alert("주민등록번호 뒷자리를 다시 입력하세요."); 
	              return false; 
	      } 
	    // 성별부분이 1 ~ 4 가 아닌 경우 
	      if (genda < "1" || genda > "4") { 
	              alert("주민등록번호 뒷자리를 다시 입력하세요."); 
	              return false; 
	      } 
	    // 연도 계산 - 1 또는 2: 1900년대, 3 또는 4: 2000년대 
	      cc = (genda == "1" || genda == "2") ? "19" : "20"; 
	    // 첫번째 자료에서 연월일(YYMMDD) 형식 중 날짜 형식 검사 
	      if (isYYYYMMDD(parseInt(cc+yy), parseInt(mm), parseInt(dd)) == false) { 
	              alert("주민등록번호 앞자리를 다시 입력하세요."); 
	              return false; 
	      } 
	    // Check Digit 검사 
	      if (!isSSN(jumin1, jumin2)) { 
	              alert("입력한 주민등록번호를 검토한 후, 다시 입력하세요."); 
	              return false; 
	      } 
	      return true; 
	} 

	function isYYYYMMDD(y, m, d) { 
	      switch (m) { 
	      case 2:    // 2월의 경우 
	              if (d > 29) return false; 
	              if (d == 29) { 
	                    // 2월 29의 경우 당해가 윤년인지를 확인 
	                      if ((y % 4 != 0) || (y % 100 == 0) && (y % 400 != 0)) 
	                              return false; 
	              } 
	              break; 
	      case 4:    // 작은 달의 경우 
	      case 6: 
	      case 9: 
	      case 11: 
	              if (d == 31) return false; 
	      } 
	    // 큰 달의 경우 
	      return true; 
	} 
	function isNumeric(s) { 
	      for (i=0; i<s.length; i++) { 
	              c = s.substr(i, 1); 
	              if (c < "0" || c > "9") return false; 
	      } 
	      return true; 
	} 
	function isLeapYear(y) { 
	      if (y < 100) 
	      y = y + 1900; 
	      if ( (y % 4 == 0) && (y % 100 != 0) || (y % 400 == 0) ) { 
	              return true; 
	      } else { 
	              return false; 
	      } 
	} 
	function getNumberOfDate(yy, mm) { 
	      month = new Array(29,31,28,31,30,31,30,31,31,30,31,30,31); 
	      if (mm == 2 && isLeapYear(yy)) mm = 0; 
	      return month[mm]; 
	} 
	function isSSN(s1, s2) { 
	      n = 2; 
	      sum = 0; 
	      for (i=0; i<s1.length; i++) 
	              sum += parseInt(s1.substr(i, 1)) * n++; 
	      for (i=0; i<s2.length-1; i++) { 
	              sum += parseInt(s2.substr(i, 1)) * n++; 
	              if (n == 10) n = 2; 
	      } 
	      c = 11 - sum % 11; 
	      if (c == 11) c = 1; 
	      if (c == 10) c = 0; 
	      if (c != parseInt(s2.substr(6, 1))) return false; 
	      else return true; 
	} 

	function checkAlert(frm,jumin)
	{
	   var bCheck = check_jumin(jumin);
	   if( !bCheck){
		   frm.jumin.focus();
		   return false;
	   }
	}

	</script>
	
	
</body>
</html>