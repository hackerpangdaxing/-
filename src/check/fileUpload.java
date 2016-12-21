package check;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import util.DbUtil;
import bean.fileUp;

public class fileUpload {
	
	DbUtil dbUtil = new DbUtil();

	public void save(fileUp file){
		Connection con =null;
		Statement stmt = null;
		try {
			con = dbUtil.getCloudClassCon();
			//将上传的文件存入数据库
			String sql = "insert into FileUpload values('"+file.getID()+"','"+file.getPath()+"','"+file.getFile()+"','"+file.getUsername()+"','"+file.getTime()+"','"+file.getPdfName()+"','"+file.getPdfPath()+"')";  
			stmt = con.createStatement();
			int flag =  stmt.executeUpdate(sql);        //stmt.executeUpdate(sql) 用于增删改    stmt.execute(sql);用于查询数据   否则将报错 能入到数据库但是rs.next()==false;
			/*System.out.println(flag);
			ResultSet rs =stmt.getGeneratedKeys();*/
			//System.out.println(rs.next());  
			if (flag==1) {
				System.out.println("文件上传成功！");
				/*System.out.println(rs.toString());
				System.out.println(rs.next());
				rs.close();*/
				dbUtil.close1(stmt, con);
			} else {
				System.out.println("文件上传失败！");
				//System.out.println(rs.toString());
				/*System.out.println(rs.next());
				rs.close();*/
				dbUtil.close1(stmt, con);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
