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
import org.springframework.web.portlet.bind.annotation.ResourceMapping;

import com.demo.po.Organization;
import com.demo.po.Stuff;
import com.demo.service.StuffService;

@Controller
public class StuffController {

	@Autowired
	StuffService service;
	@RequestMapping("/addone")
	public String addone(Stuff s,HttpServletRequest request){
		service.addone(s);
		List< Map<String,Object> > list = service.getStuffByPage(service.getSize());
		request.setAttribute("data", list);
		return "stufflist";
	}
	@RequestMapping("/edit")
	public String edit(Stuff s){
		System.out.println(s);
		service.update(s);
		
		return "redirect:getStuffByPage?page=1";
	}
	@RequestMapping("/getStuffByPage")
	public String getStuffByPage(@RequestParam("page") int p,HttpServletRequest request){
		List< Map<String,Object> > list = service.getStuffByPage(p);
		request.setAttribute("data", list);
		return "stufflist";
	}
	@RequestMapping("/getStuffByid")
	public String getStuffByid(@RequestParam("id") int id, HttpServletRequest req){
		Stuff s = service.getStuffByid(id);
		req.setAttribute("data",s );
		return "member-edit";
	}
	@RequestMapping("/ShowStuffByid")
	public String ShowStuffByid(@RequestParam("id") int id, HttpServletRequest req){
		Stuff s = service.getStuffByid(id);
		req.setAttribute("data",s );
		return "member-view";
	}
	@RequestMapping("/getStuffbyajax")
	@ResponseBody
	public Map<String,Object> getStuffbyajax(@RequestParam("page") int p){
		Map<String,Object> map = new HashMap<String, Object>();
		List< Map<String,Object> > list = service.getStuffByPage(p);
		map.put("m", list);
		return map;
	}
	@RequestMapping("/getstuffpage")
	@ResponseBody
	public Map<String,Object> getpage(){
		Map<String,Object> map = new HashMap<String, Object>();
		int count = service.getSize();
		map.put("totalpage", count);
		return map;
	}
	@RequestMapping("/delone")
	public String delone(@RequestParam("id") int id){
		service.delone(id);
		return "redirect:getStuffByPage?page=1";
	}
}

