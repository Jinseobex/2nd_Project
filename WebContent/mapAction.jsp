<%@page import="org.json.JSONArray"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.covid19.db.CovidVo"%>
<%@page import="org.covid19.db.CovidDao"%>

<%
String placename = (String)request.getParameter("name");
String phone = (String)request.getParameter("number");

CovidDao dao = new CovidDao();
JSONArray jList = dao.search(placename, phone);

System.out.println(jList.toString());
%>

<%= jList %>