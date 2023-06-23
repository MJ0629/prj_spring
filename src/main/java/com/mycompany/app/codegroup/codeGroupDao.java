package com.mycompany.app.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class codeGroupDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.codegroup.CodeGroupMapper";
	public List<codeGroup> selectList(){
		return sqlSession.selectList(namespace + ".selectList","");
	}
}
