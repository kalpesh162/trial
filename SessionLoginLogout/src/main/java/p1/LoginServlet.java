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

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	response.setContentType("text/html");
	PrintWriter out=response.getWriter();
	
	out.print("<a href='index.html'> LOGIN </a> <br>");
	out.print("<a href='ProfileServlet'> PROFILE </a> <br>");
	out.print("<a href='LogoutServlet'> LOGOUT </a> <br>");
	
	String name=request.getParameter("uname");
	String pass=request.getParameter("pass");
			
	
	if(name.equals("root") && pass.equals("root")) {
		HttpSession session=request.getSession();
		session.setAttribute("username", name);
		out.print("<h1> WELCOME LOGIN SUCCESS !! </h1>");
		
	}
	else {
		out.print("<h1> Invalid Credentials Please Relogin Again !! </h1>");
		RequestDispatcher rd=request.getRequestDispatcher("index.html");
		rd.include(request, response);
		
	}
	
	}

}
