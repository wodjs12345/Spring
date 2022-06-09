package com.myproject.myapp;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.myproject.DAO.BoardDAO;
import com.myproject.DAO.MemberDAO;
import com.myproject.domain.BoardVO;
import com.myproject.domain.Criteria;
import com.myproject.domain.PageMakerDTO;
import com.myproject.service.BoardService;


@Controller
@RequestMapping("/board/")
public class BoardController {


	@Inject
    private BoardService service;

	//게시판 리스트
	@RequestMapping("/boardlistAll.do")
    public String boardlist (Model model,Criteria cri) throws Exception {

		model.addAttribute("boardList", service.PaginglistBoard(cri));	//검색어에 따른 페이징된 게시판 리스트 전달
		int total=service.count(cri);									//검색어에 따른 총 게시글 갯수	
		PageMakerDTO pagemake = new PageMakerDTO(cri,total);			//페이지 리스트 생성
		model.addAttribute("pageMaker",pagemake);						//페이지 리스트 전달									
    	return "/board/boardlistAll";					
    }

    //게시글 생성
    @RequestMapping(value="/create.do",method=RequestMethod.GET)
    public String createGET(BoardVO board, Model model, HttpServletRequest req, RedirectAttributes rttr) throws Exception{

    	HttpSession session = req.getSession();

    	String s_user_id = (String)session.getAttribute("s_user_id");	//세션 값 가져오기

    	if(s_user_id!=null) {											//세션 값이 있는 경우
    		return "/board/create";											//게시글 작성 페이지로 이동
    	}
    	else {															//세션 아이디가 없는 경우
    		rttr.addFlashAttribute("msg","createfail");						//생성실패 메세지 전달
    		return "redirect:/board/boardlistAll.do";						//게시판 으로 이동
    	}

    }

	@RequestMapping(value="create_proc.do",method=RequestMethod.POST)
    public String create_proc(BoardVO board, RedirectAttributes rttr, HttpServletRequest req) throws Exception {

		service.create(board);							//게시글 db에 저장
        rttr.addFlashAttribute("msg","createok");		//생성완료 메세지 전달
    	return "redirect:/board/boardlistAll.do";
    }


    //게시글 상세보기
    @RequestMapping(value ="/detail.do", method = RequestMethod.GET)
    public void detail(@RequestParam("b_no") int b_no, Model model, HttpServletRequest req ) throws Exception{  	 
        service.reviewup(b_no);							//조회수 증가
    	model.addAttribute(service.read(b_no));  		// db에서 읽은 게시글 전달
    }

    //게시물 삭제
    @RequestMapping(value ="/delete.do", method = RequestMethod.GET)
    public String delete(@RequestParam("b_no") int b_no, Model model, RedirectAttributes rttr, HttpServletRequest req) throws Exception{  

    	HttpSession session = req.getSession();

    	String s_user_id = (String)session.getAttribute("s_user_id");	//세션 값 가져오기
    	String writterr = (String)service.read(b_no).getB_writer();		//글쓴이 가져오기

    	//삭제 권한 검증
    	if(s_user_id!=null) {								//로그인 하여 세션 값이 있는 경우

    		if(s_user_id.equals(writterr)) {					//세션 아이디 값과 글쓴이가 같은 경우
        		service.delete(b_no);							//게시글 삭제
                rttr.addFlashAttribute("msg","deleteok");
                return "redirect:/board/boardlistAll.do";		//게시판 리스트로 이동
        	}
        	else {												//세션 아이디 값이 글쓴이와 다른 경우 
        		rttr.addFlashAttribute("msg","deletefail");		//삭제 실패
        		return "redirect:/board/detail.do?b_no="+b_no;	//게시글로 이동
        	}
    	}
    	else {												//세션 값이 없는 경우
    		rttr.addFlashAttribute("msg","deletefail");
            return "redirect:/board/boardlistAll.do";			//게시판 으로 이동
    	}


    }

    //게시글 수정 페이지
    @RequestMapping(value ="/modify.do", method = RequestMethod.GET)
    public String modify(@RequestParam("b_no") int b_no, Model model, RedirectAttributes rttr,HttpSession session) throws Exception{  

    	String s_user_id = (String)session.getAttribute("s_user_id");		//세션 값 가져오기
    	String writterr = (String)service.read(b_no).getB_writer();			//글쓴이 가져오기

    	//수정 권한 검증
    	if(s_user_id!=null) {									//로그인 하여 세션값이 있는 경우
    		if(s_user_id.equals(writterr)) {						//세션 아이디 값이 글쓴이와 같은경우
        		model.addAttribute(service.read(b_no));				//db에서 해당 게시글 값 가져와서 전달
                return "/board/modify";								//직접적으로 수정하는 페이지로 이동					
        	}
        	else {													//세션 아이디 값이 글쓴이와 다른 경우
        		rttr.addFlashAttribute("msg","modifyfail");			//수정 실패 메세지 전달
        		return "redirect:/board/detail.do?b_no="+b_no;		//해당 게시글 상세보기 페이지로 이동
        	}  	
    	}
    	else {													//로그인 하지않아 세션 값이 없는 경우
    		rttr.addFlashAttribute("msg","modifyfail");				//수정 실패 메세지 전달
    		return "redirect:/board/detail.do?b_no="+b_no;			//해당 게시글 상세보기 페이지로 이동
    	}

    }

    //수정된 게시글 저장
    @RequestMapping(value ="/modify_proc.do", method = RequestMethod.POST)
    public String modify_proc(BoardVO board, @RequestParam("b_no") int b_no, Model model, RedirectAttributes rttr, HttpSession session) throws Exception{  

    	String s_user_id = (String)session.getAttribute("s_user_id");
    	String writterr = (String)service.read(b_no).getB_writer();

    	if(s_user_id!=null) {									//로그인하여 세션값이 있는 경우
    		if(s_user_id.equals(writterr)) {						//세션 값이 글쓴이와 같은 경우
        		service.update(board);								//변경된 내용 db에 update
        		rttr.addFlashAttribute("msg","modifyok");			//수정 성공 메세지 전달
        		return "redirect:/board/detail.do?b_no="+b_no;		//수정된 게시글로 이동
        	}
    		else {													//세션 값이 글쓴이와 다른 경우
        		rttr.addFlashAttribute("msg","modifyfail");			//수정 실패 메세지 전달
        		return "redirect:/board/detail.do?b_no="+b_no;			//해당 게시글로 이동
        	}	
    	}
    	else {													//로그인 하지 않은 경우
    		rttr.addFlashAttribute("msg","modifyfail");				//수정 실패 메세지 전달
    		return "redirect:/board/detail.do?b_no="+b_no;				//해당 게시글로 이동
    	}
    }


}