package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.session.SessionListener;

import bean.UserTest;
import check.UserRegister;
import check.checkLogin;
import dao.IUserDao;
import dao.UserDaoImpl;
import model.User;
import model.UserList;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset =utf-8");
		// 获取注册表单的用户名以及密码
		
		String userName = request.getParameter("username");
		String userPwd = request.getParameter("password");

/*
		request.getSession().setAttribute("userName", userName);
		//如果不存在session会话，就创建一个session对象
		HttpSession session = request.getSession();
		session.setAttribute("userName", userName);
	    
		System.out.println("lalallalala");*/
		
		/*HttpSession session = request.getSession();
		System.out.println(session.getId());
		session.setAttribute("user", userName);
		pw.write("put done!");
		pw.write("<a href='/Cloud/servlet/getUserSessionServlet'>look look</a>");
		*/
		
		PrintWriter pw = response.getWriter();
		User user = new User(userName,userPwd);
		checkLogin check = new checkLogin();

		
	/*	 HttpSession session=request.getSession();
         UserTest user1=(UserTest)session.getAttribute("username");
         if(null==user1 || !userName.equals(user1.getName()))
      {
           user1 =new UserTest(userName);
          session.setAttribute("username",user1);
         }
     
        response.setContentType("text/html;charset=utf-8");
        
     
         pw.println("欢迎用户：<b>"+userName+"</b>登录");
         UserList ul=UserList.getInstance();
      pw.println("<br>当前在线的用户列表：<br>");
   Enumeration<String> enums=ul.getUserList();
         int i=0;
      while(enums.hasMoreElements())
       {
          pw.println(enums.nextElement());
         pw.println("&nbsp;&nbsp;&nbsp;&nbsp;");
      if(++i==10)
        {
                 pw.println("<br>");
         }
     }
       pw.println("<br>当前在线的用户数："+i);
         pw.println("<p><a href=LogoutServlet>退出登录</a>");
       pw.close();
		
		*/
 
		try {

			if (check.checklogin(user) ==1) {
				
				request.getSession().setAttribute("userName", userName);
				//如果不存在session会话，就创建一个session对象
				HttpSession session = request.getSession();
				
				/**
				 * 这里的session还有问题，解决多用户登入将session过期时间设置为5分钟,还没有解决用户退出问题
				 * */
				
				SessionListener c = new SessionListener();
				
				session.setAttribute("userName", userName);   //将账号放入session中
				
				//防止多用户同时登入同一个账号
				if(c.isAlreadyEnter(session, userName)){
					pw.write("0");
					System.out.println("该用户已经登入过，请换个号码重试！");
		  
				}else{
				pw.write("1");
				System.out.println("登入成功！");
				}
				
		
			} else {
				System.out.println(userName + userPwd);
				System.out.println("密码错误");
			}
		} catch (Exception e) {

			e.printStackTrace();
			System.out.println("登入出现异常！");
		}


	}

}
