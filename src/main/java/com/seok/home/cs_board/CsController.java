package com.seok.home.cs_board;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.seok.home.member.MemberDTO;
import com.seok.home.s_board.StudyBoardDTO;

@Controller
@RequestMapping(value="/csBoard/*")
public class CsController {
	
	@Autowired
	CsService csService;

	@GetMapping("add")
	public void setBoardAdd() {
		
	}
	
	@GetMapping("delete")
	public String setBoardDelete(CsBoardDTO csBoardDTO) throws Exception{
		int result = csService.setBoardDelete(csBoardDTO);
		
		return "redirect:/csBoard/mylist";
	}
	
	@PostMapping("update")
	public String setBoardUpdate(CsBoardDTO csBoardDTO) throws Exception{
		int result = csService.setBoardUpdate(csBoardDTO);
		
		return "redirect:/csBoard/mylist";
	}
	
	@PostMapping("add")
	public ModelAndView setBoardAdd(CsBoardDTO csBoardDTO) throws Exception {
		ModelAndView mv = new ModelAndView();
		int result = csService.setBoardAdd(csBoardDTO);
		if(csBoardDTO.getId().equals("none")) {
            
			mv.addObject("message", "작성이 완료 되었습니다.");
			mv.addObject("url", "/");
		}else {
			mv.addObject("message", "작성이 완료 되었습니다.");
			mv.addObject("url", "redirect:/csBoard/mylist");
			
		}
		mv.setViewName("common/result");
		
		return mv; //마이페이지의 내문의 페이지로
	}
	
	@GetMapping("mylist")
	public Model getMylist(CsBoardDTO csBoardDTO, HttpSession session, Model model) throws Exception{
		MemberDTO member = (MemberDTO)session.getAttribute("member");
		
		csBoardDTO.setId(member.getId());
		List<CsBoardDTO> boardList = csService.getMylist(csBoardDTO);
		
		model.addAttribute("myList", boardList);
		return model;
	}
	

}
