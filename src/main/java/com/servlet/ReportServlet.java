package com.servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.dao.HospitalDAO;
import com.model.Patient;

@WebServlet("/report")
public class ReportServlet extends HttpServlet {
    private HospitalDAO dao;

    public void init() {
        dao = new HospitalDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String type = request.getParameter("type");
        List<Patient> list = null;

        if ("date".equals(type)) {
            Date start = Date.valueOf(request.getParameter("start"));
            Date end = Date.valueOf(request.getParameter("end"));
            list = dao.getPatientsByDate(start, end);

        } else if ("ailment".equals(type)) {
            String val = request.getParameter("value");
            list = dao.getPatientsByAilment(val);

        } else if ("doctor".equals(type)) {
            String val = request.getParameter("value");
            list = dao.getPatientsByDoctor(val);
        }

        request.setAttribute("patientList", list);
        RequestDispatcher rd = request.getRequestDispatcher("report_result.jsp");
        rd.forward(request, response);
    }
}