package com.mycompany.app.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {
	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping("/codeList")
	public String codeList(Code vo, Model model) {
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "admin/infra/code/codeList";
	}
	@RequestMapping("/codeForm")
	public String codeForm(Code vo, Model model) {
		Code code = service.selectOne(vo);
		model.addAttribute("item", code);
		return "admin/infra/code/codeForm";
	}
	
	
	
	
	
	//	search
	
	@RequestMapping("/codeUpdt")
	public String codeUpdt(Code dto) {
		service.update(dto);
		return "redirect:/codeList";
	}
	@RequestMapping("/codeDele")
	public String codeDele(Code dto) {
		service.delete(dto);
		return "redirect:/codeList";
	}
	@RequestMapping("/codeUele")
	public String codeUele(Code dto) {
		service.delete(dto);
		return "redirect:/codeList";
	}
	@RequestMapping("/codeInst")
	public String codeInst(Code dto) {
		service.insert(dto);
		return "redirect:/codeList";
	}
}
