<%@page import="org.json.JSONArray"%>
<%@page import="org.covid19.statusBoardApi.StatusBoard"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>코로나19 선별진료소 안내 및 예약 시스템</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/g_logo.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
  <!-- status Board1 -->
  <link rel="shortcut icon" type="image/x-icon" href="https://corona-19.kr/img/favicon.ico">

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
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  
  <!-- XEICON -->
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">

  <!-- Custom CSS -->
  <link href="assets/css/c3.min.css" rel="stylesheet">
  <link href="assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
  <link href="assets/extra-libs/jvector/jquery-jvectormap-2.0.2.css" rel="stylesheet" />
  
  <!-- Custom CSS -->
  <link href="dist/css/style.min.css" rel="stylesheet">

  <!-- SweetAlert -->
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  
   <!-- 구글 애널리틱스 -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-158925427-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-158925427-1');
	</script>
	
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
    <!-- This Page JS -->
    <script src="assets/js/d3-5.8.2.min.js"></script>
    <script src="assets/js/c3.min.js"></script>
    <script src="../assets/libs/chartist/dist/chartist.min.js"></script>
    <script src="../assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="../dist/js/pages/dashboards/dashboard1.min.js"></script>	
    <!--Morris JavaScript -->
    <script src="assets/libs/raphael/raphael.min.js"></script>
    <script src="assets/libs/morris.js/morris.min.js"></script>
	
	<!-- Chart JS -->
    <script src="dist/js/pages/chartjs/chartjs.init.js"></script>
    <script src="assets/libs/chart.js/dist/Chart.min.js"></script>
    
    <!-- c3 CDN -->
    <!-- Load c3.css -->
	<link href="assets/css/c3.css" rel="stylesheet">
	<!-- Load d3.js and c3.js -->
	<script src="assets/js/d3-5.8.2.min.js" charset="utf-8"></script>
	<script src="assets/js/c3.js"></script>



	<!-- 현황판 api -->
	<%	
	JSONObject jsonKorea = StatusBoard.status_korea();
	JSONObject jsonCity = StatusBoard.status_city();
	
	JSONObject stringKorea = new JSONObject(jsonCity.get("korea").toString());
	JSONObject stringSeoul = new JSONObject(jsonCity.get("seoul").toString());
	JSONObject stringBusan = new JSONObject(jsonCity.get("busan").toString());
	JSONObject stringDaegu = new JSONObject(jsonCity.get("daegu").toString());
	JSONObject stringIncheon = new JSONObject(jsonCity.get("incheon").toString());
	JSONObject stringGwangju = new JSONObject(jsonCity.get("gwangju").toString());
	JSONObject stringDaejeon = new JSONObject(jsonCity.get("daejeon").toString());
	JSONObject stringUlsan = new JSONObject(jsonCity.get("ulsan").toString());
	JSONObject stringSejong = new JSONObject(jsonCity.get("sejong").toString());
	JSONObject stringGyeonggi = new JSONObject(jsonCity.get("gyeonggi").toString());
	JSONObject stringGangwon = new JSONObject(jsonCity.get("gangwon").toString());
	JSONObject stringChungbuk = new JSONObject(jsonCity.get("chungbuk").toString());
	JSONObject stringChungnam = new JSONObject(jsonCity.get("chungnam").toString());
	JSONObject stringJeonbuk = new JSONObject(jsonCity.get("jeonbuk").toString());
	JSONObject stringJeonnam = new JSONObject(jsonCity.get("jeonnam").toString());
	JSONObject stringGyeongbuk = new JSONObject(jsonCity.get("gyeongbuk").toString());
	JSONObject stringGyeongnam = new JSONObject(jsonCity.get("gyeongnam").toString());
	JSONObject stringJeju = new JSONObject(jsonCity.get("jeju").toString());
	JSONObject stringQuarantine = new JSONObject(jsonCity.get("quarantine").toString());
	
	// 국내 확진자 계산
	String a = jsonKorea.get("TotalCase").toString();
	a = a.replace(",", "");
	
	String b = jsonKorea.get("TotalChecking").toString();
	b = b.replace(",", "");
	
	double i = Double.parseDouble(a);
	int j = Integer.parseInt(b);
	
	double per = (i / j * 100);
	String domesticConfirm = String.format("%.2f", per);
	
	
	//String[] korea = {"recovered", "newCase", "totalCase", "death", "percentage", "newCcase", "newFcase"};
	//String city = (String) stringCity.get("recovered");
	%>

	<!-- 시도별 확진환자 현황 차트 -->
	
	<script>
	$(function() {
		c3.generate({
			bindto: "#mapAll-status",
			data: {
				columns: [
					['서울', 31.4],
					['기타', 27.44],
					['경기', 26.89],
					['대구', 9.33],
					['인천', 4.92],
				],
				type: "donut",
				tooltip: {
					show: !0
				}
			},
			donut: {
				label: {
					show: !1
				},
				title: "시도별 확진환자 현황 / 단위: %",
				width: 18
			},
			legend: {
				hide: !0
			},
			color: {
				pattern: ["#5f76e8", "#ff4f70", "#01caf1", "#28a745", "#edf2f6"]
			}
		});
		d3.select("#mapAll-status .c3-chart-arcs-title").style("font-family", "Rubik");
		var e = {
			axisX: {
				showGrid: !1
			},
			seriesBarDistance: 1,
			chartPadding: {
				top: 15,
				right: 15,
				bottom: 5,
				left: 0
			},
			plugins: [Chartist.plugins.tooltip()],
			width: "100%"
		};
	});	
	</script>
	
	<script>
	$(function() {
		c3.generate({
			bindto: "#Day-status",
			data: {
				columns: [
				  ['서울 (+102)',  102],
				  ['부산 (+19)',  19],
				  ['대구 (+3)',  3],
				  ['인천 (+20)',  20],
				  ['광주 (+33)',  33],
				  ['대전 (+1)',  1],
				  ['울산 (+11)',  11],
				  ['세종 (+0)',  0],
				  ['경기 (+188)',  188],
				  ['강원 (+13)',  13],
				  ['충북 (+21)',  21],
				  ['충남 (+15)',  15],
				  ['전북 (+8)',  8],
				  ['전남 (+3)',  3],
				  ['경북 (+2)',  2],
				  ['경남 (+1)',  1],
				  ['제주 (+2)',  2],
				  ['검역 (+4)',  4],
				],
				type: "donut",
				tooltip: {
					show: !0
				}
			},
			donut: {
				label: {
					show: !1
				},
				title: "전일대비 확진자수: 446명",
				width: 18
			},
			legend: {
				hide: !0
			},
			color: {
				pattern: ["#5f76e8", "#ff4f70", "#01caf1", "#28a745", "#edf2f6", "#5f76e8", "#ff4f70", "#01caf1", "#28a745", "#edf2f6", "#5f76e8", "#ff4f70", "#01caf1", "#28a745", "#edf2f6", "#5f76e8", "#ff4f70", "#01caf1"]
			}
		});
		d3.select("#mapAll-status .c3-chart-arcs-title").style("font-family", "Rubik");
		var e = {
			axisX: {
				showGrid: !1
			},
			seriesBarDistance: 1,
			chartPadding: {
				top: 15,
				right: 15,
				bottom: 5,
				left: 0
			},
			plugins: [Chartist.plugins.tooltip()],
			width: "100%"
		};
	});	
	</script>
	
	<script>
	$(function() {
		c3.generate({
			bindto: "#mapAll-nowstatus",
			data: {
				columns: [
				  ['서울 (2916명)',  2916],
				  ['부산 (210명)',  210],
				  ['대구 (102명)',  102],
				  ['인천 (244명)',  244],
				  ['광주 (145명)',  145],
				  ['대전 (20명)',  20],
				  ['울산 (37명)',  37],
				  ['세종 (23명)',  23],
				  ['경기 (2498명)',  2498],
				  ['강원 (94명)',  94],
				  ['충북 (205명)',  205],
				  ['충남 (153명)',  153],
				  ['전북 (99명)',  99],
				  ['전남 (79명)',  79],
				  ['경북 (109명)',  109],
				  ['경남 (49명)',  49],
				  ['제주 (41명)',  41],
				  ['검역 (694명)',  694],
				],
				type: "donut",
				tooltip: {
					show: !0
				}
			},
			donut: {
				label: {
					show: !1
				},
				title: "치료중인 환자 수: 7,718명",
				width: 18
			},
			legend: {
				hide: !0
			},
			color: {
				pattern: ["#5f76e8", "#ff4f70", "#01caf1", "#28a745", "#edf2f6", "#5f76e8", "#ff4f70", "#01caf1", "#28a745", "#edf2f6", "#5f76e8", "#ff4f70", "#01caf1", "#28a745", "#edf2f6", "#5f76e8", "#ff4f70", "#01caf1"]
			}
		});
		d3.select("#mapAll-status .c3-chart-arcs-title").style("font-family", "Rubik");
		var e = {
			axisX: {
				showGrid: !1
			},
			seriesBarDistance: 1,
			chartPadding: {
				top: 15,
				right: 15,
				bottom: 5,
				left: 0
			},
			plugins: [Chartist.plugins.tooltip()],
			width: "100%"
		};
	});	
	</script>
      
      
  
