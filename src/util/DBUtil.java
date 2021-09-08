package util;

/*
 *  connection은 client가 정해진 개수만큼 요청할 경우 반환
 *  Datasource는 하나의 객체만 존재하면서 요청이 유입될경우 connction객체 반환
 * 
 */

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.sql.DataSource;

public class DBUtil {

	private static EntityManagerFactory emf;	
	
	static {
		emf = Persistence.createEntityManagerFactory("step12_miniproject0906");
	}
	
	public static EntityManager getEntityManager() throws SQLException {
		return emf.createEntityManager();
	}
	
	public static void close() {
		emf.close();
		emf = null;
	}
}