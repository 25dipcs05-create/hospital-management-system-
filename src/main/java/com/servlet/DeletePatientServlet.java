package com.servlet;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.HospitalDAO;

@WebServlet("/deletePatient")
public class DeletePatientServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private HospitalDAO dao;

    public void init() {
        dao = new HospitalDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        dao.deletePatient(id);

        response.sendRedirect("patientdisplay");
    }
}