package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping(value="/")
	public String home() {
		
		//여기에서 서버단에서 필요한 작업을 수행한다.
		
		
		//아래의 jsp 파일 호출
		return "home";
		
		//	 주소 예시	href="/resources/xdm/vw/css/commonXdm.css"
	}
	
	@RequestMapping(value="/home2")
	public String home2() {
		
		return "app/home/home2";
	}
	
	
	@RequestMapping(value="/home3")
	public String home3() {
		
		return "app/home/home3";
	}
	
	
	@RequestMapping(value="/home4")
	public String home4() {
		
		return "app/home/home4";
	}
	
	
	@RequestMapping(value="/home5")
	public String home5() {
		
		return "app/home/home5";
	}
	
	
	@RequestMapping(value="/home6")
	public String home6() {
		
		return "app/home/home6";
	}
	
	
	@RequestMapping(value="/home7")
	public String home7() {
		
		return "app/home/home7";
	}
	
	
	@RequestMapping(value="/home8")
	public String home8() {
		
		return "app/home/home8";
	}
	
	
	@RequestMapping(value="/home9")
	public String home9() {
		
		return "app/home/home9";
	}
	
	
	@RequestMapping(value="/home10")
	public String home10() {
		
		return "app/home/home10";
	}
	
	@RequestMapping(value ="/home11")
	public ModelAndView home11() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("home11");
		return mav;
	}
	@RequestMapping(value ="test")
	public ModelAndView test() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/app/home/test");
		return mav;
	}
	@RequestMapping(value="/loginForm")
	public String login() {
		
		return "loginForm";
	}
	@RequestMapping(value="/memberList")
	public String memberList() {
		
		return "memberList";
	}
	
}
