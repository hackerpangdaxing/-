package PPT2pdf;


import java.io.File;

import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.Dispatch;
import com.jacob.com.Variant;

/**
 * @author 胖大星
 *doc excl ppt转pdf
 */

public class Word2Pdf {

	static final int wdDoNotSaveChanges = 0;// 不保存待定的更改。
	static final int wdFormatPDF = 17;// word转PDF 格式
	static final int ppSaveAsPDF = 32;// ppt 转PDF 格式

	public static void main(String[] args) {
		String source1 = "C:\\Users\\胖大星\\Desktop\\test.doc";
		String source2 = "C:\\Users\\胖大星\\Desktop\\a.xls";
		String source3 = "C:\\Users\\胖大星\\Desktop\\aa.ppt";
		String target1 = "C:\\Users\\胖大星\\Desktop\\test1.pdf";
		String target2 = "C:\\Users\\胖大星\\Desktop\\test2.pdf";
		String target3 = "C:\\Users\\胖大星\\Desktop\\test3.pdf";

		Word2Pdf pdf = new Word2Pdf();

		pdf.word2pdf(source1, target1);
		pdf.excel2pdf(source2, target2);
		pdf.ppt2pdf(source3, target3);

	}

	public void word2pdf(String source, String target) {
		System.out.println("启动Word");
		long start = System.currentTimeMillis();
		ActiveXComponent app = null;
		try {
			app = new ActiveXComponent("Word.Application");
			app.setProperty("Visible", false);

			Dispatch docs = app.getProperty("Documents").toDispatch();
			System.out.println("打开文档" + source);
			Dispatch doc = Dispatch.call(docs,//
					"Open", //
					source,// FileName
					false,// ConfirmConversions
					true // ReadOnly
					).toDispatch();

			System.out.println("转换文档到PDF " + target);
			File tofile = new File(target);
			if (tofile.exists()) {
				tofile.delete();
			}
			Dispatch.call(doc,//
					"SaveAs", //
					target, // FileName
					wdFormatPDF);

			Dispatch.call(doc, "Close", false);
			long end = System.currentTimeMillis();
			System.out.println("转换完成..用时：" + (end - start) + "ms.");
		} catch (Exception e) {
			System.out.println("========Error:文档转换失败：" + e.getMessage());
		} finally {
			if (app != null)
				app.invoke("Quit", wdDoNotSaveChanges);
		}
	}

	public void ppt2pdf(String source, String target) {
		System.out.println("启动PPT");
		long start = System.currentTimeMillis();
		ActiveXComponent app = null;
		try {
			app = new ActiveXComponent("Powerpoint.Application");
			Dispatch presentations = app.getProperty("Presentations")
					.toDispatch();
			System.out.println("打开文档" + source);
			Dispatch presentation = Dispatch.call(presentations,//
					"Open", source,// FileName
					true,// ReadOnly
					true,// Untitled 指定文件是否有标题。
					false // WithWindow 指定文件是否可见。
					).toDispatch();
			System.out.println("转换文档到PDF " + target);
			File tofile = new File(target);
			if (tofile.exists()) {
				tofile.delete();
			}
			Dispatch.call(presentation,//
					"SaveAs", //
					target, // FileName
					ppSaveAsPDF);
			Dispatch.call(presentation, "Close");
			long end = System.currentTimeMillis();
			System.out.println("转换完成..用时：" + (end - start) + "ms.");
		} catch (Exception e) {
			System.out.println("========Error:文档转换失败：" + e.getMessage());
		} finally {
			if (app != null)
				app.invoke("Quit");
		}
	}

	public void excel2pdf(String source, String target) {
		System.out.println("启动Excel");
		long start = System.currentTimeMillis();
		ActiveXComponent app = new ActiveXComponent("Excel.Application"); // 启动excel(Excel.Application)
		try {
			app.setProperty("Visible", false);
			Dispatch workbooks = app.getProperty("Workbooks").toDispatch();
			System.out.println("打开文档" + source);
			Dispatch workbook = Dispatch.invoke(
					workbooks,
					"Open",
					Dispatch.Method,
					new Object[] { source, new Variant(false),
							new Variant(false) }, new int[3]).toDispatch();
			Dispatch.invoke(workbook, "SaveAs", Dispatch.Method, new Object[] {
					target, new Variant(57), new Variant(false),
					new Variant(57), new Variant(57), new Variant(false),
					new Variant(true), new Variant(57), new Variant(true),
					new Variant(true), new Variant(true) }, new int[1]);
			Variant f = new Variant(false);
			System.out.println("转换文档到PDF " + target);
			Dispatch.call(workbook, "Close", f);
			long end = System.currentTimeMillis();
			System.out.println("转换完成..用时：" + (end - start) + "ms.");
		} catch (Exception e) {
			System.out.println("========Error:文档转换失败：" + e.getMessage());
		} finally {
			if (app != null) {
				app.invoke("Quit", new Variant[] {});
			}
		}
	}
}
