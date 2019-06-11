package com.demo.dao;

import java.util.List;
import java.util.Map;

import com.demo.po.Stuff;
public interface StuffDao {
	//增加人员
	public void addone(Stuff s);
	//按页码获取人员表的信息
	public List< Map<String,Object> > getStuffByPage(int page);
	//获取stuff表页数
	Integer getSize();
	public void delone(int id);
	//按照stuff_id查询员工信息
	public Stuff getStuffByid(int id);
	//进行修改员工信息
	public void edit(Stuff s);
}
