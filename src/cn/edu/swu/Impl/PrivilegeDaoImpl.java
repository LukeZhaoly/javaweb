package cn.edu.swu.Impl;


import java.util.List;


import cn.edu.swu.DAO.DAO;
import cn.edu.swu.DAO.PrivilegeDao;
import cn.edu.swu.domain.Privilege;

public class PrivilegeDaoImpl extends DAO<Privilege> implements PrivilegeDao {
	//实现查询所有权限
	public List<Privilege> getPrivileges() {
		String sql="select * from privilege_info";
		return getForList(sql);
	}
	/**
	 * 查询用户所拥有的权限
	 * 
	 */
	public List<Privilege> FindUserPri(String sql, int id) {
		
		return getForList(sql, id);
	}
	
	
	
}
