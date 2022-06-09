package com.myproject.myapp;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myproject.DAO.MemberDAO;
import com.myproject.domain.MemberVO;
import com.myproject.service.BoardService;
import com.myproject.service.MemberService;


@Controller
@RequestMapping("/login/")
public class LoginController {

	@Inject
	private MemberService service;


	//로그인
	@RequestMapping("/login.do")
	public String login() throws Exception {
		return "/login/login";
	}


	//로그인 인증
	@RequestMapping(value = "login_proc.do", method = RequestMethod.POST)
	public String login_proc(MemberVO login, RedirectAttributes rttr, HttpServletRequest req) throws Exception {

		HttpSession session = req.getSession();

		if (service.selectloginMember(login) == null) {		 // 존재하지 않는 아이디,비밀번호 일 때 (로그인 실패)
			rttr.addFlashAttribute("msg", "loginfail");

			return "redirect:/login/login.do";				//다시 로그인 페이지로

		} else { 											// 존재하는 아이디,비밀번호 일때(로그인 성공)
			//session timeout 10분,user_id,user_name 으로 세션 설정
			session.setMaxInactiveInterval(600);
			session.setAttribute("s_user_id", login.getUser_id());
			session.setAttribute("s_user_name", service.selectMember(login.getUser_id()).getUser_name());

			return "redirect:/index.do";				//메인 홈페이지로
		}
	}


	//로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest req) throws Exception {

		HttpSession session = req.getSession();

		if((String)session.getAttribute("s_user_id")!=null) 	//세션 값이 존재하면		
			session.invalidate();									//세션 파기

		return "redirect:/index.do";					//로그아웃 후 메인 홈페이지로
	}


	//회원가입
	@RequestMapping("join")
	public String join() throws Exception {
		return "/login/join";
	}


	//회원가입 검증
	@RequestMapping(value = "join_proc.do", method = RequestMethod.POST)
	public String join_proc(MemberVO join, RedirectAttributes rttr) throws Exception {

		if (service.selectMember(join.getUser_id()) != null) { // 존재하는 아이디면 회원가입 실패

			rttr.addFlashAttribute("msg", "join_idnotnull");
			return "redirect:/login/join.do";					//회원가입 실패 후 회원가입 페이지로

		} else {											 // 존재하는 아이디가 아니면 회원가입 성공
			service.insertMember(join);

			rttr.addFlashAttribute("msg", "joinok");
			return "redirect:/login/login.do";					//회원가입 성공 후 로그인 페이지로
		}
	}


}