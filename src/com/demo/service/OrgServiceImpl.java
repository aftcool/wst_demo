package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.OrgDao;
import com.demo.po.Organization;

@Service
public class OrgServiceImpl implements OrgService{
	@Autowired
	OrgDao dao;
	@Override
	public List<Organization> getOrgs() {
		return dao.getAll();
	}
	@Override
	public List<Organization> getOrgsByPage(int page) {
		return dao.getOrgsByPage((page -1 ) * 5);
	}
	@Override
	public int getSize() {
		int size = dao.getSize();
		if(size % 5 == 0){
			return size/5;
		}else
			return size/ 5 + 1;
	}
	@Override
	public Organization getorgbyorgid(int orgid){
		return dao.getorgbyorgid(orgid);
	}
}