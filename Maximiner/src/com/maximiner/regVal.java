package com.maximiner;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/regVal")
public class regVal extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Connection con = null;
		Statement stmt = null;
		
		System.out.println(
				"INSERT INTO MSIGNUP (FIRST_NAME, LAST_NAME, CONTACT_NO, USER_NAME,DESIGNATION,GENDER,PASSWORD,CONFIRM_PASSWORD,BIRTH_DATE,JOIN_DATE,EMAIL,ADDRESS) VALUES ('"
						+ request.getParameter("first_name").toString() + "', '" + request.getParameter("last_name")
						+ ", '" + request.getParameter("contact_no") + "', '" + request.getParameter("user_name")
						+ "','" + request.getParameter("designation") + "','" + request.getParameter("gender") + "',"
						+ request.getParameter("user_password") + "','" + request.getParameter("confirm_password")
						+ "','" + request.getParameter("birth_date") + "','" + request.getParameter("joinig_date")
						+ "','" + request.getParameter("email") + "','" + request.getParameter("address") + "')");

		try {
			con = new OracalDatabaseConnect().Connect();
			stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			stmt.executeQuery("DECLARE \r\n" + "    NCOUNT NUMBER; \r\n" + "    V_SQL  LONG; \r\n"
					+ "    V_SQL1 LONG; \r\n" + "    TRIG   LONG; \r\n" + "BEGIN \r\n" + "    SELECT COUNT(*) \r\n"
					+ "    INTO   NCOUNT \r\n" + "    FROM   DBA_TABLES \r\n"
					+ "    WHERE  TABLE_NAME = 'MSIGNUP'; \r\n" + "\r\n" + "    IF ( NCOUNT <= 0 ) THEN \r\n"
					+ "      V_SQL := '  CREATE TABLE MSIGNUP(  SID NUMBER(15) NOT NULL , First_Name VARCHAR2(50) NOT NULL  ,Last_Name VARCHAR2(50) NOT NULL,  Contact_no NUMBER(15) NOT NULL  ,User_Name VARCHAR2(50) NOT NULL, Designation VARCHAR2(50) NOT NULL,Gender VARCHAR2(10) NOT NULL,Password VARCHAR2(50) NOT NULL,Confirm_Password VARCHAR2(50) NOT NULL,Birth_Date VARCHAR2(50) NOT NULL,Join_Date VARCHAR2(50) NOT NULL,  EMAIL VARCHAR2(50) NOT NULL  , Address VARCHAR2(500) NOT NULL  , CONSTRAINT MSIGNUP_PK PRIMARY KEY (SID)  ENABLE )'; \r\n"
					+ "\r\n" + "      V_SQL1 := \r\n"
					+ "      'CREATE SEQUENCE MSIGNUP_SEQ MINVALUE 1 NOMAXVALUE INCREMENT BY 1'; \r\n" + "\r\n"
					+ "      TRIG := 'CREATE TRIGGER MSIGNUP_TRIGGER BEFORE INSERT ON MSIGNUP REFERENCING NEW AS NEW OLD AS OLD FOR EACH ROW  BEGIN  SELECT MSIGNUP_SEQ.NEXTVAL INTO :NEW.SID FROM DUAL;  END;'; \r\n"
					+ "\r\n" + "      EXECUTE IMMEDIATE V_SQL; \r\n" + "\r\n" + "      EXECUTE IMMEDIATE V_SQL1; \r\n"
					+ "\r\n" + "      EXECUTE IMMEDIATE TRIG; \r\n" + "    END IF; \r\n" + "END; ");
			stmt.executeUpdate(
					"INSERT INTO MSIGNUP (FIRST_NAME, LAST_NAME, CONTACT_NO, USER_NAME,DESIGNATION,GENDER,PASSWORD,CONFIRM_PASSWORD,BIRTH_DATE,JOIN_DATE,EMAIL,ADDRESS) VALUES ('"
							+ request.getParameter("first_name").toString() + "', '" + request.getParameter("last_name")
							+ "', '" + request.getParameter("contact_no") + "', '" + request.getParameter("user_name")
							+ "','" + request.getParameter("designation") + "','" + request.getParameter("gender")
							+ "','" + request.getParameter("user_password") + "','"
							+ request.getParameter("confirm_password") + "','" + request.getParameter("birth_date")
							+ "','" + request.getParameter("joinig_date") + "','" + request.getParameter("email")
							+ "','" + request.getParameter("address") + "')");
			con.commit();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
