package com.mycompany.app.codegroup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping("/codeGroupList")
	public String codeGroupList(CodeGroupVo vo, Model model) {
		
		
		System.out.println(vo.getShkeyword());
//		List<CodeGroup> list = service.selectList();
//		model.addAttribute("list",list);
		
//		왼쪽의 list는 jsp에서 사용할 변수명
		model.addAttribute("list",service.selectList(vo));
		
		return "codeGroupList";
	}
	
	@RequestMapping("/codeGroupForm")
	public String codeGroupForm(CodeGroupVo vo, Model model) {
		
		CodeGroup codeGroup = service.selectOne(vo);
		model.addAttribute("item",codeGroup);
		return "codeGroupForm";
	}

}
