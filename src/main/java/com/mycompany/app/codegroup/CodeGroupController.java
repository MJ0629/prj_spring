package com.mycompany.app.codegroup;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {
	@Autowired
	CodeGroupServiceImpl service;
	
	
	@RequestMapping("/")
	public String main() {
		return "user/infra/biography/biographyUsrView";
	}
	
	@RequestMapping("/loginAdmForm")
	public String loginAdm() {
		return "admin/infra/member/loginAdmForm";
	}
	
	@RequestMapping("/indexAdmView")
	public String indexAdmView(CodeGroup vo, Model model) {
		model.addAttribute("list",service.selectList(vo));
		
		return "admin/infra/index/indexAdmView";
	}	
	
	@RequestMapping("/codeGroupList")
	public String codeGroupList(CodeGroup vo, Model model) {
		//		List<CodeGroup> list = service.selectList();
		//		model.addAttribute("list",list);
				
		
		//		왼쪽의 list는 jsp에서 사용할 변수명
		model.addAttribute("list",service.selectList(vo));
		
		return "admin/infra/codegroup/codeGroupList";
	}
	
	@RequestMapping("/codeGroupForm")
	public String codeGroupForm(CodeGroup vo, Model model) {
		
		/*
		 * CodeGroup codeGroup = service.selectOne(vo);
		 * model.addAttribute("item",codeGroup);
		 */
		return "admin/infra/codegroup/codeGroupForm";
	}

}
