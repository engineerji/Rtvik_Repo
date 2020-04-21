package com.rahul.controller;

import java.io.IOException;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerServlet
 */
public class ControllerServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Scanner scn = new Scanner(System.in);
		System.out.println("Enter the number of tests :");
		int tests = scn.nextInt();
		req.setAttribute("test", tests);
		req.getRequestDispatcher("TestLists.jsp").forward(req, resp);
	}
	
}
