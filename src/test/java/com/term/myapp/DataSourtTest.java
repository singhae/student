package com.term.myapp;

import java.sql.Connection;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;


public class DataSourtTest {
	@Test
	public void testConnection() {
		ApplicationContext ctx =
				new FileSystemXmlApplicationContext(
						"file:src/main/webapp/WEB-INF/spring/root-context.xml");
		DataSource ds = (DataSource) ctx.getBean("dataSource");
		
		try {
			Connection con = ds.getConnection();
			System.out.println("연결성공 ");
			
		} catch(java.sql.SQLException e) {
			e.printStackTrace();
			System.out.println("연결 실패 ");
			
		}
	}
}

