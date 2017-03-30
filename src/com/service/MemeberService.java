package com.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;

import com.dao.MySqlSessionFactory;
import com.entity.MemberDTO;
import com.exception.LikeatException;

public class MemeberService {
	
	String namespace = "com.acorn.MemberMapper.";
	
	public void join(MemberDTO dto) throws LikeatException {

		SqlSession session = MySqlSessionFactory.openMySession();

		try{
			session.insert(namespace + "join", dto);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new LikeatException("회원가입실패!!!!!!!!!!!!!");
		} finally {
			session.close();
		}		
	}//join

	public MemberDTO login(HashMap<String, String> loginfo) throws LikeatException {
		
		SqlSession session = MySqlSessionFactory.openMySession();
		
		MemberDTO dto = null;
		
		try {
			dto = session.selectOne(namespace + "login", loginfo);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			throw new LikeatException("로그인실패!!!!!!!!!!!!!!!!");
		} finally {
			session.close();
		}
		
		return dto;
		
	}//login
	
	
	

}
