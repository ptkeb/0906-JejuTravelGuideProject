package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/searchServ")
public class SearchServlet extends HttpServlet {

	protected void search(String pp, String gg) {
		System.out.println("여기에서 SQL과 연결" + pp + gg);
	}
	
	protected void searchString(String pp, String gg, String ff) {
		System.out.println("여기에서 SQL과 연결" + pp + gg + ff );
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");	
		PrintWriter out = response.getWriter();
		
		String region = request.getParameter("region");
		String category = request.getParameter("category");
		String search = request.getParameter("searchString");
		
		if(search == null) {
			if(region != null) {
				out.print(region + category);
				search(region, category);
			}else {
				System.out.println("아마도 클릭 안하신듯 / 예외처리 하세요");
			}			
		}else {
			if(region != null) {
				out.print(region + category + search);
				searchString(region, category, search);
			}else {
				System.out.println("아마도 클릭 안하신듯 / 예외처리 하세요");
			}
		}
		
		
		
		
		
	}

}
