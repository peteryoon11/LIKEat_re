package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dao.MySqlSessionFactory;
import com.entity.StoreDTO;

public class StoreService {
	
	String namespace = "com.acorn.StoreMapper.";
	
	public List<StoreDTO> selectAll() {
		
		List<StoreDTO> list = null;
		SqlSession session = MySqlSessionFactory.openMySession();
		try{
			list = session.selectList(namespace + "selectAll");
		} finally {
			session.close();
		}
		return list;
	}//selectAll
	
	
	

}
