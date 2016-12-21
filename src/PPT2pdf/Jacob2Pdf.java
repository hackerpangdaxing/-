package PPT2pdf;

import java.io.File;

import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.Dispatch;
import com.jacob.com.Variant;

/**
 * @author 胖大星 doc excl ppt转pdf
 */
public class Jacob2Pdf {
    // 各种格式文件保存为pdf格式宏(批量处理)，各个值
	private static final int wdFormatPDF = 17;

	private static final int xlTypePDF = 0;

	private static final int ppSaveAsPDF = 32;

	private static final int WORD_HTML = 8;

	


	// 验证格式

	public static boolean convert2PDF(String inputFile, String pdfFile) {

		String suffix = getFileSufix(inputFile); // 获取文件后缀名

		File file = new File(inputFile);

		if (!file.exists()) {

			System.out.println("文件不存在！");

			return false;

		}

		if (suffix.equals("pdf")) {

			System.out.println("已经是PDF格式不需要再转换了");

			return false;

		}

		if (suffix.equals("doc") || suffix.equals("docx")
				|| suffix.equals("txt")) {

			return word2PDF(inputFile, pdfFile);

		} else if (suffix.equals("ppt") || suffix.equals("pptx")) {

			return ppt2PDF(inputFile, pdfFile);

		} else if (suffix.equals("xls") || suffix.equals("xlsx")) {

			return excel2PDF(inputFile, pdfFile);

		} else {

			System.out.println("文件格式不支持转换!");

			return false;

		}

	}

	public static String getFileSufix(String fileName) {

		int splitIndex = fileName.lastIndexOf(".");

		return fileName.substring(splitIndex + 1);

	}

	// word转PDF

	public static boolean word2PDF(String inputFile, String pdfFile) {

		try {

			// 打开word应用程序

			ActiveXComponent app = new ActiveXComponent("Word.Application");

			// 设置word不可见

			app.setProperty("Visible", false);

			// 获得word中所有打开的文档,返回Documents对象

			Dispatch docs = app.getProperty("Documents").toDispatch();

			// 调用Documents对象中Open方法打开文档，并返回打开的文档对象Document

			Dispatch doc = Dispatch.call(docs, "Open", inputFile, false, true).toDispatch();

			// 调用Document对象的SaveAs方法，将文档保存为pdf格式

			/*
			 * 
			 * Dispatch.call(doc, "SaveAs", pdfFile, wdFormatPDF
			 * 
			 * //word保存为pdf格式宏，值为17 );
			 */

			Dispatch.call(doc, "ExportAsFixedFormat", pdfFile, wdFormatPDF );

			// 关闭文档

			Dispatch.call(doc, "Close", false);

			// 关闭word应用程序

			app.invoke("Quit", 0);

			return true;

		} catch (Exception e) {

			return false;

		}

	}

	// excel转PDF

	public static boolean excel2PDF(String inputFile, String pdfFile) {

		try {

			ActiveXComponent app = new ActiveXComponent("Excel.Application");

			app.setProperty("Visible", false);

			Dispatch excels = app.getProperty("Workbooks").toDispatch();

			Dispatch excel = Dispatch.call(excels, "Open", inputFile, false,
					true).toDispatch();

			Dispatch.call(excel, "ExportAsFixedFormat", xlTypePDF, pdfFile);

			Dispatch.call(excel, "Close", false);

			app.invoke("Quit");

			return true;

		} catch (Exception e) {

			return false;

		}

	}

	// ppt转PDF

	public static boolean ppt2PDF(String inputFile, String pdfFile) {

		try {

			ActiveXComponent app = new ActiveXComponent("PowerPoint.Application");

			// app.setProperty("Visible", mosfalse);

			Dispatch ppts = app.getProperty("Presentations").toDispatch();

			Dispatch ppt = Dispatch.call(ppts, "Open", inputFile, true, // ReadOnly

					true, // Untitled指定文件是否有标题

					false// WithWindow指定文件是否可见

					).toDispatch();

			Dispatch.call(ppt, "SaveAs", pdfFile, ppSaveAsPDF);

			Dispatch.call(ppt, "Close");

			app.invoke("Quit");

			return true;

		} catch (Exception e) {

			return false;

		}

	}
}
