package com.myproject.myapp;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myproject.domain.Criteria;
import com.myproject.domain.PageMakerDTO;
import com.myproject.service.BoardService;
import com.myproject.DAO.BoardDAO;
import com.myproject.domain.BoardVO;

@Controller
@RequestMapping("/")
public class MainController {

	@RequestMapping("")
	public String index0() {
		return "index";
	}

	@RequestMapping("/index.do") 
	public String index1() {
		return "index";
	}	
}