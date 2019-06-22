package cn.edu.swu.domain;

import java.util.List;

public class PageBeanList<T> {
	private int pc;//当前页面的页码数
	private long count;//数据库页数的总页数
	private int ps;//当前页面的记录数；
	private String url;//当前页面的url地址
	private List<T> beanList;//上面数据的集合
	/**
	 * 查看总数除以页面数，获取总页数
	 * 不能除进则总页数+1；
	 */
	public long getTp() {
		long tp=count/ps;
		return count%ps==0?tp:tp+1;
	}
	
	/**
	 * @return the count
	 */
	public long getCount() {
		return count;
	}

	/**
	 * @param count the count to set
	 */
	public void setCount(long count) {
		this.count = count;
	}

	/**
	 * @return the pc
	 */
	public int getPc() {
		return pc;
	}
	/**
	 * @param pc the pc to set
	 */
	public void setPc(int pc) {
		this.pc = pc;
	}
	
	
	/**
	 * @return the ps
	 */
	public int getPs() {
		return ps;
	}
	/**
	 * @param ps the ps to set
	 */
	public void setPs(int ps) {
		this.ps = ps;
	}
	/**
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}
	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
	}
	/**
	 * @return the beanList
	 */
	public List<T> getBeanList() {
		return beanList;
	}
	/**
	 * @param beanList the beanList to set
	 */
	public void setBeanList(List<T> beanList) {
		this.beanList = beanList;
	}

	@Override
	public String toString() {
		return "PageBeanList [pc=" + pc + ", count=" + count + ", ps=" + ps + ", url=" + url + ", beanList=" + beanList
				+ "]";
	}
	
}
