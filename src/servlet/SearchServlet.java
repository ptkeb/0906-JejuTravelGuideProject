package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.SightDAO;
import model.dto.SightDTO;


@WebServlet("/searchServ")
public class SearchServlet extends HttpServlet {

	protected List<SightDTO> search(String pp, String gg) {
		System.out.println("여기에서 SQL과 연결" + pp + gg);
		try {
			if (pp.equals("all")) {
				if(gg.equals("all")) {
					return SightDAO.selectAll();
				}else {
					return SightDAO.selectOnlyCategory(gg);
				}
			}else {
				if(gg.equals("all")) {
					return SightDAO.selectOnlyRegion(pp);
				}else {
					return SightDAO.selectNullString(gg, pp);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	protected List<SightDTO> searchString(String pp, String gg, String ff) {
		System.out.println("여기에서 SQL과 연결" + pp + gg + ff );
		try {
			if (pp.equals("all")) {
				if(gg.equals("all")) {
					return SightDAO.selectOnlyString(ff);
				}else {
					return SightDAO.selectRegionall(gg, ff);
				}
			}else {
				if(gg.equals("all")) {
					return SightDAO.selectCategoryall(pp, ff);
				} else {
					return SightDAO.select(pp, gg, ff);
				}
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
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
				request.setAttribute("searchResult", search(region, category));
			}else {
				System.out.println("아마도 클릭 안하신듯 / 예외처리 하세요");
			}
			
		}else {
			if(region != null) {
				out.print(region + category + search);
				request.setAttribute("searchResult", searchString(region, category, search));
			}else {
				System.out.println("아마도 클릭 안하신듯 / 예외처리 하세요");
			}
		}
		
	}
}
