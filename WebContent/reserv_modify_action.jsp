<%@page import="org.reservation.ReservationDao"%>
<%@page import="org.reservation.ReservationDto"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String jumin = request.getParameter("jumin");
String tel = request.getParameter("tel");
String date = request.getParameter("date");
String time = request.getParameter("time");
String[] symptoms = request.getParameterValues("symptoms");

String temp = "";
for (int i = 0; i < symptoms.length; i++) {
	if (i == symptoms.length - 1) {
		temp += symptoms[i];
	} else {
		temp += symptoms[i] + ", ";
	}
}

ReservationDto dto = new ReservationDto(name, jumin, tel, temp, date, time);

System.out.println(dto);
ReservationDao.update(dto);

PrintWriter script = response.getWriter();
script.println("<script>");
script.println("alert('수정되었습니다.')");
script.println("location.href = 'reserv_list.jsp'");
script.println("</script>");
%>