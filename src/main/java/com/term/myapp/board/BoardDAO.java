package com.term.myapp.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.ColumnMapRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository //붙여가지고 디비랑 연결안됐었음 
public class BoardDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	
	//쿼리문 삭제 
	
	//update()는 SQL 연산을 통해 데이터베이스를 갱신시켜줄 때(INSERT, DELETE, UPDATE) 사용하는 메소드이다.
	public int insertBoard(BoardVO vo) { // 입력받아오는 함수 
		int result = sqlSession.insert("Board.insertBoard",vo);
		return result;
	}
	public int deleteBoard(int seq) { //삭제하는 함수 
		int result = sqlSession.insert("Board.deleteBoard",seq);
		return result;
	}
	public int updateBoard(BoardVO vo) { //업데이트 시키는 함수
		int result = sqlSession.insert("Board.updateBoard",vo);
		return result;
	}
	public BoardVO getBoard(int seq) { //아이디 값 하나로 정보 한줄 다 가져오는 함수 
		BoardVO one = sqlSession.selectOne("Board.getBoard",seq);
		return one;
	} //queryForObject 쿼리 결과가 한행일때 쓰는 메소드 
	
	
	public List<BoardVO> getBoardList(){ //전체 리스트 값 다 가져오는 함수 
		List<BoardVO> list = sqlSession.selectList("Board.getBoardList");
		return list;

	}

}
