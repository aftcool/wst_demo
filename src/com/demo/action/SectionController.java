package com.demo.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.demo.po.Section;
import com.demo.service.SectionService;

@Controller
@RequestMapping("/section")
public class SectionController {
	
	@Autowired
	SectionService service;
	
	@RequestMapping("/getsectionbyorgid")
	@ResponseBody
	public List<Section> getsectionbyorgid(@RequestParam("orgid") int id){
		return service.getsectionbyorgid(id);
	}
	
	@RequestMapping("/getsectionbypage")
	public String getsectionbypage(@RequestParam("page") int p, HttpServletRequest request){
		List<Section> list = service.getsectionbypage(p);
		request.setAttribute("data", list);
		return "sectionlist";
	}

	@RequestMapping("/getsectionbtajax")
	@ResponseBody
	public Map<String,Object> getsectionbtajax(@RequestParam("page") int p){
		Map<String,Object> map = new HashMap<String, Object>();
		List<Section> list = service.getsectionbypage(p);
		System.out.println(list);
		map.put("m",list);
		return map;
	}
	
	@RequestMapping("/getsectionpagebyajax")
	@ResponseBody
	public Map<String,Object> getsectionpagebyajax(){
		Map<String,Object> map = new HashMap<String, Object>();
		int count = service.getsectionpage();
		map.put("totalpage", count);
		return map;
 	}
}
