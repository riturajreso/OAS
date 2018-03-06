    import java.io.*;
    import javax.servlet.*;
    import javax.servlet.http.*;
    @SuppressWarnings("serial")
	public class Testservlet1 extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    // Initialize some variables
    HttpSession session = request.getSession(true);
    String userText = request.getParameter("student");
    session.setAttribute("myText", userText);
    RequestDispatcher rd = request.getRequestDispatcher("/../OAS/WebContent/student_list.jsp");
    rd.forward(request, response);
    }
    }
    