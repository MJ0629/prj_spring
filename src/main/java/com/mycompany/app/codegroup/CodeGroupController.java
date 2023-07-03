package com.mycompany.app.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	public String indexAdmView(@ModelAttribute("vo") CodeGroup vo, Model model) {
//		vo.setShKeyword(vo.getShKeyword() == null ? "회원": vo.getShKeyword()); 초기 검색 데이터 생성
		model.addAttribute("list",service.selectList(vo));
		/* model.addAttribute("vo", vo); @ModelAttribute("vo")와 같음*/
		return "admin/infra/index/indexAdmView";
	}	
	
	@RequestMapping("/codeGroupList")
	public String codeGroupList(CodeGroup vo, Model model) {
		//		List<CodeGroup> list = service.selectList();
		//		model.addAttribute("list",list);
				
		
		//		왼쪽의 list는 jsp에서 사용할 변수명
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "admin/infra/codegroup/codeGroupList";
	}
	
	@RequestMapping("/codeGroupForm")
	public String codeGroupForm(CodeGroup vo, Model model) {
		CodeGroup codeGroup = service.selectOne(vo);
		model.addAttribute("item", codeGroup);
		/*
		 * CodeGroup codeGroup = service.selectOne(vo);
		 * model.addAttribute("item",codeGroup);
		 */
		return "admin/infra/codegroup/codeGroupForm";
	}
	@RequestMapping("/codeGroupAdmForm")
	public String codeGroupAdmForm(CodeGroup vo, Model model) {
		CodeGroup codeGroup = service.selectOne(vo);
		model.addAttribute("item", codeGroup);
		/*
		 * CodeGroup codeGroup = service.selectOne(vo);
		 * model.addAttribute("item",codeGroup);
		 */
		return "admin/infra/codegroup/codeGroupAdmForm";
	}
	
	
//	search
	
	@RequestMapping("/codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto) {
		service.update(dto);
		return "redirect:/codeGroupList";
	}
	@RequestMapping("/codeGroupDele")
	public String codeGroupDele(CodeGroup dto) {
		service.delete(dto);
		return "redirect:/codeGroupList";
	}
	@RequestMapping("/codeGroupUele")
	public String codeGroupUele(CodeGroup dto) {
		service.delete(dto);
		return "redirect:/codeGroupList";
	}
	@RequestMapping("/codeGroupInst")
	public String codeGroupInst(CodeGroup vo) {
		service.insert(vo);
		return "redirect:/codeGroupList";
	}

}
