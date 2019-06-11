package com.demo.service;

import java.util.List;
import com.demo.po.Organization;

public interface OrgService {
	
	List<Organization> getOrgs();
	List<Organization> getOrgsByPage(int page);
	int getSize();
	Organization getorgbyorgid(int orgid);
}
