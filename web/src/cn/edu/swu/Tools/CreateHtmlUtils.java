package cn.edu.swu.Tools;

import java.io.FileInputStream;
import java.io.FileOutputStream;

public class CreateHtmlUtils {
	
	public void MakeHtml(String filePath,String disrPath,String fileName,String content) throws Exception {
		
		//System.out.println(filePath);
		String tempContext="";
		FileInputStream fileInputStream=new FileInputStream(filePath);//读取模板文件
		int lenght=fileInputStream.available();
		
		byte[] bytes=new byte[lenght];
		fileInputStream.read(bytes);
		fileInputStream.close();
		
		tempContext=new String(bytes);
		content=content.replaceAll("\n","<br>" );
		content=content.replaceAll(" ","&nbsp;" );
		//System.out.println(tempContext);
		tempContext=tempContext.replaceAll("##title##", content);
		//System.out.println(tempContext);
		
		String filepac=fileName+".jsp";
		filepac=disrPath+filepac;
		FileOutputStream fileOutputStream=new FileOutputStream(filepac);
		//System.out.println("文件输出路径："+filepac);
		
		byte[] tag_bytes=tempContext.getBytes();
		fileOutputStream.write(tag_bytes);
		fileOutputStream.close();
	}
	

}
