package jesus;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/Admin")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	String a,b;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		a = request.getParameter("name");
		b = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		 
		if(a.equalsIgnoreCase("cloud")&&b.equalsIgnoreCase("cloud"))
		{
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Welcome Mr. '"+a+"'\")");

			out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("AHome.jsp");
			rd.include(request,response);
			System.out.println("ok");
		}
		
		else
		{
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Try Again Mr. '"+a+"'\")");

			out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("Admin.jsp");
			rd.include(request,response);
			System.out.println("ok");
			
		}
		 
	}

}
