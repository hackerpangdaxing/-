package test;

import bean.fileUp;
import PPT2pdf.Jacob2Pdf;
import PPT2pdf.Word2Pdf;

public class demoTest {
	
	public void ppt2pdf(fileUp f,String savePath){
		String id = f.getID();
		String path = f.getPath();
		String filename = f.getFile();
		String username = f.getUsername();
		String time = f.getTime();
		
		String pathReal = path+"\\"+filename;
	    	 Jacob2Pdf  jp = new Jacob2Pdf();
	    	 System.out.println("pathReal......."+pathReal);
		    //String path1 = "C:\\Users\\胖大星\\Desktop\\2.ppt";

	        String pdfFile = savePath;
	        
	        System.out.println(jp.convert2PDF(pathReal,pdfFile));  
	         
	}

	/*public static void main(String[] args) {

		 Jacob2Pdf  jp = new Jacob2Pdf();

	    String inputFile = "C:\\Users\\胖大星\\Desktop\\2.ppt";

        String pdfFile = "C:\\Users\\胖大星\\Desktop\\test4.pdf";

        System.out.println(jp.convert2PDF(inputFile,pdfFile));    //可识别所有office类型  自行判断转成pdf

	}*/

}
