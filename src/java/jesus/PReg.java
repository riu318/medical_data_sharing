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
import com.EncryptDecrypt;

/**
 * Servlet implementation class PReg
 */
@WebServlet("/PReg")
public class PReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PReg() {
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
		b=request.getParameter("password");
		
		c=request.getParameter("dob");
		d=request.getParameter("age");
		e=request.getParameter("sex");
		f=request.getParameter("marital");
		g=request.getParameter("mobile");
		h=request.getParameter("email");
		i=request.getParameter("address");
		j=request.getParameter("country");
		
		k=request.getParameter("state");
		l=request.getParameter("city");
		m=request.getParameter("pin");
		String nn=request.getParameter("number");
		o=request.getParameter("number1");
		 
		if(nn.equals(o))
		{
			try 
			{
				
				
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","ROOT");
				PreparedStatement query=con.prepareStatement("insert into preg(name,password,dob,age,sex,marital,mobile,email,address,country,state,city,pin,answer)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+k+"','"+l+"','"+m+"','"+o+"')");
				query.executeUpdate();
				
				System.out.println("Register Sucessfull ");
				
				EncryptDecrypt js = new EncryptDecrypt();
				
				 
				String bb=js.Encrypt(b);
				String cc=js.Encrypt(c);
				String dd=js.Encrypt(d);
				String ee=js.Encrypt(e);
				String ff=js.Encrypt(f);
				String gg=js.Encrypt(g);
				 
				String ii=js.Encrypt(i);
				String jj=js.Encrypt(j);
				String kk=js.Encrypt(k);
				String ll=js.Encrypt(l);
				String mm=js.Encrypt(m);
				
				
				PreparedStatement query1=con.prepareStatement("insert into enc(name,password,dob,age,sex,marital,mobile,email,address,country,state,city,pin,answer)values('"+a+"','"+bb+"','"+cc+"','"+dd+"','"+ee+"','"+ff+"','"+gg+"','"+h+"','"+ii+"','"+jj+"','"+kk+"','"+ll+"','"+mm+"','"+o+"')");
				query1.executeUpdate();
				
				PrintWriter out = response.getWriter();
				out.println("<script type=\"text/javascript\">"); 			
				out.println("alert(\"Succesfully Register\")");

				out.println("</script>");
				
				RequestDispatcher rd=request.getRequestDispatcher("index.html");
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
		else
		{
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Verification Answer False\")");

			out.println("</script>");
			
			RequestDispatcher rd=request.getRequestDispatcher("index.html");
			rd.include(request,response);
			
		}

		
		

	}
}


