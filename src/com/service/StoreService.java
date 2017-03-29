package com.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.dao.MySqlSessionFactory;
import com.entity.PageDTO;
import com.entity.StoreDTO;
import com.exception.LikeatException;

public class StoreService {
	
	String namespace = "com.acorn.StoreMapper.";
	

	public PageDTO selectPage(int curPage) throws LikeatException {

		SqlSession session = MySqlSessionFactory.openMySession();

		List<StoreDTO> list = null;
		
		PageDTO pageDTO = new PageDTO();
		
		int skip = (curPage - 1) * pageDTO.getPerPage();
		
		try{
			
			list = session.selectList(namespace + "selectPage", null, new RowBounds(skip, pageDTO.getPerPage()));
			
			pageDTO.setList(list);
			pageDTO.setCurPage(curPage);
			pageDTO.setTotRecord(totRecord());
		} catch(Exception e) {	
			e.printStackTrace();
			throw new LikeatException("현재 페이지 목록 불러오기 실패!!!!!");
		} finally {
			session.close();
		}
		
		return pageDTO;
		
	}//selectAll
	
	
	public List<StoreDTO> selectTop() throws LikeatException {
		
		SqlSession session = MySqlSessionFactory.openMySession();

		List<StoreDTO> list = null;
		
		try{
			
			list = session.selectList(namespace + "selectTop");
			
		} catch(Exception e) {	
			e.printStackTrace();
			throw new LikeatException("TOP 목록 불러오기 실패!!!!!");
		} finally {
			session.close();
		}
		return list;
	}//selectTop

	public List<StoreDTO> selectNew() throws LikeatException {
		
		SqlSession session = MySqlSessionFactory.openMySession();
		
		List<StoreDTO> list = null;
		
		try{
			
			list = session.selectList(namespace + "selectNew");
			
		} catch(Exception e) {	
			e.printStackTrace();
			throw new LikeatException("NEW 목록 불러오기 실패!!!!!");
		} finally {
			session.close();
		}
		return list;
	}//selectTop

	
	
	public int totRecord() throws LikeatException {
		int cnt = 0;
		SqlSession session = MySqlSessionFactory.openMySession();
		try{
			cnt = session.selectOne(namespace + "totRecord");
		} catch (Exception e) {
			e.printStackTrace();
			throw new LikeatException("식당 토탈 레코드 가져오기 실패!!!!!!!");
		}finally {
			session.close();
		}
		return cnt;
	}//totRecord









}
