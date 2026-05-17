package com.servlet;

import java.io.IOException;
import java.sql.Date;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.HospitalDAO;
import com.model.Patient;

@WebServlet("/updatePatient")
public class UpdatePatientServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private HospitalDAO dao;

    public void init() {
        dao = new HospitalDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("patientID"));
        String name = request.getParameter("patientName");
        int age = Integer.parseInt(request.getParameter("age"));
        String gender = request.getParameter("gender");
        Date date = Date.valueOf(request.getParameter("admissionDate"));
        String ailment = request.getParameter("ailment");
        String doctor = request.getParameter("assignedDoctor");

        Patient p = new Patient(id, name, age, gender, date, ailment, doctor);

        dao.updatePatient(p);

        response.sendRedirect("patientdisplay");
    }
}