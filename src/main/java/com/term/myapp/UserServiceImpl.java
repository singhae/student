package com.term.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.term.myapp.board.UserDAO;
import com.term.myapp.board.UserVO;

@Service
public class UserServiceImpl {
	@Autowired
	UserDAO userDAO;
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}
	
}
