package com.learnersacademy.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.learnersacademy.controller.Dao;

/**
 * Servlet implementation class ControllerServlet
 */
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	String code=request.getParameter("code");
	PrintWriter out=response.getWriter();
	HttpSession session=request.getSession();
	
	if(code.equals("LOGIN")) {
		
		String id=request.getParameter("aid");
		String pass=request.getParameter("apass");
		boolean status=Dao.adminLogin(id, pass);
		if(status==true) {
			
			session.setAttribute("id", id);
			response.sendRedirect("AcademyPage.jsp");
		}else {
			response.sendRedirect("Welcome.jsp"); 
		}
		
	}else if(code.equals("ASSIGNSUBJECT")) {
		
		int classid=Integer.parseInt(request.getParameter("ClassId"));
		String className=request.getParameter("ClassName");
		String subName=request.getParameter("SubName");
		
		int i=Dao.assignClasses(classid, className, subName);
		if(i>0) {
			response.sendRedirect("Assign-successful.jsp");
		}else {
			response.sendRedirect("Assign-error.jsp");
		}
	}
		else if(code.equals("ASSIGNCLASSREPORT")) {
		
		int classid=Integer.parseInt(request.getParameter("ClassId"));
		String className=request.getParameter("ClassName");
		String subName=request.getParameter("SubName");
		String techName=request.getParameter("TeacherName");
		String studentName=request.getParameter("StudentName");
		
		int i=Dao.assignclassReport(classid, className,subName,techName, studentName );
		if(i>0) {
			response.sendRedirect("Assign-successful.jsp");
		}else {
			response.sendRedirect("Assign-error.jsp");
		}
	}
		else if(code.equals("LOGOUT")) {
			String con=request.getParameter("conf");
			if(con.equalsIgnoreCase("yes")) {
			session.invalidate();
			response.sendRedirect("Welcome.jsp");}
			else {
				response.sendRedirect("AcademyPage.jsp");
			}
		}
		
	}
	
	 

}
