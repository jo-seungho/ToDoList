package com.kh.ToDoList.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.ToDoList.board.model.service.BoardService;
import com.kh.ToDoList.board.model.vo.PageInfo;
import com.kh.ToDoList.board.model.vo.todolist;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	// ***** TODOLIST 영역 *****
	
	//일정 조회
	@ResponseBody
	@RequestMapping(value="selectDoList")
	public String selectDoList(String date) {
		
		ArrayList<todolist> list = boardService.selectDoList(date);
		
		return new Gson().toJson(list);
		
	}
	
	//일정추가
	@ResponseBody
	@RequestMapping(value="insertToDoList")
	public int insertToDoList(String task, String date) {

		int result = boardService.insertToDoList(task, date);
		
		if(result>0) {
			return 1;
		} else {
			return 0;
		}
	}
	
	// 하루일정삭제
	@ResponseBody
	@RequestMapping(value="deleteListDay")
	public int deleteListDay(String date) {
		
		int result = boardService.deleteListDay(date);
		
		return result;
	}

	// 한줄만 삭제
	@ResponseBody
	@RequestMapping(value="deleteOneList")
	public int deleteOneList(int hiddenNo) {
		
		int result = boardService.deleteOneList(hiddenNo);
		
		return result;
	}
	
	// 모든날의 일정삭제
	@ResponseBody
	@RequestMapping(value="deleteAllDayList")
	public int deleteAllDayList() {
		
		int result = boardService.deleteAllDayList();
		return result;
	}
	
	
	// ***** BOARD 영역 *****
	
	@RequestMapping("list.bo")
	public ModelAndView selectListView(
			@RequestParam(value="cPage", defaultValue="1") int currentPage,
			ModelAndView mv) {
		
		int listCount = boardService.selectListView();
		
		int pageLimit = 10;
		int boardLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, pageLimit, boardLimit, currentPage);
		
				return mv;
		
	}
	
	
}
