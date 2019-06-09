package cn.edu.swu.DAO;

import java.util.List;

import cn.edu.swu.domain.FileUploadBean;

public interface FileUploadDownDao {
	public FileUploadBean select(String Title) ;
	public void saveFile(FileUploadBean bean);
	public void Delete(String title); 
	public List<FileUploadBean> getBeans();
}
