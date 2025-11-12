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

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProfileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		out.print("<a href='index.html'> LOGIN </a> <br>");
		out.print("<a href='ProfileServlet'> PROFILE </a> <br>");
		out.print("<a href='LogoutServlet'> LOGOUT </a> <br>");
		HttpSession session = request.getSession(false);

		if (session != null) {
			
			out.print("<h1> WELCOME TO PROFILE </h1> <br>");
			out.print("<h1> "+ session.getAttribute("username")+ "</h1>");

		} else {
			out.print("<h1> Session Time  Expires Please Relogin Again ! </h1>");
			RequestDispatcher rd = request.getRequestDispatcher("index.html");
			rd.include(request, response);

		}

	}

}
