package com.mycompany.app.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	@Autowired
	UserServiceImpl service;
	
	@RequestMapping("/userList")
	public String userList(User vo,Model model) {
		
		model.addAttribute("list",service.selectList(vo));
		return "/admin/infra/index/indexAdmView";
	}

}
