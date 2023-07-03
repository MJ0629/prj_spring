package com.mycompany.app.codegroup;

import java.util.List;

public interface CodeGroupService {
	public List<CodeGroup> selectList(CodeGroup vo);
	public CodeGroup selectOne(CodeGroup vo);
	
	public int update(CodeGroup dto);
	public int delete(CodeGroup dto);
	public int uelete(CodeGroup dto);
	public int insert(CodeGroup vo);
}