</head>

<body>


  <!-- ======= Top Bar ======= -->
  <section id="topbar" class="d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
     <!-- <div class="contact-info d-flex align-items-center">
        <i class="bi bi-envelope d-flex align-items-center"><a href="main.jsp">코로나바이러스감염증-19</a></i>
        <i class="bi bi-phone d-flex align-items-center ms-4"><span>(COVID-19)</span></i>
      </div>
      -->
      <div class="social-links d-none d-md-flex align-items-center">
        <a href="http://ncv.kdca.go.kr/" class="link1"><img src="assets/img/g_logo.png" width="20px" height="20px"> 코로나19 백신 및 예방접종</a>
        <a href="http://www.mohw.go.kr/" class="link2"><img src="assets/img/g_logo.png" width="20px" height="20px"> 중앙사고수습본부</a>
        <a href="http://www.kdca.go.kr/" class="link3"><img src="assets/img/g_logo.png" width="20px" height="20px"> 중앙방역대책본부</a>
      </div>
    </div>
  </section>

  <!-- ======= Header ======= -->
  <header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="#">코로나바이러스감염증-19<span> (COVID-19)</span></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt=""></a>-->

      <nav id="navbar" class="navbar">
        <ul>
         <li><a class="nav-link scrollto active" href="#hero">안내</a></li>
          <li><a class="nav-link scrollto" href="#about">진료소 찾기</a></li>
          <li><a class="nav-link scrollto" href="#services">국내 현황판</a></li>
          <li><a class="nav-link scrollto " href="#portfolio">Portfolio</a></li>
          <li><a class="nav-link scrollto" href="#team">미디어</a></li>
          <!-- <li class="dropdown"><a href="#"><span>Drop Down</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="#">Drop Down 1</a></li>
              <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                <ul>
                  <li><a href="#">Deep Drop Down 1</a></li>
                  <li><a href="#">Deep Drop Down 2</a></li>
                  <li><a href="#">Deep Drop Down 3</a></li>
                  <li><a href="#">Deep Drop Down 4</a></li>
                  <li><a href="#">Deep Drop Down 5</a></li>
                </ul>
              </li>
              <li><a href="#">Drop Down 2</a></li>
              <li><a href="#">Drop Down 3</a></li>
              <li><a href="#">Drop Down 4</a></li>
            </ul>
          </li>
          -->
          <li><a class="nav-link scrollto" href="#contact">관리자</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">
    <div class="container" data-aos="zoom-out" data-aos-delay="100">
      <h1>코로나19 선별진료소 <span>안내</span> 및 <span>예약 </span>시스템</h1>
      <h2>찾고자 하는 선별진료소의 시, 군, 구를 입력해주세요</h2>
      <div class="d-flex">
        <a href="#about" class="btn-get-started scrollto">진료소 찾기</a>
        <a href="https://www.youtube.com/watch?v=vZAtsL6t_4Y" class="glightbox btn-watch-video"><i class="bi bi-play-circle"></i><span>코로나19 정부 브리핑</span></a> 
      </div>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h3>코로나19 선별진료소 <span>검색</span></h3>
          <p>찾고자 하는 진료소의 위치를 시, 군, 구까지 입력해주세요.</p>
    <footer id="footer">
     <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6">
            <!-- <h4>Join Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>-->
            <form action="" method="post">
              <input type="search" name="search"><input type="submit" value="찾기">
            </form>
          </div>
        </div>
      </div>
    </div>
    </footer>
        </div>
        <jsp:include page="kakaomapapi.jsp" flush="false" />
    </section><!-- End About Section -->

    <!-- ======= 현황판, services Section ======= -->
    <section id="services" class="services">
      <div class="container" data-aos="fade-up">

            <div class="page-breadcrumb">
                <div class="section-title">
                					<% String upTime = jsonKorea.get("updateTime").toString();
									String after = upTime.substring(22);
									%>
									<h3>코로나바이러스감염증-19 국내 발생현황 </h3><h4><span><%=after%></span></h4>
									<p>00시 데이터 기준으로 오전 <span>9시~10시</span> 사이에 자동으로 업데이트 됩니다.</p>
                        </div>
                    </div>
                    <div class="col-5 align-self-center">
                        <div class="customize-input float-right">
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="card-group">
                    <div class="card border-right">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-dark mb-1 font-weight-medium">
										<span style="color: #f89009;">
										<!-- 국내 확진자 -->
										<%=jsonKorea.get("TotalCase")%>명
										</span>
										</h2>
                                        <span
                                            class="badge bg-warning font-12 text-white font-weight-medium badge-pill ml-2 d-lg-block d-md-none">+
											<%=stringKorea.get("newCase")%>명										</span>
                                    </div>
                                    <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">국내 확진자</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-muted"><i data-feather="users"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card border-right">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-dark mb-1 font-weight-medium">
										<span style="color: #009a87;">
										<!-- 국내 완치자 -->
										<%=jsonKorea.get("TotalRecovered")%>명
										</span>
										</h2>
                                        <span
                                            class="badge bg-success font-12 text-white font-weight-medium badge-pill ml-2 d-lg-block d-md-none">+
											<%=jsonKorea.get("TodayRecovered")%>명										</span>
                                    </div>
                                    <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">국내 완치자</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-muted"><i data-feather="pocket"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card border-right">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-dark mb-1 font-weight-medium">
										<span style="color: #ee2323;">
										<!-- 국내 사망자 -->
										<%=jsonKorea.get("TotalDeath")%>명
										</span>
										</h2>
										<span class="badge bg-danger font-12 text-white font-weight-medium badge-pill ml-2 d-lg-block d-md-none">
										+<%=jsonKorea.get("TodayDeath")%>명
										</span>                                    </div>
                                    <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">국내 사망자</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-muted"><i data-feather="clipboard"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card border-right">
                        <div class="card-body">
                            <div class="d-flex d-lg-flex d-md-block align-items-center">
                                <div>
                                    <div class="d-inline-flex align-items-center">
                                        <h2 class="text-dark mb-1 font-weight-medium">
										<span style="color: #006dd7;">
										<!-- 국내 치료 중 -->
										<%=jsonKorea.get("TotalRecovered")%>명
										</span>
										</h2>
                                        <span
                                            class="badge bg-primary font-12 text-white font-weight-medium badge-pill ml-2 d-lg-block d-md-none">
											+<%=jsonKorea.get("TodayRecovered")%>명										</span>
                                    </div>
                                    <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">국내 치료중</h6>
                                </div>
                                <div class="ml-auto mt-md-3 mt-lg-0">
                                    <span class="opacity-7 text-muted"><i data-feather="activity"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
             
                </div>
		
                <div class="row">
       
                    <div class="col-lg-4 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">전일대비 확진환자 증감 비율</h4>
                                
                                <div id="Day-status"></div>
                                
                                <ul class="list-inline text-center mt-5 mb-2">
                                    <li class="list-inline-item text-muted">당일 00시 데이터가 아직 없는 경우 전날의 데이터가 연계됩니다.</li>
									<br><br>
                                    <li class="list-inline-item text-muted">해외입국확진(검역)은 <b>4명</b>, 국내 확진자는 <b>442명</b> 입니다.</li>
									<br><br>
                                </ul>
                            </div>
						</div>
                    </div>
					<div class="col-lg-4 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">시도별 치료중 환자 현황</h4>
                                <div id="mapAll-nowstatus"></div>
                                <ul class="list-inline text-center mt-5 mb-2">
                                    <li class="list-inline-item text-muted">당일 00시 데이터가 아직 없는 경우 전날의 데이터가 연계됩니다.</li>
									<br><br>
                                    <li class="list-inline-item text-muted">차트에 마우스를 올리거나 클릭하면 정확한 수치를 확인할 수 있습니다.</li>
									<br><br>
                                </ul>
                            </div>
                        </div>
                    </div>
					<div class="col-lg-4 col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">국내 부가 정보</h4>
								<div class="card border-right">
									<div class="card-body">
										<div class="d-flex d-lg-flex d-md-block align-items-center">
											<div>
												<div class="d-inline-flex align-items-center">
													<h2 class="text-dark mb-1 font-weight-medium">
													<span style="color: #f89009;">
													<!-- 국내 확진자 -->
													<%=domesticConfirm%>%
													</span>
													</h2>
												</div>
												<h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">국내 확진율</h6>
											</div>
											<div class="ml-auto mt-md-3 mt-lg-0">
												<span class="opacity-7 text-muted"><i data-feather="users"></i></span>
											</div>
										</div>
									</div>
								</div>
								<div class="card border-right">
									<div class="card-body">
										<div class="d-flex d-lg-flex d-md-block align-items-center">
											<div>
													<h2 class="text-dark mb-1 font-weight-medium">
													<span style="color: #009a87;">
													<!-- 국내 완치율 -->
													<%=jsonKorea.get("recoveredPercentage")%>%
													</span>
													</h2>
												<h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">국내 완치율</h6>
											</div>
											<div class="ml-auto mt-md-3 mt-lg-0">
												<span class="opacity-7 text-muted"><i data-feather="pocket"></i></span>
											</div>
										</div>
									</div>
								</div>
								<div class="card border-right">
									<div class="card-body">
										<div class="d-flex d-lg-flex d-md-block align-items-center">
											<div>
												<div class="d-inline-flex align-items-center">
													<h2 class="text-dark mb-1 font-weight-medium">
													<span style="color: #ee2323;">
													<!-- 국내 사망률 -->
													<%=jsonKorea.get("deathPercentage")%>%
													</span>
													</h2>
													<!-- <span
														class="badge bg-danger font-12 text-white font-weight-medium badge-pill ml-2 d-md-none d-lg-block">-18.33%</span> -->
												</div>
												<h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">국내 사망률</h6>
											</div>
											<div class="ml-auto mt-md-3 mt-lg-0">
												<span class="opacity-7 text-muted"><i data-feather="clipboard"></i></span>
											</div>
										</div>
									</div>
								</div>

                                <ul class="list-inline text-center mt-5 mb-2">
                                    <li class="list-inline-item text-muted">당일 데이터가 없는 경우 전날의 데이터가 연계됩니다.</li>
									<br>
                                    <li class="list-inline-item text-muted">확진율 = 결과양성(<%=jsonKorea.get("caseCount")%>) / 총 검사완료수(<%=jsonKorea.get("TotalChecking")%>) * 100%</li>
                                </ul>
                            </div>
                        </div>
                    </div>
         
					<div class="col-md-6 col-lg-12">
                        <div class="card">
                            <div class="card-body">
							<h4 class="card-title style="text-align: center;" data-ke-size="size20"><b><i class="xi-eye"></i> 대한민국 시도별 발생동향 한눈에 보기</b></h4>
							<hr>
							<div class="row">
								<div class="col-sm-4">
								<br><br>
																		대한민국 시도별 발생동향을 확인하실 수 있습니다.<br><br>
									발생률: 인구 10만명당 (지역별 인구 출처 : 행정안전부, 주민등록인구현황 (’20.1월 기준))<br><br>
									※ 지역구분은 신고지를 기준으로 하며, 초기 신고 이후 소관지역이 변경된 경우 변동 가능<br>
									※ 발생률은 반올림되어 표기되었습니다.
								</div>
								<div class="col-sm-4">
									<!-- 시도별 발생동향 그래프 -->
									<br>
									<div id="mapAll-status"></div>
								</div>
								<div class="col-sm-4">
									<br>
									<ul class="list-style-none mb-0">
										<li>
											<i class="fas fa-circle text-primary font-10 mr-2"></i>
											<span class="text-muted">서울</span>
											<span class="text-dark float-right font-weight-medium">
											31.4%
											</span>
										</li>
										<li class="mt-3">
											<i class="fas fa-circle text-danger font-10 mr-2"></i>
											<span class="text-muted">기타</span>
											<span class="text-dark float-right font-weight-medium">
											27.44%
											</span>
										</li>
										<li class="mt-3">
											<i class="fas fa-circle text-cyan font-10 mr-2"></i>
											<span class="text-muted">경기</span>
											<span class="text-dark float-right font-weight-medium">
											26.89%
											</span>
										</li>
										<li class="mt-3">
											<i class="fas fa-circle text-success font-10 mr-2"></i>
											<span class="text-muted">대구</span>
											<span class="text-dark float-right font-weight-medium">
											9.33%
											</span>
										</li>
										<li class="mt-3">
											<i class="fas fa-circle text-light font-10 mr-2"></i>
											<span class="text-muted">인천</span>
											<span class="text-dark float-right font-weight-medium">
											4.92%
											</span>
										</li>
									</ul>
									<ul class="list-inline text-center mt-5 mb-2">
										<li class="list-inline-item text-muted">차트에 마우스를 올리거나 클릭하면 정확한 수치를 확인할 수 있습니다.</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					</div>
					
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="http://ncov.mohw.go.kr/"target="_blank"><span style="color: #000000;"><u>대한민국</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">93,263명</span> <span style="color: #ffbb33;">[+446명]</span>
										<br>
										완치자: <span style="color: #009a87;">83,900명</span><br>
										사망자: <span style="color: #ee2323;">1,645명</span><br>
										치료중: <span style="color: #5f76e8;">7718명</span><br>
										발생률: <span style="color: #006dd7;">179.88 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="http://www.seoul.go.kr/coronaV/coronaStatus.do"target="_blank"><span style="color: #000000;"><u>서울</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">29,281명</span> <span style="color: #ffbb33;">[+102명]</span>
										<br>
										완치자: <span style="color: #009a87;">25,969명</span><br>
										사망자: <span style="color: #ee2323;">396명</span><br>
										치료중: <span style="color: #5f76e8;">2916명</span><br>
										발생률: <span style="color: #006dd7;">300.83 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="http://www.busan.go.kr/corona19/index"target="_blank"><span style="color: #000000;"><u>부산</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">3,351명</span> <span style="color: #ffbb33;">[+19명]</span>
										<br>
										완치자: <span style="color: #009a87;">3,031명</span><br>
										사망자: <span style="color: #ee2323;">110명</span><br>
										치료중: <span style="color: #5f76e8;">210명</span><br>
										발생률: <span style="color: #006dd7;">98.22 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="http://www.daegu.go.kr/"target="_blank"><span style="color: #000000;"><u>대구</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">8,697명</span> <span style="color: #ffbb33;">[+3명]</span>
										<br>
										완치자: <span style="color: #009a87;">8,381명</span><br>
										사망자: <span style="color: #ee2323;">214명</span><br>
										치료중: <span style="color: #5f76e8;">102명</span><br>
										발생률: <span style="color: #006dd7;">356.95 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="https://www.incheon.go.kr/"target="_blank"><span style="color: #000000;"><u>인천</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">4,590명</span> <span style="color: #ffbb33;">[+20명]</span>
										<br>
										완치자: <span style="color: #009a87;">4,292명</span><br>
										사망자: <span style="color: #ee2323;">54명</span><br>
										치료중: <span style="color: #5f76e8;">244명</span><br>
										발생률: <span style="color: #006dd7;">155.27 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="https://www.gwangju.go.kr/"target="_blank"><span style="color: #000000;"><u>광주</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">2,166명</span> <span style="color: #ffbb33;">[+33명]</span>
										<br>
										완치자: <span style="color: #009a87;">2,000명</span><br>
										사망자: <span style="color: #ee2323;">21명</span><br>
										치료중: <span style="color: #5f76e8;">145명</span><br>
										발생률: <span style="color: #006dd7;">148.69 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="https://www.daejeon.go.kr/corona19/index.do"target="_blank"><span style="color: #000000;"><u>대전</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">1,198명</span> <span style="color: #ffbb33;">[+1명]</span>
										<br>
										완치자: <span style="color: #009a87;">1,163명</span><br>
										사망자: <span style="color: #ee2323;">15명</span><br>
										치료중: <span style="color: #5f76e8;">20명</span><br>
										발생률: <span style="color: #006dd7;">81.27 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="http://www.ulsan.go.kr/corona.jsp"target="_blank"><span style="color: #000000;"><u>울산</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">1,039명</span> <span style="color: #ffbb33;">[+11명]</span>
										<br>
										완치자: <span style="color: #009a87;">965명</span><br>
										사망자: <span style="color: #ee2323;">37명</span><br>
										치료중: <span style="color: #5f76e8;">37명</span><br>
										발생률: <span style="color: #006dd7;">90.58 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="https://www.sejong.go.kr/life/sub05_0704.do"target="_blank"><span style="color: #000000;"><u>세종</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">242명</span> <span style="color: #ffbb33;"></span>
										<br>
										완치자: <span style="color: #009a87;">218명</span><br>
										사망자: <span style="color: #ee2323;">1명</span><br>
										치료중: <span style="color: #5f76e8;">23명</span><br>
										발생률: <span style="color: #006dd7;">70.69 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="https://www.gg.go.kr/bbs/boardView.do?bsIdx=464&bIdx=2296956&menuId=1535"target="_blank"><span style="color: #000000;"><u>경기</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">25,076명</span> <span style="color: #ffbb33;">[+188명]</span>
										<br>
										완치자: <span style="color: #009a87;">22,070명</span><br>
										사망자: <span style="color: #ee2323;">508명</span><br>
										치료중: <span style="color: #5f76e8;">2498명</span><br>
										발생률: <span style="color: #006dd7;">189.25 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="http://www.provin.gangwon.kr/"target="_blank"><span style="color: #000000;"><u>강원</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">1,927명</span> <span style="color: #ffbb33;">[+13명]</span>
										<br>
										완치자: <span style="color: #009a87;">1,791명</span><br>
										사망자: <span style="color: #ee2323;">42명</span><br>
										치료중: <span style="color: #5f76e8;">94명</span><br>
										발생률: <span style="color: #006dd7;">125.09 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="http://www.chungbuk.go.kr/"target="_blank"><span style="color: #000000;"><u>충북</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">1,892명</span> <span style="color: #ffbb33;">[+21명]</span>
										<br>
										완치자: <span style="color: #009a87;">1,629명</span><br>
										사망자: <span style="color: #ee2323;">58명</span><br>
										치료중: <span style="color: #5f76e8;">205명</span><br>
										발생률: <span style="color: #006dd7;">118.30 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="http://www.chungnam.go.kr/coronaStatus.do"target="_blank"><span style="color: #000000;"><u>충남</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">2,511명</span> <span style="color: #ffbb33;">[+15명]</span>
										<br>
										완치자: <span style="color: #009a87;">2,323명</span><br>
										사망자: <span style="color: #ee2323;">35명</span><br>
										치료중: <span style="color: #5f76e8;">153명</span><br>
										발생률: <span style="color: #006dd7;">118.31 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="http://www.jeonbuk.go.kr/"target="_blank"><span style="color: #000000;"><u>전북</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">1,245명</span> <span style="color: #ffbb33;">[+8명]</span>
										<br>
										완치자: <span style="color: #009a87;">1,090명</span><br>
										사망자: <span style="color: #ee2323;">56명</span><br>
										치료중: <span style="color: #5f76e8;">99명</span><br>
										발생률: <span style="color: #006dd7;">68.51 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="https://www.jeonnam.go.kr/coronaMainPage.do"target="_blank"><span style="color: #000000;"><u>전남</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">890명</span> <span style="color: #ffbb33;">[+3명]</span>
										<br>
										완치자: <span style="color: #009a87;">803명</span><br>
										사망자: <span style="color: #ee2323;">8명</span><br>
										치료중: <span style="color: #5f76e8;">79명</span><br>
										발생률: <span style="color: #006dd7;">47.73 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="http://www.gb.go.kr/Main/index.html"target="_blank"><span style="color: #000000;"><u>경북</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">3,323명</span> <span style="color: #ffbb33;">[+2명]</span>
										<br>
										완치자: <span style="color: #009a87;">3,143명</span><br>
										사망자: <span style="color: #ee2323;">71명</span><br>
										치료중: <span style="color: #5f76e8;">109명</span><br>
										발생률: <span style="color: #006dd7;">124.81 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="http://www.gyeongnam.go.kr/corona.html"target="_blank"><span style="color: #000000;"><u>경남</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">2,221명</span> <span style="color: #ffbb33;">[+1명]</span>
										<br>
										완치자: <span style="color: #009a87;">2,158명</span><br>
										사망자: <span style="color: #ee2323;">14명</span><br>
										치료중: <span style="color: #5f76e8;">49명</span><br>
										발생률: <span style="color: #006dd7;">66.07 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="https://jeju.go.kr/covid19.jsp"target="_blank"><span style="color: #000000;"><u>제주</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">598명</span> <span style="color: #ffbb33;">[+2명]</span>
										<br>
										완치자: <span style="color: #009a87;">556명</span><br>
										사망자: <span style="color: #ee2323;">1명</span><br>
										치료중: <span style="color: #5f76e8;">41명</span><br>
										발생률: <span style="color: #006dd7;">89.15 %</span>
									</div>
								</div>
							</div>
							<div class="col-lg-3 col-md-6">
								<div class="card">
									<div class="card-body collapse show">
										<h4 class="card-title"><a href="http://ncov.mohw.go.kr/"target="_blank"><span style="color: #000000;"><u>검역</u></span><u>(정보보기)</u></a></h4> 
										확진자: <span style="color: #f89009;">3,016명</span> <span style="color: #ffbb33;">[+4명]</span>
										<br>
										완치자: <span style="color: #009a87;">2,318명</span><br>
										사망자: <span style="color: #ee2323;">4명</span><br>
										치료중: <span style="color: #5f76e8;">694명</span><br>
										발생률: <span style="color: #006dd7;">- %</span>
									</div>
								</div>
							</div>				</div>
			</div>
    </section><!-- End Services Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
      <div class="container" data-aos="zoom-in">

        <div class="testimonials-slider swiper-container" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper-wrapper">

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                <h3>Saul Goodman</h3>
                <h4>Ceo &amp; Founder</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                <h3>Sara Wilsson</h3>
                <h4>Designer</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                <h3>Jena Karlis</h3>
                <h4>Store Owner</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                <h3>Matt Brandon</h3>
                <h4>Freelancer</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

            <div class="swiper-slide">
              <div class="testimonial-item">
                <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                <h3>John Larson</h3>
                <h4>Entrepreneur</h4>
                <p>
                  <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                  Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                  <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                </p>
              </div>
            </div><!-- End testimonial item -->

          </div>
          <div class="swiper-pagination"></div>
        </div>

      </div>
    </section><!-- End Testimonials Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Portfolio</h2>
          <h3>Check our <span>Portfolio</span></h3>
          <p>Ut possimus qui ut temporibus culpa velit eveniet modi omnis est adipisci expedita at voluptas atque vitae autem.</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-12 d-flex justify-content-center">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-app">App</li>
              <li data-filter=".filter-card">Card</li>
              <li data-filter=".filter-web">Web</li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="200">

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/portfolio/portfolio-1.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>App 1</h4>
              <p>App</p>
              <a href="assets/img/portfolio/portfolio-1.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 1"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/portfolio/portfolio-2.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Web 3</h4>
              <p>Web</p>
              <a href="assets/img/portfolio/portfolio-2.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>App 2</h4>
              <p>App</p>
              <a href="assets/img/portfolio/portfolio-3.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 2"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="assets/img/portfolio/portfolio-4.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Card 2</h4>
              <p>Card</p>
              <a href="assets/img/portfolio/portfolio-4.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 2"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/portfolio/portfolio-5.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Web 2</h4>
              <p>Web</p>
              <a href="assets/img/portfolio/portfolio-5.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 2"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <img src="assets/img/portfolio/portfolio-6.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>App 3</h4>
              <p>App</p>
              <a href="assets/img/portfolio/portfolio-6.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="App 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="assets/img/portfolio/portfolio-7.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Card 1</h4>
              <p>Card</p>
              <a href="assets/img/portfolio/portfolio-7.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 1"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <img src="assets/img/portfolio/portfolio-8.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Card 3</h4>
              <p>Card</p>
              <a href="assets/img/portfolio/portfolio-8.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Card 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <img src="assets/img/portfolio/portfolio-9.jpg" class="img-fluid" alt="">
            <div class="portfolio-info">
              <h4>Web 3</h4>
              <p>Web</p>
              <a href="assets/img/portfolio/portfolio-9.jpg" data-gallery="portfolioGallery" class="portfolio-lightbox preview-link" title="Web 3"><i class="bx bx-plus"></i></a>
              <a href="portfolio-details.html" class="details-link" title="More Details"><i class="bx bx-link"></i></a>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Portfolio Section -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Team</h2>
          <h3>Our Hardworking <span>Team</span></h3>
          <p>Ut possimus qui ut temporibus culpa velit eveniet modi omnis est adipisci expedita at voluptas atque vitae autem.</p>
        </div>

        <div class="row">

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="member">
              <div class="member-img">
                <img src="assets/img/team/team-1.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Walter White</h4>
                <span>Chief Executive Officer</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="200">
            <div class="member">
              <div class="member-img">
                <img src="assets/img/team/team-2.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Sarah Jhonson</h4>
                <span>Product Manager</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="300">
            <div class="member">
              <div class="member-img">
                <img src="assets/img/team/team-3.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>William Anderson</h4>
                <span>CTO</span>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="400">
            <div class="member">
              <div class="member-img">
                <img src="assets/img/team/team-4.jpg" class="img-fluid" alt="">
                <div class="social">
                  <a href=""><i class="bi bi-twitter"></i></a>
                  <a href=""><i class="bi bi-facebook"></i></a>
                  <a href=""><i class="bi bi-instagram"></i></a>
                  <a href=""><i class="bi bi-linkedin"></i></a>
                </div>
              </div>
              <div class="member-info">
                <h4>Amanda Jepson</h4>
                <span>Accountant</span>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Team Section -->

    <!-- ======= Pricing Section ======= -->
    <section id="pricing" class="pricing">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Pricing</h2>
          <h3>Check our <span>Pricing</span></h3>
          <p>Ut possimus qui ut temporibus culpa velit eveniet modi omnis est adipisci expedita at voluptas atque vitae autem.</p>
        </div>

        <div class="row">

          <div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="100">
            <div class="box">
              <h3>Free</h3>
              <h4><sup>$</sup>0<span> / month</span></h4>
              <ul>
                <li>Aida dere</li>
                <li>Nec feugiat nisl</li>
                <li>Nulla at volutpat dola</li>
                <li class="na">Pharetra massa</li>
                <li class="na">Massa ultricies mi</li>
              </ul>
              <div class="btn-wrap">
                <a href="#" class="btn-buy">Buy Now</a>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-4 mt-md-0" data-aos="fade-up" data-aos-delay="200">
            <div class="box featured">
              <h3>Business</h3>
              <h4><sup>$</sup>19<span> / month</span></h4>
              <ul>
                <li>Aida dere</li>
                <li>Nec feugiat nisl</li>
                <li>Nulla at volutpat dola</li>
                <li>Pharetra massa</li>
                <li class="na">Massa ultricies mi</li>
              </ul>
              <div class="btn-wrap">
                <a href="#" class="btn-buy">Buy Now</a>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="300">
            <div class="box">
              <h3>Developer</h3>
              <h4><sup>$</sup>29<span> / month</span></h4>
              <ul>
                <li>Aida dere</li>
                <li>Nec feugiat nisl</li>
                <li>Nulla at volutpat dola</li>
                <li>Pharetra massa</li>
                <li>Massa ultricies mi</li>
              </ul>
              <div class="btn-wrap">
                <a href="#" class="btn-buy">Buy Now</a>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 mt-4 mt-lg-0" data-aos="fade-up" data-aos-delay="400">
            <div class="box">
              <span class="advanced">Advanced</span>
              <h3>Ultimate</h3>
              <h4><sup>$</sup>49<span> / month</span></h4>
              <ul>
                <li>Aida dere</li>
                <li>Nec feugiat nisl</li>
                <li>Nulla at volutpat dola</li>
                <li>Pharetra massa</li>
                <li>Massa ultricies mi</li>
              </ul>
              <div class="btn-wrap">
                <a href="#" class="btn-buy">Buy Now</a>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Pricing Section -->

    <!-- ======= Frequently Asked Questions Section ======= -->
    <section id="faq" class="faq section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>F.A.Q</h2>
          <h3>Frequently Asked <span>Questions</span></h3>
          <p>Ut possimus qui ut temporibus culpa velit eveniet modi omnis est adipisci expedita at voluptas atque vitae autem.</p>
        </div>

        <div class="row justify-content-center">
          <div class="col-xl-10">
            <ul class="faq-list">

              <li>
                <div data-bs-toggle="collapse" class="collapsed question" href="#faq1">Non consectetur a erat nam at lectus urna duis? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                <div id="faq1" class="collapse" data-bs-parent=".faq-list">
                  <p>
                    Feugiat pretium nibh ipsum consequat. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non.
                  </p>
                </div>
              </li>

              <li>
                <div data-bs-toggle="collapse" href="#faq2" class="collapsed question">Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                <div id="faq2" class="collapse" data-bs-parent=".faq-list">
                  <p>
                    Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
                  </p>
                </div>
              </li>

              <li>
                <div data-bs-toggle="collapse" href="#faq3" class="collapsed question">Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                <div id="faq3" class="collapse" data-bs-parent=".faq-list">
                  <p>
                    Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus. Urna molestie at elementum eu facilisis sed odio morbi quis
                  </p>
                </div>
              </li>

              <li>
                <div data-bs-toggle="collapse" href="#faq4" class="collapsed question">Ac odio tempor orci dapibus. Aliquam eleifend mi in nulla? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                <div id="faq4" class="collapse" data-bs-parent=".faq-list">
                  <p>
                    Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
                  </p>
                </div>
              </li>

              <li>
                <div data-bs-toggle="collapse" href="#faq5" class="collapsed question">Tempus quam pellentesque nec nam aliquam sem et tortor consequat? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                <div id="faq5" class="collapse" data-bs-parent=".faq-list">
                  <p>
                    Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in
                  </p>
                </div>
              </li>

              <li>
                <div data-bs-toggle="collapse" href="#faq6" class="collapsed question">Tortor vitae purus faucibus ornare. Varius vel pharetra vel turpis nunc eget lorem dolor? <i class="bi bi-chevron-down icon-show"></i><i class="bi bi-chevron-up icon-close"></i></div>
                <div id="faq6" class="collapse" data-bs-parent=".faq-list">
                  <p>
                    Laoreet sit amet cursus sit amet dictum sit amet justo. Mauris vitae ultricies leo integer malesuada nunc vel. Tincidunt eget nullam non nisi est sit amet. Turpis nunc eget lorem dolor sed. Ut venenatis tellus in metus vulputate eu scelerisque. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus faucibus. Nibh tellus molestie nunc non blandit massa enim nec.
                  </p>
                </div>
              </li>

            </ul>
          </div>
        </div>

      </div>
    </section><!-- End Frequently Asked Questions Section -->

    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Contact</h2>
          <h3><span>Contact Us</span></h3>
          <p>Ut possimus qui ut temporibus culpa velit eveniet modi omnis est adipisci expedita at voluptas atque vitae autem.</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">
          <div class="col-lg-6">
            <div class="info-box mb-4">
              <i class="bx bx-map"></i>
              <h3>Our Address</h3>
              <p>A108 Adam Street, New York, NY 535022</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-envelope"></i>
              <h3>Email Us</h3>
              <p>contact@example.com</p>
            </div>
          </div>

          <div class="col-lg-3 col-md-6">
            <div class="info-box  mb-4">
              <i class="bx bx-phone-call"></i>
              <h3>Call Us</h3>
              <p>+1 5589 55488 55</p>
            </div>
          </div>

        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">

          <div class="col-lg-6 ">
            <iframe class="mb-4 mb-lg-0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" style="border:0; width: 100%; height: 384px;" allowfullscreen></iframe>
          </div>

          <div class="col-lg-6">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <div class="col form-group">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6">
            <h4>Join Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>BizLand<span>.</span></h3>
            <p>
              A108 Adam Street <br>
              New York, NY 535022<br>
              United States <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Social Networks</h4>
            <p>Cras fermentum odio eu feugiat lide par naso tierra videa magna derita valies</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container py-4">
      <div class="copyright">
        &copy; Copyright <strong><span>BizLand</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/bizland-bootstrap-business-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>
</html>