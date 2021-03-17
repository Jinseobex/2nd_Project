<%@page import="org.covid19.db.CovidVo"%>
<%@page import="java.io.Console"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">

<title>예약 등록</title>

<link rel="stylesheet" href="assets/css/bootstrap.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="shortcut icon" type="image/x-icon" href="https://corona-19.kr/img/favicon.ico">

  <!-- Template Main CSS File -->
 <link href="assets/css/style.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="assets/js/bootstrap.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"> </script>
 <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script>
$(function() {
	  $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd'
        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜 표시
        ,showMonthAfterYear:true // 년도 먼저 
        ,changeMonth: true // 월 선택 가능    셀렉박스             
        ,showOn: "both" // 픽스
        ,yearSuffix: "년" 
        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12']
        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
        ,dayNamesMin: ['일','월','화','수','목','금','토'] 
        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일']
        ,minDate: "+1D" // 현재일 기준최소
        ,maxDate: "+20D" // 최대  
        ,onSelect: function() { 
      		  var myDate = $('#datepicker').val();
    			alert(myDate);
      		   $("#dat").val(myDate);
      		    }
	  }); 
});
	
</script>
<script type="text/javascript">
function insert_cate(cate_val, cate_nval) {
	var od_cate = $("#catecode").val();
	var od_cate_length = od_cate.length;

	if (od_cate_length > 0) {
		$("#id_cateimg_" + od_cate).css({
			"background-color" : "#fd7d01"
		});
	}

	$("#id_cateimg_" + cate_val).css({
		"background-color" : "red"
	});
	$("#catecode").val(cate_val);
	$("#catecodename").val(cate_nval);
}


</script>

<%
String locationName = request.getParameter("name");
%>
<style>
.box {
	width: 146px;
}

.container-lg {
	margin-top: 30px;
}

.submit {
	margin-top: 20px;
	text-align: center;
}



#stitle {align =center;
	style =width: 50%;
	height: 70px;
	border-radius: 4em;
	background-color: #04B486;
	padding: 20px;
}

h4 {
	font-weight: bold;
	color: white;
	text-align: center;
}



#aa {
	align =center;
	
}

body, div, span, a, input, select, textarea {
	text-decoration: none;
}

form {
	display: block;
}

body {
	margin: 0 auto;
	width: 100%;
	height: 100%;
	padding: 0px;
	font-size: 15px;

}

.box-login .wrap-input {
	margin: 0 auto;
	display: block;
	width: 400px;
}

.btn_cate_food1 {
	width: 107px;
	display: inline-block;
	background: rgb(253, 125, 1) none repeat scroll 0 0;
	border: medium none currentcolor;
	color: rgb(255, 255, 255);
	font-family: "NanumGothic", "Tahoma", "Helvetica", "AppleGothic",
		"sans-serif";
	font-size: 15px;
	font-weight: bold;
	height: 35px;
	line-height: 35px;
	text-align: center;
	cursor: pointer;
	border-radius: 5px;
	margin-bottom: 10px;
}

