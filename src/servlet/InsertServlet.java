package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.dao.SightDAO;

/**
 * Servlet implementation class InsertServlet
 */

@WebServlet("/insertServ")
public class InsertServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("simpleName");
		String name = request.getParameter("name");
		String region = request.getParameter("region");
		String category = request.getParameter("category");
		String url = request.getParameter("imagePath");
		request.setAttribute("id", id);
		request.setAttribute("name", name);
		request.setAttribute("region", region);
		request.setAttribute("category", category);
		request.setAttribute("url", url);

		try {
			SightDAO.insert(id, name, region, category, url);
			request.getRequestDispatcher("added.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
