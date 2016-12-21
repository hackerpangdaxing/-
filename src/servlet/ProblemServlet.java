package servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import check.addProblem;
import util.DbUtil;

public class ProblemServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DbUtil dbUtil = new DbUtil();
		Connection con;
		try {
			con = dbUtil.getCloudClassCon();
			String sql = "select * from problem where id = 1";
			PreparedStatement pstmt = con.prepareStatement(sql);
			PrintWriter pw = response.getWriter();
			ResultSet rs = pstmt.executeQuery();  //光标指向上一行，有则返回true 没有就返回false
			if(rs.next()){
				
				Clob  c = rs.getClob("problem");
				String problem = c.getSubString(1,(int) c. length());

				Blob b = rs.getBlob("pic");
			
				Clob  c1 = rs.getClob("answer");
				String answer = c1.getSubString(1,(int) c1. length());
				
				int sore = rs.getInt("sore");
				pw.write("题目："+problem);
				pw.write("答案："+answer);
				pw.write("分值："+sore);
				System.out.println("题目："+problem);
				System.out.println("答案："+answer);
				System.out.println("分值："+sore);
				
			}
			dbUtil.close(pstmt, con);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	


	}


	public void init() throws ServletException {
		// Put your code here
	}

}
