package com.mycompany.app.codegroup;

import java.util.List;

public interface CodeGroupService {
	public List<CodeGroup> selectList(CodeGroup vo);
	public CodeGroup selectOne(CodeGroup vo);
}
