<%@page import="org.reservation.ReservationDao"%>
<%@page import="org.reservation.ReservationDto"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%



String name = request.getParameter("name");
String jumin = request.getParameter("jumin");
String symptoms = request.getParameter("symptoms");
String date = request.getParameter("date");
String time = request.getParameter("time");


ReservationDto dto = new ReservationDto();
ReservationDao dao = new ReservationDao();
dto = new ReservationDto(name, jumin, symptoms, date, time);

dao.insert(dto);




PrintWriter script = response.getWriter();
script.println("<script>");
script.println("alert('예약되었습니다.')");
script.println("location.href = 'index.jsp'");
script.println("</script>");
%>