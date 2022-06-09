package com.myproject.myapp;

import java.sql.DriverManager;
import org.junit.Test;

import com.mysql.jdbc.Statement;

import java.sql.Connection;


public class MySQLConnectionTest {

	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://localhost:3306/website?useSSL=false";
	private static final String USER = "root";
	private static final String PW = "tkdlek12";
	//Root 비밀번호
	
	@Test
	public void testConnection() throws Exception{
		Class.forName(DRIVER);
		try(Connection con = DriverManager.getConnection(URL, USER, PW)){
			System.out.println(con);
			String sql = "INSERT INTO hello_board (b_title, b_detail, b_writer) values('ㄴdsdfㄴ','ㅁdsfㅁ','ㅇsdfㅇ')";
			java.sql.Statement stmt=con.createStatement();
			stmt.execute(sql);
			System.out.println("okok");
			if(stmt != null) stmt.close();
			if(con != null) con.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
