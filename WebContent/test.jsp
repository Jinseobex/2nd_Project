<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Load c3.css -->
<link href="assets/css/c3.css" rel="stylesheet">

<!-- Load d3.js and c3.js -->
<script src="assets/js/d3-5.8.2.min.js" charset="utf-8"></script>
<script src="assets/js/c3.js"></script>

</head>
<body>

<div id="chart"></div>


<script>

var chart = c3.generate({
    bindto: '#chart',
    data: {
      columns: [
        ['data1', 30, 200, 100, 400, 150, 250],
        ['data2', 50, 20, 10, 40, 15, 25]
      ]
    }
});

</script>

</body>
</html>