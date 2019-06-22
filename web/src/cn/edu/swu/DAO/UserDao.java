package cn.edu.swu.DAO;

import java.util.List;

import cn.edu.swu.domain.CriteriaUser;
import cn.edu.swu.domain.PageBeanList;

import cn.edu.swu.domain.User;

public interface UserDao {
	
	/**
	 * 获取用户页面的页数
	 * @param cUser 
	 */
	public PageBeanList<User> findUserPage(int pc) ;
	
	/**
	 * 增加用户
	 */
	public void save(User user) ;
	
	/**
	 * 删除用户
	 */
	public void delete(int id);
	
	/**
	 * 查询用户
	 */
	public User query(String username,String pasword);
	
	/**
	 * 修改用户信息
	 */
	public void update(User user); 
	
	/**
	 * 查询用户表
	 */
	public List<User> queryForList(CriteriaUser user);
	

	//1.获取用户的权限
	public User getUser (int id);
	
	//2.修改用户的权限
	public void updatePri(int id,String[] privileges_id);

	public long getWithName(String username);
	
	
}
