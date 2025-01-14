package com.kh.ToDoList.board.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ToDoList.board.model.dao.BoardDao;
import com.kh.ToDoList.board.model.vo.todolist;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDao boardDao;

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<todolist> selectDoList(String date) {
		return boardDao.selectDoList(sqlSession, date);
	}
	
	@Override
	public int insertToDoList(String task, String date) {
		return boardDao.insertToDoList(sqlSession, task, date);
	}

	@Override
	public int deleteListDay(String date) {
		return boardDao.deleteListDay(sqlSession,date);
	}

	@Override
	public int deleteOneList(int hiddenNo) {
		return boardDao.deleteOneList(sqlSession, hiddenNo);
	}

	@Override
	public int deleteAllDayList() {
		return boardDao.deleteAllDayList(sqlSession);
	}




}
