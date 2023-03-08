package jesus;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DReg
 */
@WebServlet("/DReg")
public class DReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DReg() {
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
	String a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		a=request.getParameter("name");
		b=request.getParameter("email");
		c=request.getParameter("password");
		d=request.getParameter("dob");
		e=request.getParameter("age");
		f=request.getParameter("sex");
		g=request.getParameter("marital");
		h=request.getParameter("speciallist");
		i=request.getParameter("hospital");
		j=request.getParameter("mobile");
		
		k=request.getParameter("address");
		l=request.getParameter("city");
		m=request.getParameter("pin");
		n=request.getParameter("country");
		o=request.getParameter("state");
		p=request.getParameter("reg");
		 
		

		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","ROOT");
			PreparedStatement query=con.prepareStatement("insert into dreg(name,email,password,dob,age,sex,marital,special,hospital,mobile,address,city,pin,country,state,regid)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"','"+n+"','"+o+"' ,'"+p+"')");
			query.executeUpdate();
			
			System.out.println("Register Sucessfull ");
			
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Succesfully Register\")");

			out.println("</script>");
			
			RequestDispatcher rd=request.getRequestDispatcher("AHome.jsp");
			rd.include(request,response);
			
			
				
		}
		 	
		catch (ClassNotFoundException w) 
		{			
			w.printStackTrace();
		}
		catch (SQLException w) 
		{			
			w.printStackTrace();
		}

	}
}


