package org.covid19.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JU {

	static String url = "jdbc:mariadb://localhost:3306/2nd_project";
	static String user = "admin";
	static String password = "1234";
	static Connection conn = null;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			System.out.println("MariaDB 접속 성공!");
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("MariaDB 접속 실패! 1 (ClsNotFoundExcep)");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("MariaDB 접속 실패! 2 (SQLExcep)");
			e.printStackTrace(); }
		
		return conn;
	}
	
	public static void close(Connection conn) {
		try {
			if(conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(Statement stmt) {
		try {
			if(stmt != null) stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(ResultSet rs) {
		try {
			if(rs != null) rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public static void close(Connection conn, Statement stmt, ResultSet rs) {
		close(rs);
		close(stmt);
		close(conn);
	}
	
	public static void main(String[] args) {
		getConnection();
	}
}
