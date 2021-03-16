package org.covid19.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

public class CovidDao {
	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public JSONArray search(String placename, String phone) {
		conn = JU.getConnection();
		JSONArray voList = new JSONArray();
		String sql = "SELECT SIDO, SIGUNGU, NAME, JUSO, WEEKDAY, SATURDAY, NUMBER FROM COVIDDB where name = '" + placename + "' or number = '" + phone + "'";
		System.out.println(placename);
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				JSONObject vo = new JSONObject();
				vo.put("sido", rs.getString("sido"));
				vo.put("sigungu", rs.getString("sigungu"));
				vo.put("name", rs.getString("name"));
				vo.put("juso", rs.getString("juso"));	
				vo.put("weekday", rs.getString("weekday"));
				vo.put("saturday", rs.getString("saturday"));
				vo.put("number", rs.getString("number"));
				voList.put(vo);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		}finally {
			JU.close(rs);
			JU.close(pstmt);
			JU.close(conn);
		}
		return voList;
	}
}
