package com.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.dao.MySqlSessionFactory;
import com.entity.PageDTO;
import com.entity.SreplyDTO;
import com.entity.StoreDTO;
import com.exception.LikeatException;

public class StoreService {
	
	String namespace = "com.acorn.StoreMapper.";
	

	public PageDTO selectPage(HashMap<String, String> mapperParam) throws LikeatException {

		SqlSession session = MySqlSessionFactory.openMySession();

		List<StoreDTO> list = null;
		
		PageDTO pageDTO = new PageDTO();
		
		int curPage = Integer.parseInt(mapperParam.get("curPage"));
		
		int skip = (curPage - 1) * pageDTO.getPerPage();
		
		try{
			
			list = session.selectList(namespace + "selectPage", mapperParam, new RowBounds(skip, pageDTO.getPerPage()));
			
			pageDTO.setList(list);
			pageDTO.setCurPage(curPage);
			pageDTO.setTotRecord(totRecord(mapperParam));
			
		} catch(Exception e) {	
			e.printStackTrace();
			throw new LikeatException("현재 페이지 목록 불러오기 실패!!!!!");
		} finally {
			session.close();
		}
		
		return pageDTO;
		
	}//selectAll
	
	
	public List<StoreDTO> selectTop(HashMap<String, String> mapperParam) throws LikeatException {
		
		SqlSession session = MySqlSessionFactory.openMySession();

		List<StoreDTO> list = null;
		
		try{
			
			list = session.selectList(namespace + "selectTop", mapperParam);
			
		} catch(Exception e) {	
			e.printStackTrace();
			throw new LikeatException("TOP 목록 불러오기 실패!!!!!");
		} finally {
			session.close();
		}
		return list;
	}//selectTop

	public List<StoreDTO> selectNew(HashMap<String, String> mapperParam) throws LikeatException {
		
		SqlSession session = MySqlSessionFactory.openMySession();
		
		List<StoreDTO> list = null;
		
		try{
			list = session.selectList(namespace + "selectNew", mapperParam);
		} catch(Exception e) {	
			e.printStackTrace();
			throw new LikeatException("NEW 목록 불러오기 실패!!!!!");
		} finally {
			session.close();
		}
		return list;
	}//selectTop


	public StoreDTO selectOne(String sid) {

	//List<StoreDTO> list = null;
		StoreDTO dto=null;
		SqlSession session = MySqlSessionFactory.openMySession();
		try {
			dto = session.selectOne(namespace + "selectOne",sid);
		} finally {
			session.close();
		}
		return dto;
	}// selectOne


	public List<StoreDTO> searchKeyword(String searchKeyword) throws LikeatException {
		
		SqlSession session = MySqlSessionFactory.openMySession();
		
		List<StoreDTO> list = null;
		
		try{
			list = session.selectList(namespace + "searchKeyword", searchKeyword);
		} catch (Exception e) {
			e.printStackTrace();
			throw new LikeatException("찾기 목록 불러오기 실패!!!!!");
		} finally {
			session.close();
		}
		
		return list;
	}

	

	public List<StoreDTO> searchCategory(String searchKeyword) throws LikeatException {
		SqlSession session = MySqlSessionFactory.openMySession();
		
		List<StoreDTO> list = null;
		
		try{
			list = session.selectList(namespace + "searchCategory", searchKeyword);
		} catch (Exception e) {
			e.printStackTrace();
			throw new LikeatException("찾기 목록 불러오기 실패!!!!!");
		} finally {
			session.close();
		}
		return list;
	}

	
	public int totRecord(HashMap<String, String> mapperParam) throws LikeatException {
		int cnt = 0;
		SqlSession session = MySqlSessionFactory.openMySession();
		try{
			cnt = session.selectOne(namespace + "totRecord", mapperParam);
		} catch (Exception e) {
			e.printStackTrace();
			throw new LikeatException("식당 토탈 레코드 갯수 가져오기 실패!!!!!!!");
		}finally {
			session.close();
		}
		return cnt;
	}//totRecord


	public int searchCnt(String searchKeyword) throws LikeatException {
		int cnt = 0;
		SqlSession session = MySqlSessionFactory.openMySession();
		try{
			cnt = session.selectOne(namespace + "searchCnt", searchKeyword);
		} catch (Exception e) {
			e.printStackTrace();
			throw new LikeatException("찾기목록 토탈 레코드 가져오기 실패!!!!!!!");
		}finally {
			session.close();
		}
		return cnt;
	}
	public List<StoreDTO> searchNeaSto(String addr2) {

		List<StoreDTO> list = null;
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

}
