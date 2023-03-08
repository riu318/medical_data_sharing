package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Prescription
 */
@WebServlet("/Prescription")
public class Prescription extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Prescription() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	String a,b,c,d,e,f,g,h,i,j,k;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		a = request.getParameter("name");
		b = request.getParameter("email");
		c = request.getParameter("problem");
		d = request.getParameter("hospital");
		e = request.getParameter("special");
		f = request.getParameter("dname");
		g = request.getParameter("medicine");
		h = request.getParameter("bp");
		i = request.getParameter("des");
		
		try 
		{
			
			
			 String am_pm;
			 java.text.DateFormat df = new java.text.SimpleDateFormat("dd MMM yyyy");
			 Calendar cal = Calendar.getInstance();
			java.text.DateFormat tim = new java.text.SimpleDateFormat("hh:mm");
			Calendar cal2 = Calendar.getInstance();
			if(cal2.get(Calendar.AM_PM) == 0) 
			 am_pm = "AM";
			 else
			 am_pm = "PM";
					
			String dt=df.format(cal.getTime());
			        
			String st =tim.format(cal2.getTime());
			String Time = st +" "+ am_pm +": "+dt;
			
			System.out.println("Date : "+dt+"       Time :  "+Time);
			
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/medical","root","ROOT");
            PreparedStatement query=con.prepareStatement("insert into prescription(pname,pemail,problem,hospital,special,dname,medicine,bp,des,date)values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+Time+"')");
			query.executeUpdate();
			
			System.out.println("Register Sucessfull ");
			
			PreparedStatement query1=con.prepareStatement("update app set status='Accept'  where pemail='"+b+"' ");
			query1.executeUpdate();
			
			PrintWriter out = response.getWriter();
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Succesfully Send Prescription\")");

			out.println("</script>");
			
			RequestDispatcher rd=request.getRequestDispatcher("DHome.jsp");
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



