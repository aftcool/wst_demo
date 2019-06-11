package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.SectionDao;
import com.demo.po.Section;

@Service
public class SectionServicelmpl implements SectionService {
	@Autowired
	SectionDao dao;
	
	public List<Section> getsectionbyorgid(int orgid){
		return dao.getbyorgid(orgid);
	}
	public List<Section> getsectionbypage(int page){
		return dao.getsectionbypage((page -1 ) * 5);
	}
	public int getsectionpage(){
		int count = dao.getsectionpage();
		return (count % 5 == 0)?(count / 5):(count/5 + 1);
	}
}
