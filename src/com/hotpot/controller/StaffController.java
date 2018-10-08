package com.hotpot.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.lang.model.element.Element;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndViewDefiningException;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hotpot.model.Page;
import com.hotpot.model.Staff;
import com.hotpot.service.StaffService;

@Controller
@RequestMapping("/staff")
public class StaffController {

	@Autowired
	@Qualifier("staffService")
	private StaffService staffService;
	
	@RequestMapping("/staffList.do")
	public ModelAndView staffList(Model model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		int totalCount = staffService.allStaffCount();
		Page page = null;
		ModelAndView mv = new ModelAndView();
		List<Staff> list = new ArrayList<Staff>();
		if (pageNow != null) {
			//System.out.println(Integer.parseInt(pageNow));
			page = new Page(Integer.parseInt(pageNow), totalCount);
			list = this.staffService.getAllStaffInfo(page.getStartPos(),page.getPageSize());
		}
		else {
			page = new Page(1, totalCount);
			list = this.staffService.getAllStaffInfo(page.getStartPos(),page.getPageSize());
		}
		model.addAttribute("list",list);
		model.addAttribute("page",page);
		
		//ArrayList<Staff> staffList = (ArrayList<Staff>) staffService.getAllStaffInfo();
		//mv.addObject("staffList", staffList);
		mv.setViewName("StaffManage");
		return mv;
	}
	
	@RequestMapping("/staffListwith.do")
	public ModelAndView staffListwith(Model model,HttpServletRequest request){
		String pageNow = request.getParameter("pageNow");
		int totalCount = staffService.allStaffCount();
		Page page = null;
		ModelAndView mv = new ModelAndView();
		List<Staff> list = new ArrayList<Staff>();
		if (pageNow != null) {
			//System.out.println(Integer.parseInt(pageNow));
			page = new Page(Integer.parseInt(pageNow), totalCount);
			list = this.staffService.getAllStaffInfo(page.getStartPos(),page.getPageSize());
			//System.out.println(list.get(0).getIsProvided());
		}
		else {
			page = new Page(1, totalCount);
			list = this.staffService.getAllStaffInfo(page.getStartPos(),page.getPageSize());
			//System.out.println(list.get(0).getIsProvided());
		}
		model.addAttribute("list",list);
		model.addAttribute("page",page);
		
		//ArrayList<Staff> staffList = (ArrayList<Staff>) staffService.getAllStaffInfo();
		//mv.addObject("staffList", staffList);
		mv.setViewName("ProvidedSalary");
		return mv;
	}
	
	@RequestMapping("/addStaff.do")
	public ModelAndView addStaff(Staff staff){
		ModelAndView mv =new ModelAndView();
		if (staffService.insertStaffInfo(staff)) {
			mv.setViewName("redirect:staffList.do");
		}
		else {
			mv.setViewName("AddStaff");
		}
		
		return mv;
		
	}
	
	@RequestMapping("/getout.do")
	@ResponseBody
	public String getout(Integer id){
		if (staffService.getoutSalary(id)) {
			return "OK";
		}
		else {
			return "Fail";
		}
		
		
	}
	
	@RequestMapping("/staffInfo.do")
	public void staffInfo(Integer id, HttpServletResponse response) throws IOException{
		Staff staff = staffService.getStaffById(id);
		response.setCharacterEncoding("utf8");
		response.getWriter().print(JSON.toJSONString(staff));
		
	}
	
	@RequestMapping("/update.do")
	@ResponseBody
	public String update(Staff staff){
		if (staffService.updateStaffInfo(staff)) {
			return "OK";
		}
		else {
			return "Fail";
		}
	}
	
	@RequestMapping("/delete.do")
	@ResponseBody
	public String delete(Integer id){
		if (staffService.deleteStaffInfo(id)) {
			return "OK";
		}
		else {
			return "Fail";
		}
	}
}
