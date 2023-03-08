package jesus;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DLogin
 */
@WebServlet("/DLogin")
public class DLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DLogin() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		a=request.getParameter("name");
		b=request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","ROOT");
			PreparedStatement query=con.prepareStatement("select * from dreg where name='"+a+"' and password='"+b+"' ");
			ResultSet rs=query.executeQuery();				 
			if(rs.next())
			{
				String c=rs.getString("name");
				String d=rs.getString("email");
				String e=rs.getString("special");
				String f=rs.getString("hospital");
				String g=rs.getString("regid");

				HttpSession session=request.getSession();
				
				request.getSession(true).setAttribute("dname",c);
				request.getSession(true).setAttribute("demail",d);
				request.getSession(true).setAttribute("special",e);
				request.getSession(true).setAttribute("hospital",f);
				request.getSession(true).setAttribute("regid",g);

				
				out.println("<script type=\"text/javascript\">"); 			
				out.println("alert(\"Welcome Dr. '"+a+"'\")");

				out.println("</script>");
				RequestDispatcher rd=request.getRequestDispatcher("DHome.jsp");
				rd.include(request,response);
				System.out.println("ok");
		}
		else
		{
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Try Again. '"+a+"'\")");

			out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("DLogin.jsp");
			rd.include(request,response);
		}
		
	}
	catch (ClassNotFoundException e)
	{
		e.printStackTrace();
	} 
	catch (SQLException e) 
	{
		e.printStackTrace();
	}
	
}
	
}

