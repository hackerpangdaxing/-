package com.upload;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import test.demoTest;
import PPT2pdf.Jacob2Pdf;
import PPT2pdf.Word2Pdf;
import bean.fileUp;
import check.fileUpload;
import cn.itcast.commons.CommonUtils;

/**
 * @author 胖大星
 *上传不能够使用BaseServlet           
 */
public class UploadServlet extends HttpServlet {

	//此方法专门用于获取文件名不加后缀名
	 public  String getFileNameNoEx(String filename) {   
	        if ((filename != null) && (filename.length() > 0)) {   
	            int dot = filename.lastIndexOf('.');   
	            if ((dot >-1) && (dot < (filename.length()))) {   
	                return filename.substring(0, dot);   
	            }   
	        }   
	        return filename;   
	    }   
	//文件目录存储
	public void  doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("text/html;charset=utf-8");

		/*String userName = request.getParameter("username");
		System.out.println(userName);*/
		//工厂		设置工厂的缓冲区的大小，当上传的文件大小超过缓冲区的大小时，就会生成一个临时文件存放到指定的临时目录当中
		DiskFileItemFactory factory = new DiskFileItemFactory(1024*1024*20,new File("C:"));   //上传文件最大为20M
		//解析器
		ServletFileUpload sfu = new ServletFileUpload(factory);
		//限制大小
//		sfu.setFileSizeMax(100 * 1024);//限制单个文件大小为100k
//		sfu.setSizeMax(1024 * 1024);//限制整个表单的大小为1M
		//如果上传文件超出限制，在praseRequest()方法执行时，会抛出异常
	      
        /*  
         * 上传三步  
         * 1. 得到工厂  
         * 2. 通过工厂创建解析器  
         * 3. 解析request，得到FileItem集合  
         * 4. 遍历FileItem集合，调用其API完成文件的保存  
         */  
		try {
			List<FileItem> list = sfu.parseRequest(request);
			FileItem fi_userName = list.get(0); //获取表单中第一个变量，也就是用户名
			FileItem fi_fileName = list.get(1); //获取表单第二个变量，也就是上传的文件名
		    
			/*
			 * 1、得到文件保存的路径
			 */
			 String root = this.getServletContext().getRealPath("\\upload\\")  ;  //上传文件安放路径   放在tomcat服务器下的目录
			/*
			 * 2、生成二层目录
			 * 	1）得到文件名称
			 * 	2）得到hashCode
			 * 	3）转发成为16进制
			 * 	4）获取前二个字符用来生成的目录
			 */
	        String username = fi_userName.getString("utf-8"); 
			String filename = fi_fileName.getName();
			/*
			 * 处理文件名的绝对路径的问题
			 */
			int index = filename.lastIndexOf("\\");
			if(index != -1){
				filename = filename.substring(index+1);

			}
			/*
			 * 给文件名称添加uuid前缀，处理文件名称的同名问题
			 */
			String savename = filename;     //文件的IDName  根据时间生成随机的32个字符
			
			/*
			 * 1、得到hashCode
			 */
			int hCode = filename.hashCode();
		//	String hex = Integer.toHexString(hCode);
			/*
			 * 2、获取hex的前两个字母，与root连接在一起，生成一个完整路径
			 */
			File dirFile = new File(root,"\\"+"上传文件");         //path =dirFile.getPath(); 如果用这一句存入数据库将 失去   \\  无法获取准确的路径
			File saveFile = new File(root+"\\"+"PDF");
			String ID =CommonUtils.uuid();        //将随机文件名设置成专属ID 
			String path = root+"\\"+"上传文件";     //文件存储路径
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
			String time  = df.format(new Date());// new Date()为获取当前系统时间
			//filename为文件名    userName为用户名
			System.out.println( "ID: "+ID+"\n\t  path: "+path+" \n\t filename: "+filename+"\n\t  time:"+time);//+"\n\t   username:"+userName
             String savedname = getFileNameNoEx(filename)+".pdf";   //转格式之后的文件名
             System.out.println("name....."+savedname);
			/*
			 * 3、创建目录链
			 */
			dirFile.mkdirs();
			saveFile.mkdirs();
			/*
			 * 4、创建目标文件
			 */
			File destFile = new File(dirFile,savename);
			File seFile = new File(saveFile,savedname);
			/*
			 * 5、保存
			 */
		  
			fi_fileName.write(destFile);
			fi_fileName.write(seFile);
			//request.setAttribute("msg", "上传成功");
			request.getRequestDispatcher("/success.html").forward(request, response);
	
			//已解决   解决办法 导入jacob本地可以运行 部署在服务器就报错 原因 在C：/window/system32/jacob.dll   另将jacob.jar放入 webroot/lib下  禁止使用中文路径
			
			/*String source3 = path+"/"+filename;
			String target3 = "C:\\Users\\胖大星\\Desktop\\test3.pdf";
			Word2Pdf pdf = new Word2Pdf();
			pdf.ppt2pdf(source3, target3);*/   
			// 无法调用此方法 会报错：Servlet.service（）for servlet [UploadServlet]在上下文中与路径[/ Cloud] threw异常[Servlet执行抛出异常]具有根本原因
			
			String savePath = root+"\\PDF\\"+savedname;   //转换后的pdf路径
			
			String pathReal = path+"\\"+filename;  //原ppt路径		
			

				fileUpload f = new fileUpload();
				fileUp fu = new fileUp(ID,pathReal,filename,username,time,savedname,savePath);
				f.save(fu);
				
				Jacob2Pdf  jp = new Jacob2Pdf(); 
			
				jp.convert2PDF(pathReal, savePath);
				
				System.out.println("pathReal  ....."+pathReal+"\n   savePath......"+savePath);
				/*demoTest t = new demoTest();
				
				String savePath = root+"\\PDF\\"+savedname;
				System.out.println(savePath);
				t.ppt2pdf(fu,savePath);*/

		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			if(e instanceof FileUploadBase.FileSizeLimitExceededException){
				//request.setAttribute("msg", "您上传的文件超过了10M");
				request.getRequestDispatcher("/success.html").forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e);
			System.out.println("不行啦，又出错啦！！！");
		}
	}

}
