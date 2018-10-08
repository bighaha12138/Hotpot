package com.hotpot.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hotpot.model.Page;
import com.hotpot.model.Table;
import com.hotpot.service.TableService;

@Controller
@RequestMapping("/table")
public class TableController {

	@Autowired
	@Qualifier("tableService")
	private TableService tableService;
	
	
	@RequestMapping("/tableList.do")
	public ModelAndView tableList(HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		int totalCount = tableService.allTableCount();
		ModelAndView mv = new ModelAndView();
		List<Table> list = new ArrayList<>();
		Page page = null;
		if (pageNow !=null) {
			page = new Page(Integer.parseInt(pageNow), totalCount);
			list = this.tableService.getAllTables(page.getStartPos(),page.getPageSize());
		}
		else {
			page = new Page(1, totalCount);
			list = this.tableService.getAllTables(page.getStartPos(),page.getPageSize());
		}
		mv.addObject("list", list);
		mv.addObject("page", page);
		mv.setViewName("FrontService");
		return mv;
	}
	
	@RequestMapping("/changeStatusToUsing.do")
	@ResponseBody
	public String changeStatusToUsing(Integer id){
		if (tableService.changeStatusToUsing(id)) {
			return "OK";
		}else {
			return "fail";
		}
		
	}
	
}
