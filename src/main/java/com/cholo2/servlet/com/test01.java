package com.cholo2.servlet.com;

import java.sql.ResultSet;

public class test01 {
	MysqlService mysqlService = new MysqlService();
	mysqlService.connect();
	String selectQuery = "SELECT * FROM `real_estate`;";
	ResultSet resultSet = mysqlService.select(selectQuery);
}
