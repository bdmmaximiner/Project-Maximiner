package com.hr;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.maximiner.OracalDatabaseConnect;

public class EmployeeValidate 
{
	public static boolean checkUserInformation(String username, String password, String dept) {
		boolean st = false;
		try
		{

			Connection con = new OracalDatabaseConnect().Connect();
			PreparedStatement ps = con.prepareStatement("select * from login where upper(EMP_ID)=upper(?) and PASSWORD=? and upper(DEPARTMENT)=upper(?)");
			ps.setString(1, username);
			ps.setString(2, password);
			ps.setString(3, dept);
			ResultSet rs = ps.executeQuery();
			st = rs.next();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return st;
	}

	public static boolean Check(String username) {
		boolean flag = false;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
			PreparedStatement ps = con.prepareStatement("select * from maximiner_emp where Username=?");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				flag = true;
			}
			System.out.println("User Login Status : " + flag);
		} catch (Exception e) {
			System.out.println("Oop's error in Login Status" + e);
		}
		return flag;
	}

	public static boolean CheckRegEmail(String email) {
		boolean flag = false;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
			PreparedStatement ps = con.prepareStatement("select * from maximiner_emp where Email=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				flag = true;
			}
			System.out.println("User Login Status : " + flag);
		} catch (Exception e) {
			System.out.println("Oop's error in Login Status" + e);
		}
		return flag;
	}

	public static boolean CheckEmail(String usermail) {
		boolean flag = false;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
			PreparedStatement ps = con.prepareStatement("select * from maximiner_emp where Email=?");
			ps.setString(1, usermail);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				flag = true;
			}
			System.out.println("User Email Status : " + flag);
		} catch (Exception e) {
			System.out.println("Opp's Error is in UserDAO-CHK()....." + e);
		}
		return flag;
	}

	public static boolean CheckUsername(String username) {
		boolean flag = false;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
			PreparedStatement ps = con.prepareStatement("select * from maximiner_emp where Username=?");
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				flag = true;
			}
			System.out.println("UserName Status : " + flag);
		} catch (Exception e) {
			System.out.println("Opp's Error is in UserDAO-CHK()....." + e);
		}
		return flag;
	}
}