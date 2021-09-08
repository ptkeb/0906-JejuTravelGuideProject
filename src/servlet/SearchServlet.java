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

// search controller
@WebServlet("/searchServ")
public class SearchServlet extends HttpServlet {

	protected List<SightDTO> search(String region, String category) {
		System.out.println("여기에서 SQL과 연결" + region + category);
		try {
			if (region.equals("all")) {
				if(category.equals("all")) {
					return SightDAO.selectAll();
				}else {
					return SightDAO.selectOnlyCategory(category);
				}
			}else {
				if(category.equals("all")) {
					return SightDAO.selectOnlyRegion(region);
				}else {
					return SightDAO.selectNullString(category, region);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	protected List<SightDTO> searchString(String region, String category, String searchString) {
		System.out.println("여기에서 SQL과 연결" + region + category + searchString );
		try {
			if (region.equals("all")) {
				if(category.equals("all")) {
					return SightDAO.selectOnlyString(searchString);
				}else {
					return SightDAO.selectRegionall(category, searchString);
				}
			}else {
				if(category.equals("all")) {
					return SightDAO.selectCategoryall(region, searchString);
				} else {
					return SightDAO.select(region, category, searchString);
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
		
		
		if(search == "") {
			if(region != null) {
				out.print(region + category);
				request.setAttribute("searchResult", search(region, category));
				out.print(search(region, category));
				request.getRequestDispatcher("searchData.jsp").forward(request, response);
				// dispatcher로 다음 페이지로 데이터 이동
			}else {
				System.out.println("아마도 클릭 안하신듯 / 예외처리 하세요");
			}
			
		}else {
			if(region != null) {
				out.print(region + category + search);
				request.setAttribute("searchResult", searchString(region, category, search));
				out.print(searchString(region, category, search));
				request.getRequestDispatcher("searchData.jsp").forward(request, response);
			}else {
				System.out.println("아마도 클릭 안하신듯 / 예외처리 하세요");
			}
		}
		
	}
}
