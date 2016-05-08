package com.tools;

import java.sql.*;

public class JDBCConnection {
	private final static String url = "jdbc:mysql://localhost:3306/db_tree";
	private String user="root";
	private String password="root";
	private final static String dbDriver = "com.mysql.jdbc.Driver";
	private Connection con = null;
	
	static {
		try {
			Class.forName(dbDriver).newInstance();
		} catch (Exception e) {
			System.out.println();
		}
	}
	public boolean creatConnection() {
		try {
			con = DriverManager.getConnection(url, user, password);
			con.setAutoCommit(true);

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			System.out.println("creatConnectionError!");
		}
		return true;
	}


	public boolean executeUpdate(String sql) {
		if (con == null) {
			creatConnection();
		}
		try {
			Statement stmt = con.createStatement();
			int iCount = stmt.executeUpdate(sql);
			return true;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return false;
		}
	}
	
	public ResultSet executeQuery(String sql) {
		ResultSet rs;
		try {
			if (con == null) {
				creatConnection();
			}
			Statement stmt = con.createStatement();
			try {
				rs = stmt.executeQuery(sql);
			} catch (SQLException e) {
			
				return null;
			}
		} catch (SQLException e) {
		
			System.out.println("executeQueryError!");
			return null;
		}
		return rs;
	}

}
