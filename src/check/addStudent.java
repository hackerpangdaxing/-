package check;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Student;
import util.DbUtil;


public class addStudent {
	private static DbUtil dbUtil = new DbUtil();
	
	public static int addStudent_1(Student student)throws Exception{
	    Connection con = dbUtil.getCloudClassCon();
	    String sql = "insert into studentInfo values(null,?,?,?,?,?,?,?,?)";
	    PreparedStatement pstmt = con.prepareStatement(sql);
	    pstmt.setString(1, student.getSchool());
	    pstmt.setString(2, student.getProfession());
	    pstmt.setString(3, student.getStudentID());
	    pstmt.setString(4, student.getClassID());
	    pstmt.setString(5, student.getName());
	    pstmt.setString(6, student.getSex());
	    pstmt.setString(7, student.getPhoneNumber());
	    pstmt.setString(8, student.getQQ());
	    int result = pstmt.executeUpdate();
	    dbUtil.close(pstmt, con);
		return result;	
	} 
	public static void getStudent(int id)throws Exception{
		Connection con=dbUtil.getCloudClassCon();
		String sql="select * from studentInfo where id=?";
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setInt(1, id);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			String school = rs.getString("school");
			String profession = rs.getString("profession");
			String studentID = rs.getString("studentID");
			String classID = rs.getString("classID");
			String name = rs.getString("name");
			String sex = rs.getString("sex");
			String phoneNumber = rs.getString("phoneNumber");
			String QQ = rs.getString("QQ");
			System.out.println("����ѧУ��"+school);
			System.out.println("רҵ��"+profession);
			System.out.println("ѧ�ţ�"+studentID);
			System.out.println("�༶��"+classID);
			System.out.println("����"+name);
			System.out.println("�Ա�"+sex);
			System.out.println("�绰��"+phoneNumber);
			System.out.println("QQ��"+QQ);
		}
		dbUtil.close(pstmt, con);
	}
	
		public static void main(String[] args) throws Exception {
			
			Student addstudent = new Student("�ϲ��ѧԺ","�����","2014102233","01","��ĳĳ","��","1100","1200");
			int result=addStudent_1(addstudent);
			if(result==1){
				System.out.println("��ӳɹ���");
			}else{
				System.out.println("���ʧ�ܣ�");
			}
			//getStudent(1);
		}

}
