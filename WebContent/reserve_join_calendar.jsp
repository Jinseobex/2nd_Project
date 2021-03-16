<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <meta charset='utf-8' />
    <link href='fullcalendar/main.css' rel='stylesheet' />
    <script src='fullcalendar/main.js'></script>
    <script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth'
        });
        calendar.render();
      });

    </script>
<script src="http://code.jquery.com/jquery-latest.min.js"
	type="text/javascript">
	
</script>
<style>
@charset "utf-8";

html, body, div, p, span, a, ul, ol, li, dl, dt, dd, h1, h2, h3, h4,
	form, select, fieldset, input, textarea {
	margin: 0;
	padding: 0;
	border: 0;
	list-style: none;
	font-family: "NanumGothic", "Tahoma", "Helvetica", "AppleGothic",
		"sans-serif";
	color: #696969;
}

body, div, span, a, input, select, textarea {
	text-decoration: none;
}

ul, ol, dl {
	list-style: none;
}

img {
	border: 0;
	vertical-align: top;
}

ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

img {
	margin: 0;
	border: 0;
	padding: 0px;
	border-collapse: collapse;
}

#a, img {
	selector-dummy: expression(this.hideFocus = true);
}

input, select {
	vertical-align: middle;
}

input, button { 
	vertical-align: middle;
}

input[type=radio] {
	margin-top: -3px;
	cursor: pointer;
}

form {
	display: block;
}

label {
	margin-left: 5px;
	margin-right: 20px;
	cursor: pointer;
}

select {
	height: 23px;
}

body {
	margin: 0 auto;
	width: 100%;
	height: 100%;
	padding: 0px;
	font-size: 12px;
	background-color: #FFFFFF;
	SCROLLBAR-FACE-COLOR: #ffffff;
	SCROLLBAR-SHADOW-COLOR: #ae9da5;
	SCROLLBAR-HIGHLIGHT-COLOR: #ffffff;
	SCROLLBAR-3DLIGHT-COLOR: #ae9da5;
	SCROLLBAR-DARKSHADOW-COLOR: #ffffff;
	SCROLLBAR-TRACK-COLOR: #ffffff;
	SCROLLBAR-ARROW-COLOR: #ae9da5;
}


aside {
	display: block;
	width: 100%;
	margin: 0px;
	padding: 50px 0 50px 0;
	border: 0px currentColor;
	border-image: none;
}

.box-login {
	margin: 0px auto;
	margin-bottom: 30px;
	display: block;
	width: 600px;
	background-color: #fff;
}

.box-login .wrap-input {
	margin: 0 auto;
	display: block;
	width: 400px;
}

.box-login .wrap-input .floatL {
	display: block;
	vertical-align: top;
	width: 100%
}

.content_cate_area {
	margin: 20px auto;
	display: block;
	width: 98%;
	max-width: 1000px;
	border-style: solid;
	border-width: 1px 0 1px 0;
	border-color: #d1d1d1;
	padding: 20px 0 20px 0;
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

.box-login .wrap-input input.text {
	width: 100%;
	height: 40px;
	margin-bottom: 10px;
	font-family: "NanumGothic", "Tahoma", "Helvetica", "AppleGothic",
		"sans-serif";
	font-weight: bold;
	font-size: 14px;
	color: #555;
	text-indent: 10px;
	border: 1px solid #cfcfcf;
	background-color: #eee;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
}
#container1 {
    width: 550px;
    float:left;
}
#container {
    width: 500px;.
    float:right;
}
</style>
<script>
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
</head>
<body>
  <div id='container'>
  <div class="col-md-1"></div>
   <div class="col-md-6">
<label>예약날짜</label><br>
  <div id='container1'>
    <div id='calendar'></div>
    </div><br>
    <label>예약시간</label>
  </div>
 
    <div class="col-md-5">
			<form name="form_par" id="form_par" onsubmit="join()" action=""
				method="">
				<div class="box-login">
					<div class="wrap-input floatL">
						<div class="content_cate_area" style="text-align: center;">
							<label>오전</label><br>
							<br>
					
							<br> <a href="javascript:insert_cate('1','9:00');">
								<div id="id_cateimg_1" class="btn_cate_food1">9:00</div>
							</a> <a href="javascript:insert_cate('2','10:00');">
								<div id="id_cateimg_2" class="btn_cate_food1">10:00</div>
							</a> <a href="javascript:insert_cate('3','11:00');">
								<div id="id_cateimg_3" class="btn_cate_food1">11:00</div>
							</a> <br><br><label>오후</label><br>
							<br>
							<br>
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
							</a> </a> 
							<input type="text" name="catecodename" id="catecodename"
								placeholder="선택" class="text" readonly="readonly"> <input
								type="text" name="catecode" id="catecode" class="text">
						</div>


					</div>
				</div>

			</form>
</div>
</div>

</body>
</html>

