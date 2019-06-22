package cn.edu.swu.DAO;

import java.util.List;


import cn.edu.swu.domain.Privilege;

public interface PrivilegeDao {
	//1.获取所有权限 
	public List<Privilege> getPrivileges();
	//获取用户的权限
	public List<Privilege> FindUserPri(String sql, int id);
	
}
