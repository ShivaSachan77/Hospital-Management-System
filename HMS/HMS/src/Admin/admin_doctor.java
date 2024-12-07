package Admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import con.Conn;
import dao.SingupDao;
import entities.Student;

/**
 * Servlet implementation class admin_doctor
 */
@WebServlet("/admin_doctor")
public class admin_doctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admin_doctor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		response.setContentType("text/html");
		String name=request.getParameter("user");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		String state=request.getParameter("state");
		String cour=request.getParameter("course");
		
		
		PrintWriter out=response.getWriter();
		int i=0;
		try{
			Connection ds=Conn.getCon();
			
			String ins ="insert into reg(name,email,pass,state,course)values(?,?,?,?,?)";
	        PreparedStatement ps=ds.prepareStatement(ins);
			
		
		    Student student = new Student();
		   student.setUser(name);
		   student.setEmail(email);
		   student.setPass(pass);
		   student.setState(state);
		   student.setCourse(cour);
		
		   
			SingupDao signupDao = new SingupDao();
			try{
				 signupDao.insertData(student);
				 response.sendRedirect("Read");
				
			}
			catch (Exception e)
			{
				e.printStackTrace();
				out.println("<center><h1>somthin is worng </h1></center>");
				RequestDispatcher rd =request.getRequestDispatcher("Signup.html");
				rd.include(request, response);
			}
	    }catch(Exception e){
	    	e.printStackTrace();
	    	}
	    }
	}

}
