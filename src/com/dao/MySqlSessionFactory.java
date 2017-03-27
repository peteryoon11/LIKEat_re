package com.dao;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// Mybatis 에서 사용하는 SqlSession리턴
public class MySqlSessionFactory {

	// static블럭안에 있던 SqlSessionFactory sqlSessionFactory를, 밖으로 꺼내어 선언
	private static SqlSessionFactory sqlSessionFactory;

	static {

		String resource = "com/config/Configuration.xml";
		InputStream inputStream = null;
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			e.printStackTrace();
		}
		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	}// static

	
	// SqlSession을 얻을 (리턴시켜주는) 메서드  (객체생성을 따로 하지 않고, SqlSession를 얻기위함)
	
	
	public static SqlSession openMySession() {
		return sqlSessionFactory.openSession();
	}//openMySession() 
}
