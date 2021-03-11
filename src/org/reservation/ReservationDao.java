package org.reservation;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.reservation.util.*;


public class ReservationDao {

	final String SELECT_ALL = "SELECT * FROM RESERV";
	final String SELECT_ONE = "SELECT * FROM RESERV WHERE NO=?";
	final String UPDATE = "UPDATE RESERV SET NAME=?, DATE=?, TIME=? WHERE NO=?";
	final String DELETE = "DELETE FROM RESERV WHERE no=?";
	final String INSERT = "INSERT INTO RESERV(name, jumin, symptoms, date, time) VALUES(?,?,?,?,?)";
	final String INSERT1 = "INSERT INTO RESERV(name, jumin, symptoms) VALUES(?,?,?)";
	final String INSERT2 = "INSERT INTO RESERV(date, time) VALUES(?,?)";

	private Connection conn = null;
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public ArrayList<ReservationDto> selectAll() {
		ArrayList<ReservationDto> list = new ArrayList<ReservationDto>();
		conn = JdbcUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(SELECT_ALL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				int no = rs.getInt(1);
				String name = rs.getString(2);
				String jumin = rs.getString(3);
				String symptoms = rs.getString(4);
				String date = rs.getString(5);
				String time = rs.getString(6);
				list.add(new ReservationDto(no, name, jumin, symptoms, date, time));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}

		return list;
	}

	public ReservationDto selectOne(ReservationDto dto) {
		ReservationDto saram = null;
		conn = JdbcUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(SELECT_ONE);
			pstmt.setInt(1, dto.getNo());
			rs = pstmt.executeQuery();
			if (rs.next()) {

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
		return saram;
	}

	public void insert(ReservationDto dto) {
		conn = JdbcUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(INSERT);
			// pstmt.setInt(1, dto.getNo());
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getJumin());
			pstmt.setString(3, dto.getSymptoms());
			pstmt.setString(4, dto.getDate());
			pstmt.setString(5, dto.getTime());

			int cnt = pstmt.executeUpdate();
			if (cnt > 0) {
				conn.commit();
				System.out.println("저장 완료");
			} else {
				System.out.println("저장 실패!");
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
	}

	public void update(ReservationDto dto) {
		conn = JdbcUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(UPDATE);
			pstmt.setString(1, dto.getName());

			pstmt.setInt(3, dto.getNo());
			int cnt = pstmt.executeUpdate();
			if (cnt > 0) {
				conn.commit();
			} else {
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
	}

	public void delete(ReservationDto dto) {
		conn = JdbcUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(DELETE);
			pstmt.setInt(1, dto.getNo());
			int cnt = pstmt.executeUpdate();
			if (cnt > 0) {
				conn.commit();
			} else {
				conn.rollback();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}
	}
}
