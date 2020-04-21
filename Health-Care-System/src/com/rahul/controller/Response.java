package com.rahul.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Response
 */
public class Response extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out = resp.getWriter();
		List<String> testList= new ArrayList<String>();
		int number = Integer.parseInt(req.getParameter("numberoftests"));
		//int number= (Integer)req.getAttribute("tests");
		for(int i=1;i<=number;i++) {
			testList.add(req.getParameter("test"+i));
		}
		out.print(testList);
	}
	
}
