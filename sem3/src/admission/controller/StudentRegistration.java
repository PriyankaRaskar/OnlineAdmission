package admission.controller;

import java.io.IOException;
import java.sql.Date;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admission.dao.StudentDAO;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/StudentRegistration")
public class StudentRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentRegistration() {
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
		String name = request.getParameter("name");
	
		//Date dob = request.getParameter("dob");
		String mno = request.getParameter("mno");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String cet = request.getParameter("cet");
		String university = request.getParameter("university");
		String pwd = request.getParameter("pwd");
		System.out.println("name :" + name);
	//	System.out.println("Date of Birth :" + dob);
		System.out.println("Mobile no:" + mno);
		System.out.println("Email :" + email);
		System.out.println("Address :" + address);
		System.out.println("CET :" + cet);
		System.out.println("University:" + university);
		boolean status = StudentDAO.registerStudent(name,mno,email,address,cet,university,pwd);
		if (status) {
			request.setAttribute("msg","Record Insert Successfully");
			request.getRequestDispatcher("CourseDetail.jsp").forward(request, response);
		} else {

			request.setAttribute("errMsg", "some Error Occured");
			request.getRequestDispatcher("StudentRegistration.jsp").forward(request, response);
	}
	
	}

	
}

