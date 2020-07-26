package com.zerostress.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.zerostress.command.UserInfoVO;
import com.zerostress.userinfo.service.UserInfoService;

@Controller
@RequestMapping("users")
public class UserModalController {

	
	@Autowired
	@Qualifier("userinfoService")
	private UserInfoService userinfoService;
	
	
	@RequestMapping("/user_modal")
	public String userModal() {
		
		return "users/user_modal";
		
	}
	
	@RequestMapping(value="/JoinForm",method=RequestMethod.POST)
	public String JoinUser(UserInfoVO vo, RedirectAttributes RA) {
		
		System.out.println(vo.toString());
		int result = userinfoService.getJoin(vo);
		System.out.println(result);
		if(result==1) {
			
			return "redirect:/user/userLogin";
		} else {
			
			return "redirect:/user/userJoin";
		}
		
	}
	
	@RequestMapping(value="/LoginForm", method=RequestMethod.POST)
	public String loginUser(UserInfoVO vo, HttpSession session,
							RedirectAttributes RA) {
		System.out.println(1);
		System.out.println(vo.toString());
		int result = userinfoService.getLogin(vo);
		System.out.println("result" + result);
		if(result==1) {
			session.setAttribute("id",vo.getUserId());
			return "redirect:/";
		} else {

			return "redirect:/user/userLogin";
		}
		
		
		
	}
	
	
}
