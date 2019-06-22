package cn.edu.swu.Impl;

import java.util.List;

import cn.edu.swu.DAO.DAO;
import cn.edu.swu.DAO.GbookDao;
import cn.edu.swu.domain.Gbook;

public class GbookDaoImpl extends DAO<Gbook> implements GbookDao {

	public void save(Gbook gbook) {
		String sql="INSERT INTO guest_book(guestbook,guestuser) values(?,?)";
		Update(sql, gbook.getGuestbook(),gbook.getGuestuser());
	}

	public List<Gbook> secList() {
		String sql="SELECT * FROM guest_book";
		return getForList(sql);
	}

	public void delete(int id) {
		String sql="DELETE FROM guest_book where id=? ";	
		Update(sql, id);
	}

}