.ui-datepicker{ font-size: 23px; width: 100%; height: 350px; }




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
<form method="post" action="reserv_join_action.jsp">
		<div class="row gx-5">
			<div class="col-md-1"></div>

			<div class="col-md-3">

				<div id="stitle">
					<h4><%=request.getParameter("name")%>
						선별 진료 예약
					</h4>
				</div>
				<br> <br>
				<div class="p-3 border bg-light">
					
						<div class="mb-3">
							<input type="hidden" name="location"
								value="<%=request.getParameter("name")%>"> <label
								for="name" class="form-label"><strong>예약자명</strong></label> <input
								type="text" class="form-control" name="name" placeholder="성함">
						</div>

						<label for="rrn" class="form-label"><strong>생년월일</strong></label>
						<div class="input-group mb-3">
							<input type="text" name="jumin" class="form-control"
								aria-label="Username" placeholder="생년월일 8자리">
							<input type="button" name="button" class="btn btn-primary"
								value="확인하기"
								onClick="checkAlert(this.form,this.form.jumin.value)">
						</div>

						<div class="mb-3">
							<label for="phone" class="form-label"><strong>전화번호</strong></label> <input
								type="text" id ="tel" class="form-control" name="tel"
								aria-describedby="namebox" placeholder="(-)없이 번호만 입력하세요.">
						</div>
						<label for="name" class="form-label"><strong>*
								코로나19 의심증상</strong></label> <br>

						<div class="form-check form-check-inline">
							<input class="form-check-input" type="checkbox" name="symptoms"
								id="inlineCheckbox1" value="37.5°C 이상 발열" checked> <label
								class="form-check-label" for="inlineCheckbox1">37.5°C 이상
								발열</label>
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
							<input class="form-check-input" type="checkbox"
								value="본인 또는 동거가족의 최근 14일 이내 해외 여행력" id="flexCheckDefault"
								name="symptoms"> <label class="form-check-label"
								for="flexCheckDefault"> 본인 또는 동거가족의 최근 14일 이내 해외
								여행력
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox"
								value="동거가족 중 현재 자가격리자 있음" id="flexCheckChecked" name="symptoms">
							<label class="form-check-label" for="flexCheckChecked">
								동거가족 중 현재 자가격리자 있음 </label>
						</div>


		

					


				</div>
			</div>
			<div class="col-md-4">
			<div id="stitle">
			<h4>예약 날짜</h4></div>
			<br>
			<br>
			<div class="p-3 border bg-light">
				<div id="datepicker"></div>
			
			</div>
			</div>
			
			<div class="col-md-3">
			<div id="stitle">
			<h4>예약 시간</h4>
			</div>
			<br>
			<br>
			<div class="p-3 border bg-light">
			<div class="box-login">
					<div class="wrap-input floatL">
						<div class="content_cate_area" style="text-align: center;">
						<br>
							<h5>오전</h5>
							<br>  <a
								href="javascript:insert_cate('1','9:00');">
								<div id="id_cateimg_1" class="btn_cate_food1">9:00</div>
							</a> <a href="javascript:insert_cate('2','10:00');">
								<div id="id_cateimg_2" class="btn_cate_food1">10:00</div>
							</a> <a href="javascript:insert_cate('3','11:00');">
								<div id="id_cateimg_3" class="btn_cate_food1">11:00</div>
							</a> <br><br><br>  <h5>오후</h5> 
							<br> <a href="javascript:insert_cate('4','12:00');">
								<div id="id_cateimg_4" class="btn_cate_food1">12:00</div>
							</a> <a href="javascript:insert_cate('5','1:00');">
								<div id="id_cateimg_5" class="btn_cate_food1">1:00</div>
							</a> <a href="javascript:insert_cate('6','2:00');">
								<div id="id_cateimg_6" class="btn_cate_food1">2:00</div>
							</a> <a href="javascript:insert_cate('7','3:00');">
								<div id="id_cateimg_7" class="btn_cate_food1">3:00</div>
							</a> <a href="javascript:insert_cate('8','4:00');">
								<div id="id_cateimg_8" class="btn_cate_food1">4:00</div>
							</a> <a href="javascript:insert_cate('9','5:00');">
								<div id="id_cateimg_9" class="btn_cate_food1">5:00</div>
							</a> 
							<br>
							<label class="form-label"><strong>예약날짜</strong></label> 
							
							<input type="text" name="date" id="dat"
								placeholder="예약날짜" class="form-control" readonly ><br>
								
								
							<label class="form-label"><strong>예약시간</strong></label> 
							
							<input type="text" name="catecodename" id="catecodename"
								placeholder="예약시간" class="form-control" readonly> 
								<input type="hidden" name="catecode" id="catecode" class="text">
								
							<div class="submit">
								<button type="submit" class="btn btn-primary" id=sumbmitBtn>예약 등록</button>
							</div>
						</div>


					</div>
				</div>
				</div>
				</div>
				<div class="col-md-1"></div>
			</div>
		</form>
		

	<script>
	
	$(document).on("keyup", "#tel", function() 
			{ $(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); }); // 전화번호 정규식



	</script>
</body>
</html>