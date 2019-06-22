package cn.edu.swu.DAO;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.Connection;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import cn.edu.swu.Tools.JdbcTools;
import cn.edu.swu.domain.FileUploadBean;

public class DAO<T> {
	
	private static  QueryRunner qr = new QueryRunner();
	private Class<T> clazz;
	
	public DAO() {
		Type superclass = getClass().getGenericSuperclass();
		if (superclass instanceof ParameterizedType) {
			ParameterizedType parameterizedType=(ParameterizedType) superclass;
			Type [] typeArgs=parameterizedType.getActualTypeArguments();
			if(typeArgs!=null && typeArgs.length>0) {
				clazz= (Class<T>) typeArgs[0];
			}
		}
	}
	
	/**
	 * 
	 * 根据某一个值，返回一条记录
	 * @return
	 */
	
	public <E> E getForValue(String sql,Object...args) {
		Connection con=null;
		try {
			con=JdbcTools.getConnection();
			return (E) qr.query(con, sql, new ScalarHandler(),args);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTools.release(con);
		}
		return null;
	}
	
	
	
	/**
	 * 返回T对应的LIST
	 */
	public List<T> getForList(String sql,Object...args) {
		Connection con=null;
		try {
			con=JdbcTools.getConnection();
			return qr.query(con, sql, new BeanListHandler<T>(clazz),args);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTools.release(con);
		}
		return null;
	}
	
	/**
	 * 取一个T对象
	 * @param sql
	 * @param args
	 * @return
	 */
	public T get(String sql,Object...args) {
		
		Connection con=null;
		try {
			con=JdbcTools.getConnection();
			return qr.query(con, sql, new BeanHandler<T>(clazz),args);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTools.release(con);
		}
		return null;
	}
	
	/**
	 * 封装insert
	 * @param sql
	 * @param args
	 */
	public void Update(String sql,Object...args) {
		Connection con=null;
		try {
			con=JdbcTools.getConnection();
			qr.update(con, sql, args);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JdbcTools.release(con);
		}
	}
}
