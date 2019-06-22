package cn.edu.swu.domain;

public class FileUploadBean {
	@Override
	public String toString() {
		return "FileUploadBean [id=" + id + ", filepath=" + filepath + ", filename=" + filename + ", title=" + title
				+ "]";
	}
	private int id;
	private String filepath;
	private String filename;
	private String title;
	
	/**
	 * @return the title
	 */
	public String getTitle() {
		return title;
	}
	/**
	 * @param title the title to set
	 */
	public void setTitle(String title) {
		this.title = title;
	}
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the filepath
	 */
	public String getFilepath() {
		return filepath;
	}
	/**
	 * @param filepath the filepath to set
	 */
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	/**
	 * @return the filename
	 */
	public String getFilename() {
		return filename;
	}
	/**
	 * @param filename the filename to set
	 */
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public FileUploadBean(int id, String filepath, String filename, String title) {
		super();
		this.id = id;
		this.filepath = filepath;
		this.filename = filename;
		this.title = title;
	}
	public FileUploadBean() {
		super();
		
	}
	
	
	
	
}
