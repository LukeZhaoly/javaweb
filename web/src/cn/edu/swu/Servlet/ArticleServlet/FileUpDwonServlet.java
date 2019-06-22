package cn.edu.swu.Servlet.ArticleServlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import cn.edu.swu.DAO.FileUploadDownDao;
import cn.edu.swu.Impl.FileUploadDownImpl;
import cn.edu.swu.domain.Article;
import cn.edu.swu.domain.FileUploadBean;

/**
 * Servlet implementation class FileUpDwonServlet
 */
public class FileUpDwonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private FileUploadDownDao fud=new FileUploadDownImpl();
	private static  String FILE_PATH="/Admin/files";
	private static String TEMP_PATH="/tmp";
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String servletPath=request.getServletPath();
		String methodName=servletPath.substring(1);
		methodName=methodName.substring(0, servletPath.length()-4);
		//利用反射
		try {
			Method method=getClass().getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class );
			method.invoke(this,request,response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("Admin/error.jsp");
		} 
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
	
	/**
	 *    
	 * @author zly
	 *
	 * @date 2019年6月8日下午11:22:51
	 * 
	 * 上传文件，并把文件信息存入数据库
	 */
	private void add(HttpServletRequest request, HttpServletResponse response) throws Exception{
//		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		FileUploadBean bean=new FileUploadBean();
		//获取所有参数
		Date d = new Date();
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
		String date = df.format(d);
		
		//创建一个存储的仓库factory
		DiskFileItemFactory factory = new DiskFileItemFactory();
		//设置空间大小
		factory.setSizeThreshold(1024*500); //不超过500k，文件
		
		File temp=new File(getServletContext().getRealPath(FILE_PATH)+"//");
		factory.setRepository(temp);//写到的一个临时目录	
		
		//创建一个Upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);
		
		//设置总的空间大小
		upload.setSizeMax(1024*1024*100);
		upload.setFileSizeMax(1024*1024*4);//最大传4M的文件
		upload.setHeaderEncoding("utf-8");//防止中文的文件名乱码
		//1.得到FileItem的集合items
		try {
			List<FileItem> items = upload.parseRequest(request);
			
			//2.遍历items；若是一个一般的表单域，打印name和value，
			for(FileItem item:items) {
				//表单域的内容
				if(item.isFormField()) {
					String name=item.getFieldName();
					String value=item.getString("UTF-8");
					//System.out.println(value);
					if("title".equals(name)) {
		    			bean.setTitle(value);
		    		}
				}else {
					//3.若是文件域,存到/WEB_INF/files
					String fieldName = item.getFieldName();
				    //带路径的文件名
				    String longFileName=item.getName();
				    //获取文件名
				    char indexChar = '\\';
                    String fileName = item.getName().substring(longFileName.lastIndexOf(indexChar) + 1,longFileName.length());
      
                    //上传文件
                    InputStream in=item.getInputStream();
				    byte[] buffer=new byte [1024];
				    int len=0;
				    //文件存放目录
				    String filepath=getServletContext().getRealPath(FILE_PATH)+"/"+fileName;
				    bean.setFilepath(filepath);			 
				    bean.setFilename(fileName);				   
				   
				    OutputStream out=new FileOutputStream(filepath);
				    while ((len=in.read(buffer))!=-1) {
						out.write(buffer,0,len);
					}
				    out.close();
				    in.close();
				}
			}
		
		fud.saveFile(bean);	
		
		//		 将其他信息存入article信息表
			
		} catch (FileUploadException e) {
			e.printStackTrace();
		}		
		response.sendRedirect(request.getContextPath()+"/Admin/fileInfo.jsp");
	}
	/**
	 * 
	 * @author zly
	 *
	 * @date 2019年6月8日下午11:24:32
	 * 
	  *  文件下载
	 */
	private void download(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException {
		//设置浏览器下载模式
				response.setContentType("application/x-msdownload");
				String Title = request.getParameter("titlefile");
				
				FileUploadBean filedownBean=new FileUploadBean();
				filedownBean =fud.select(Title);
				//设置浏览器
				response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(filedownBean.getFilename(), "UTF-8"));
				
				
				//利用输出流下载文件
				
				OutputStream out=response.getOutputStream();
				
				//从数据库中得到filepath,根据title
				
				
				String filepath=filedownBean.getFilepath();
			
				InputStream in=new FileInputStream(filepath);
				byte [] buffer=new byte[1024];
				int len=0;
				while ((len=in.read(buffer))!=-1) {
					out.write(buffer,0,len);
				}
				in.close();
	}
	
	/**
	 * 
	 * @author zly
	 * @throws IOException 
	 *
	 * @date 2019年6月8日下午11:26:14
	  * 文件删除
	 */
	private void delete(HttpServletRequest request,HttpServletResponse response) throws IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String title=request.getParameter("title");
		FileUploadBean fBean=fud.select(title);
		System.out.println(fBean.getFilepath());
		fud.Delete(title);
		File file=new File(fBean.getFilepath());
		if(file.exists() && file.isFile()) {
			if(file.delete()) {
				response.sendRedirect(request.getContextPath()+"/Admin/fileInfo.jsp");
			}else {
				response.sendRedirect("Admin/error.jsp");
			}
		}
	}
	
	private void query(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		List<FileUploadBean> fileUploadBeans= fud.getBeans();
		request.getSession().setAttribute("fileUploadBeans", fileUploadBeans);
		response.sendRedirect(request.getContextPath()+"/Admin/fileInfo.jsp");
	}
	
	private void get(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		List<FileUploadBean> fileUploadBeans= fud.getBeans();
		request.getSession().setAttribute("fgBeans", fileUploadBeans);
		
		response.sendRedirect(request.getContextPath()+"/study/s1/");
	}

}
