package org.covid19.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class CovidDao {
	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	final String SEARCH = "SELECT SIDO, SIGUNGU, NAME, JUSO, WEEKDAY, SATURDAY, NUMBER FROM COVIDDB";
	
	public void search() {
		
	}
}
