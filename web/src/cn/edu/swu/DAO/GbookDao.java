package cn.edu.swu.DAO;

import java.util.List;

import cn.edu.swu.domain.Gbook;

public interface GbookDao {
	public void save(Gbook gbook);
	public List<Gbook> secList();
	public void delete(int id) ;
}
