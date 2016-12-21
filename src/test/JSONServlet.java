package test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class JSONServlet extends HttpServlet {
	public JSONServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/x-json"); // 生成json文本文件
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		ArrayList<User> items = new ArrayList<User>();
		items.add(new User(2, "jack"));
		items.add(new User(2, "bob"));
		items.add(new User(2, "alex"));
		items.add(new User("title:"));
		JSONArray jsonArray = new JSONArray();

		jsonArray.addAll(items);
		out.print(jsonArray.toString());
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	public void init() throws ServletException {
		// Put your code here
	}
}