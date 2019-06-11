package com.demo.service;

import java.util.List;

import com.demo.po.Section;

public interface SectionService {
	public List<Section> getsectionbyorgid(int orgid);
	public List<Section> getsectionbypage(int page);
	public int getsectionpage();
}
