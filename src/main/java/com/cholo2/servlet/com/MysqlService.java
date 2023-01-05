package com.cholo2.servlet.com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	//접속주소, 아이디, 비밀번호
	private final String url = "jdbc:mysql://localhost:3306/test_1221";
	private final String userId = "root";
	private final String password = "root";

	private Connection connection;
	private Statement statement;
	
	//접속기능
	public void connect() {
		//접속
		try {
			connection = DriverManager.getConnection(url, userId, password);
			statement = connection.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//쿼리 수행 기능 select
	public ResultSet select(String query) {
		try {
			return statement.executeQuery(query);
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
	public int update(String query) {
		try {
			return statement.executeUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		}
	}
	
	//접속을 끊는 메소드
	public void disconnect() {
		try {
			connection.close();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}