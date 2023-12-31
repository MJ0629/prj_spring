package com.mycompany.app.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {
	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList(Code vo) {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public Code selectOne(Code vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(Code dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(Code dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int uelete(Code dto) {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}

	@Override
	public int insert(Code dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

}
