package com.mycompany.app.user;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace ="com.mycompany.app.user.UserMapper";
	
	public List<User> selectList(User vo) {
		
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
}
