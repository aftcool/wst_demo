package com.demo.dao;

import java.util.List;

import com.demo.po.Organization;
public interface OrgDao {
	//获取机构表所有信息
	List<Organization> getAll();
	//按页码获取机构表的信息
	List<Organization> getOrgsByPage(int page);
	//获取机构表页数
	Integer getSize();
	//根据orgid获取org信息
	Organization  getorgbyorgid(int orgid);
}
