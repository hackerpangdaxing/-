package check;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Clob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Problem;
import util.DbUtil;


/**
 *addProblem.java
 *check
 * @author 胖大星
 *@date 2016年11月6日上午9:21:51
 */
public class addProblem {
	private static DbUtil dbUtil = new DbUtil();
	/*
	private static int addProblem_1(Problem problem)throws Exception{
		Connection con = dbUtil.getCloudClassCon();
		String sql = "insert into problem values(null,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
	
		File context = problem.getProblem();
		InputStream inputstream = new FileInputStream(context);
		pstmt.setAsciiStream(1, inputstream,context.length());

		File pic = problem.getPic();
		InputStream inputstream2 = new FileInputStream(pic);
		pstmt.setAsciiStream(2, inputstream2,pic.length());

		File answer = problem.getAnswer();
		InputStream inputstream3 = new FileInputStream(answer);
		pstmt.setAsciiStream(3, inputstream3,answer.length());

		pstmt.setInt(4, problem.getSore());
		
		int result = pstmt.executeUpdate();

		dbUtil.close(pstmt, con);
		return result;
		
	}*/

	public  void getProblem(int id)throws Exception{
		Connection con = dbUtil.getCloudClassCon();
		String sql = "select * from problem where id = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, id);
		ResultSet rs = pstmt.executeQuery(); 
		if(rs.next()){
			Clob  c = rs.getClob("problem");
			String problem = c.getSubString(1,(int) c. length());

			Blob b = rs.getBlob("pic");
			FileOutputStream out = new FileOutputStream(new File("c:/CloudClass/problem/4.png"));
			out.write(b.getBytes(1, (int)b.length()));
			out.close();
			
			Clob  c1 = rs.getClob("answer");
			String answer = c1.getSubString(1,(int) c1. length());
			
			int sore = rs.getInt("sore");
			System.out.println("题目："+problem);
			System.out.println("答案："+answer);
			System.out.println("分值："+sore);
			
		}
		dbUtil.close(pstmt, con);
	}
	public static void main(String[] args) throws Exception {
	  /* File context=new File("c:/CloudClass/problem/1.txt");
		File pic=new File("c:/CloudClass/problem/1.png");
		File answer = new File("C:/CloudClass/answer/1.txt");
		Problem problem=new Problem(context,pic,answer,5);
		int result=addProblem_1(problem);
		if(result==1){
			System.out.println("添加成功！");
		}else{
			System.out.println("添加失败！");
		}*/
		//getProblem(1);
	}

}
