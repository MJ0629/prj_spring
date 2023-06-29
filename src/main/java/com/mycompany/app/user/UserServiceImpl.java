package com.mycompany.app.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserDao dao;

	@Override
	public List<User> selectList(User vo) {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}
	
}
