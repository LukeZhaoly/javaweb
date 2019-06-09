package cn.edu.swu.Impl;


import java.util.List;

import cn.edu.swu.DAO.DAO;
import cn.edu.swu.DAO.FileUploadDownDao;
import cn.edu.swu.domain.FileUploadBean;

public class FileUploadDownImpl extends DAO<FileUploadBean> implements FileUploadDownDao {

	/**
	 * 文件下载
	 * 
	 */
	public FileUploadBean select(String Title) {
		String sql="select * from fileupload_info where title=?";
		return get(sql, Title);
	}

	/**
	 * 文件上传
	 * 
	 */
	public void saveFile(FileUploadBean bean) {
			String sql="insert into fileupload_info(filename,filepath,title) values(?,?,?)";
			Update(sql, bean.getFilename(),bean.getFilepath(),bean.getTitle());
	}

	
	public void Delete(String title) {
		String sql="delete from fileupload_info where title=?";
		Update(sql, title);
	}
	
	public List<FileUploadBean> getBeans() {
		String sql="SELECT * FROM fileupload_info";
		return getForList(sql);
	}
	
}
