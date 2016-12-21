package com.reflex;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RequestUtils {
	/*public static void reflexClass() throws Exception {
	  Class cls = Class.forName("com.upload.UploadServlet");
		  Object obj = cls.newInstance();
		  Method m = cls.getDeclaredMethod("doPost",HttpServletRequest.class,HttpServletResponse.class);   //该类中的方法
		  String str = (String)m.invoke(obj);		  
	     System.out.println("str  == "+str);

	}
	*/
	public static void main(String[] args) throws Exception {
		//reflexClass();
		
		Class c = Class.forName("com.upload.UploadServlet");
		
		
		
		
		Constructor con = c.getConstructor();
		Object obj = con.newInstance();
		
		/*Method[] methods =  c.getDeclaredMethods();
		for(Method method : methods){
			System.out.println(method);
		}
		*/
		int i =0;
		//截取所有的方法
				Method[] methods1 = c.getMethods();// 获取自己的父类的公共方法
				Method[] methods2 = c.getDeclaredMethods();
				for (Method method : methods1){
					System.out.println("methods "+i+"   :     "+method);
					i++;
				}
		
		
		
		
		
		
	}
}
