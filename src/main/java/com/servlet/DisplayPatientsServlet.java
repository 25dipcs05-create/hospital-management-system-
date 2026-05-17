package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.HospitalDAO;
import com.model.Patient;
@WebServlet("/patientdisplay")
public class DisplayPatientsServlet extends HttpServlet {

    HospitalDAO dao;

    public void init() {
        dao = new HospitalDAO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        System.out.println("DISPLAY SERVLET CALLED");

        List<Patient> list = dao.selectAllPatients();

        System.out.println("DATA SIZE = " + list.size());

        request.setAttribute("patientList", list);

        RequestDispatcher rd = request.getRequestDispatcher("patientdisplay.jsp");
        rd.forward(request, response);
    }
}