package com.maximiner;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OracalDatabaseConnect {

	public Connection Connect() throws Exception {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		return DriverManager.getConnection(
				"jdbc:oracle:thin:@oracle.ccr68wkfvwyr.ap-south-1.rds.amazonaws.com:1521:ORCL", "maximiner",
				"Maximiner_2018");
	}

	public static int rowCount(ResultSet rs) throws SQLException {
		rs.last();
		return rs.getRow();
	}

}
