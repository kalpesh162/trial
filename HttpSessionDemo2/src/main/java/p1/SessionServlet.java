package p1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet("/SessionServlet")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SessionServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		out.print("<h1>" + "Welcome " + "</h1> ");
		out.print("<hr>");

		// How To Create Session

		HttpSession session = request.getSession(false);

		if (session != null) {

		} else {

			// session.isNew();
			session = request.getSession();

		}

		out.print("<h1>  Session Id               " + session.getId() + "  </h1> <hr>");
		out.print("<h1>  Session Creation Time   " + session.getCreationTime() + "  </h1> <hr>");

		out.print("<h1>  Session Creation Time   " + new Date(session.getCreationTime()) + "  </h1> <hr>");

		out.print("<h1>  Session LastAccess Time   " + new Date(session.getLastAccessedTime()) + "  </h1> <hr>");

		out.print("<h1>  Session GET MAX Time   " + session.getMaxInactiveInterval() + "  </h1> <hr>");

		session.setMaxInactiveInterval(60);

	}

}
