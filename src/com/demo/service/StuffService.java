package com.demo.service;
import java.util.List;
import java.util.Map;

import com.demo.po.Stuff;

public interface StuffService {
	public void addone(Stuff s);
	public List< Map<String,Object> > getStuffByPage(int page);
	public int getSize();
	public void delone(int id);
	public Stuff getStuffByid(int id);
	public void update(Stuff s);
}
