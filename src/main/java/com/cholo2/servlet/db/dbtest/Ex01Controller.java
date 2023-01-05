package com.cholo2.servlet.db.dbtest;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cholo2.servlet.com.MysqlService;

@WebServlet("/db/ex01")
public class Ex01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = new MysqlService();
		mysqlService.connect();
		String selectQuery = "SELECT * FROM `used_goods`;";
		ResultSet resultSet = mysqlService.select(selectQuery);
		
		//used_goods에 있는 모든 행 출력하기
		/*try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			//접속 주소, 아이디, 비밀번호
			String url = "jdbc:mysql://localhost:3306/test_1221";
			String userId = "root";
			String password = "root";
					
			//접속
			Connection connection = DriverManager.getConnection(url, userId, password);
			Statement statement = connection.createStatement();
			
			//쿼리 수행
			String selectQuery = "SELECT * FROM `used_goods`;";
			ResultSet resultSet = statement.executeQuery(selectQuery);
			
			out.println("<html><head><title>중고 물품</title></head><body>");
			while(resultSet.next()) {
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				
				out.println("<div>제목:" + title + "가격:" + price + "</div>");
			}
			out.println("</body></html>");
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}*/
	}
}