package com.term.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.term.myapp.board.BoardVO;


@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value="/board/list", method=RequestMethod.GET)
	public String boardlist(Model model) {
		model.addAttribute("list", boardService.getBoardList());
		return "list";
		
	}
	@RequestMapping(value = "/board/add", method = RequestMethod.GET) //url board/add  면 실행할 컨트롤러
	public String addPost(){ 

		
		return "addpostform"; 
	}
	//추가된 데이터 저장 
	@RequestMapping(value = "/board/addok", method = RequestMethod.GET) //url board/add  면 실행할 컨트롤러
	public String addPostOK(BoardVO vo) {
		int i = boardService.insertBoard(vo);
		if(i==0)
			System.out.println("데이터추가실패 ");
		else 
			System.out.println("데이터추가 성공  ");
		
		return "redirect:list";  
	}
	//수정 폼 
	@RequestMapping(value = "/board/edit/{id}", method = RequestMethod.GET) //url board/add  면 실행할 컨트롤러
	public String editPost(@PathVariable("id") int id, Model model){
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("boardVO",boardVO);

		return "editform"; 
	}
	//수정 데이터 처리 
	@RequestMapping(value = "/board/editok", method = RequestMethod.GET) 
	public String editPostOK(BoardVO vo) {
		int i = boardService.updateBoard(vo);
		if(i==0)
			System.out.println("데이터수정 실패 ");
		else 
			System.out.println("데이터수정 성공  ");
		
		return "redirect:list";  //view - list.jsp 로  돌아가 
	}
	//삭제 폼 
	@RequestMapping(value = "board/deletepost/{id}", method = RequestMethod.GET) 
	public String deletePost(@PathVariable("id") int id, Model model){
		int boardVO = boardService.deleteBoard(id); // BoardDao boardVO 에서 int boardVO 로 수정 
		//삭제함수가 실행이 되면 1 리턴 
		model.addAttribute("boardVO",boardVO); // 

		return "redirect:../list"; 
	}
}
