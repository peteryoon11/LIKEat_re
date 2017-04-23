package com.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dao.MySqlSessionFactory;
import com.entity.SreplyDTO;
import com.entity.StoreDTO;

public class SreplyService {

	String namespace = "com.acorn.SreplyMapper.";

	public List<SreplyDTO> selectSID(String sid) {

		List<SreplyDTO> list = null;
		SqlSession session = MySqlSessionFactory.openMySession();
		try 
		{
			list = session.selectList(namespace + "selectSID",sid);
		} 
		finally 
		{
			session.close();
		}
		return list;
	}// selectAll
	
//	countReview
	
	public int countReview(String sid) {

		List<SreplyDTO> list = null;
		int rcount=0;
		SqlSession session = MySqlSessionFactory.openMySession();
		try 
		{
			rcount = session.selectOne(namespace + "countReview",sid);
		} 
		finally 
		{
			session.close();
		}
		return rcount;
	}
	public List<SreplyDTO> searchNeaSto(String addr2) {

		List<SreplyDTO> list = null;
		int rcount=0;
		SqlSession session = MySqlSessionFactory.openMySession();
		try 
		{
			list = session.selectList(namespace + "searchNeaSto",addr2);
		} 
		finally 
		{
			session.close();
		}
		return list;
	}
	public void insertReply(SreplyDTO dto) {

		List<SreplyDTO> list = null;
		int rcount=0;
		SqlSession session = MySqlSessionFactory.openMySession();
		try 
		{
			session.insert(namespace + "insertReply",dto);
		session.commit();
		} 
		finally 
		{
			session.close();
		}
		
	}
	
}
