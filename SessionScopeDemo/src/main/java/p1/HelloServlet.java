package p1;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HelloServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		List<String> friends = new ArrayList<String>();
		friends.add("Dharmendra");
		friends.add("Hema Malini");
		friends.add("Sunny Deol");
		friends.add("Bobby Deol");
		friends.add("Isha Deol");

		HttpSession session=request.getSession();
		session.setAttribute("buddies", friends);

		List<String> list = (List<String>) request.getAttribute("buddies");

		out.print("<h1>");
		out.print(list);
		out.print("</h1>");
		
		out.print("<h1>");
		out.print("<a href='/ByeServlet'> LINK </a>");
		out.print("</h1>");
	}

}
