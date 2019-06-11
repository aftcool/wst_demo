package com.demo.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.StuffDao;
import com.demo.po.Organization;
import com.demo.po.Stuff;

@Service
public class StuffServicelmpl implements StuffService{

	@Autowired
	StuffDao dao;
	
	@Override
	public void addone(Stuff s){
		System.out.println("------StuffServicelmpl::addone-----------");
		System.out.println(s.getRepmanname());
		dao.addone(s);
	}
	@Override
	public List< Map<String,Object> > getStuffByPage(int page){
		return dao.getStuffByPage((page - 1) * 5);
	}
	@Override
	public int getSize(){
		int count = dao.getSize();
		return (count %5 == 0)?(count /5):(count / 5+ 1);
	}
	@Override
	public void delone(int id){
		dao.delone(id);
	}
	@Override
	public Stuff getStuffByid(int id){
		return dao.getStuffByid(id);
	}
	@Override
	public void update(Stuff s){
		dao.edit(s);
	}
}
