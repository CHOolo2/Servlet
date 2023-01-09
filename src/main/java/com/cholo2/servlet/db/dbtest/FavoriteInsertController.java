package com.cholo2.servlet.db.dbtest;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cholo2.servlet.com.MysqlService;

@WebServlet("/db/favorit/insert")
public class FavoriteInsertController extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		//이름과 주소를 전달받고 insert한다
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlservice = MysqlService.getInstance();
		mysqlService.connect();
		
		String query =
				
		int count = mysqlservice.update(query);
		
		
	}

}
