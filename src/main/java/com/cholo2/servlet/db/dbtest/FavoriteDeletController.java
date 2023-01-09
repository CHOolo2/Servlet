package com.cholo2.servlet.db.dbtest;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cholo2.servlet.com.MysqlService;

@WebServlet("/db/favorite/delete")
public class FavoriteDeletController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		//id를 전송받고 해당 행을 삭제한다
		int id = Integer.parseInt(request.getParameter("id"));
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `favorite` WHERE `id` = "+ id + ";";
		
		int count = mysqlService.update(query);
		mysqlService.disconnect();
		response.sendRedirect("/db/favorite.jsp");
	}
}