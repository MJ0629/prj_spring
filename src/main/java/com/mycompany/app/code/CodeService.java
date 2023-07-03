package com.mycompany.app.code;

import java.util.List;

import com.mycompany.app.codegroup.CodeGroup;

public interface CodeService {
	public List<Code> selectList(Code vo);
	public Code selectOne(Code vo);
	
	public int update(Code dto);
	public int delete(Code dto);
	public int uelete(Code dto);
	public int insert(Code dto);
}
