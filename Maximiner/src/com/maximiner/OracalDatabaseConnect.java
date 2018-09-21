package com.maximiner;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OracalDatabaseConnect {

	public Connection Connect() throws Exception 
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		return DriverManager.getConnection("jdbc:oracle:thin:@myoracle.ckhwrazsypjv.ap-south-1.rds.amazonaws.com:1521:ORCL","Newdb","Maximiner_2017");
	}

	public static int rowCount(ResultSet rs) throws SQLException 
	{
		rs.last();
		return rs.getRow();
	}

}
