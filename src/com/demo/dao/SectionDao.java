package com.demo.dao;

import java.util.List;

import com.demo.po.Section;

public interface SectionDao {
	
	//根据Orgid查询科室信息
	List<Section> getbyorgid(int orgid);
	//根据page查询指定信息
	List<Section> getsectionbypage(int page);
	//获取section总页数
	public Integer getsectionpage();
}
