package com.demo.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.HttpServerErrorException;

import com.demo.po.Organization;
import com.demo.service.OrgService;
 
@Controller
public class Orgcontroller {
	@Autowired
	OrgService ser;
	
	@RequestMapping("/getorgbyorgid")
	@ResponseBody
	public Organization getorgbyorgid(@RequestParam("orgid") int id){
		return ser.getorgbyorgid(id);
	}
	@RequestMapping("/getorg")
	public String getorg(HttpServletRequest request){
		List<Organization> list = ser.getOrgs();
		for(Organization o : list)
			System.out.println(o);
		System.out.println(request);
		request.setAttribute("data", list);
		return "orglist";
	}
	@RequestMapping("/getOrgsByPage")
	public String getOrgsByPage(@RequestParam("page") int p,HttpServletRequest request){
		List<Organization> list = ser.getOrgsByPage(p);
		request.setAttribute("data", list);
		return "orglist";
	}
	@RequestMapping("/getOrgsbyajax")
	@ResponseBody
	public Map<String,Object> getOrgByAjax(@RequestParam("page") int p){
		Map<String,Object> map = new HashMap<String, Object>();
		List<Organization> list = ser.getOrgsByPage(p);
		map.put("m", list);
		return map;
	}
	@RequestMapping("/getpage")
	@ResponseBody
	public Map<String,Object> getpage(){
		Map<String,Object> map = new HashMap<String, Object>();
		int count = ser.getSize();
		map.put("totalpage",count);
		return map;
	}
	@RequestMapping("/getOrgsajax")
	@ResponseBody
	public List<Organization> getOrgsajax(HttpServletRequest request){
		List<Organization> list = ser.getOrgs();
		return list;
	}
}
