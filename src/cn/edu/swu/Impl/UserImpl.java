package cn.edu.swu.Impl;

import java.util.ArrayList;
import java.util.List;

import cn.edu.swu.DAO.DAO;
import cn.edu.swu.DAO.UserDao;
import cn.edu.swu.DAO.PrivilegeDao;
import cn.edu.swu.domain.CriteriaUser;
import cn.edu.swu.domain.PageBeanList;
import cn.edu.swu.domain.Privilege;
import cn.edu.swu.domain.User;
import cn.edu.swu.Impl.PrivilegeDaoImpl;

public class UserImpl extends DAO<User> implements UserDao{
	private PrivilegeDao pd=new PrivilegeDaoImpl();
	
	public User query(String username, String password) {
		String sql="select * from user_info where username=? and password=?";
		
		return  get(sql, username,password);
	}

	public void delete(int uid) {
		String sql1="delete from user_privilege where user_id=? ";
		Update(sql1, uid);
		String sql2="delete from user_info where uid=?";
		Update(sql2, uid);
	}

	public void save(User user) {
		String sql="insert into user_info(username,password,phone) values(?,?,?)";
	    Update(sql, user.getUsername(),user.getPassword(),user.getPhone());
	}

	public void update(User user) {
		String sql="update user_info set password=? where uid=?";
		Update(sql, user.getPassword(),user.getUid());
	}
	
	public List<User> queryForList(CriteriaUser user) {
		String sql="select * from user_info where username like ?";
		return getForList(sql, user.getUsername());
	}
	
	
	public User getUser(int id) {
		String sql1="SELECT * FROM privilege_info WHERE id IN (SELECT up.privilege_id FROM user_privilege up WHERE up.user_id =?)";
		String sql2="SELECT * FROM user_info WHERE uid=?";
		User user=get(sql2, id);
		user.setPrivileges(pd.FindUserPri(sql1,id));
		return user;
	}

	public void updatePri(int id, String[] privileges_id) {
		//1.删除用户所有权限关系
		String sql1="DELETE from user_privilege where user_id=? ";
		Update(sql1,id);
		//2.新增用户所有权限关系
		String sql2="INSERT INTO user_privilege VALUES(?,?)";
		for(int i=0;i<privileges_id.length;i++) {
				Update(sql2, id,privileges_id[i]);
		}
		
	}
	/**
	 * 获取User的页数
	 */

	public PageBeanList<User> findUserPage(int pc) {
		int ps=3;//定义每一页的信息数量
		Long count;//数据库的信息总量
		String sql="SELECT count(*) from user_info";
		count=getForValue(sql);
		PageBeanList<User> pageBeanList=new PageBeanList<User>();
		pageBeanList.setPc(pc);
		pageBeanList.setPs(ps);
		pageBeanList.setCount(count);
		//封装每一页的用户信息
		String sql1="SELECT * FROM user_info limit "+(pc-1)*ps+","+ps;
		List<User> users=new ArrayList<User>();
		users=getForList(sql1);
		pageBeanList.setBeanList(users);
		return pageBeanList;
	}

}
