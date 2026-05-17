package com.dao;

import java.sql.*;
import java.util.*;
import com.model.Patient;

public class HospitalDAO {

    private String jdbcURL = "jdbc:mysql://localhost:3306/hospital_db_arvind";
    private String jdbcUsername = "root";
    private String jdbcPassword = "root";

    private static final String INSERT_SQL =
            "INSERT INTO Patients VALUES (?, ?, ?, ?, ?, ?, ?)";

    private static final String DELETE_SQL =
            "DELETE FROM Patients WHERE PatientID = ?";

    private static final String SELECT_ALL =
            "SELECT * FROM Patients";

    protected Connection getConnection() {
        Connection con = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    // ✅ INSERT
    public boolean insertPatient(Patient p) {

        boolean rowInserted = false;

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(INSERT_SQL)) {

            ps.setInt(1, p.getPatientID());
            ps.setString(2, p.getPatientName());
            ps.setInt(3, p.getAge());
            ps.setString(4, p.getGender());
            ps.setDate(5, p.getAdmissionDate());
            ps.setString(6, p.getAilment());
            ps.setString(7, p.getAssignedDoctor());

            rowInserted = ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return rowInserted;
    }

    // ✅ DELETE
    public boolean deletePatient(int id) {

        boolean rowDeleted = false;

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(DELETE_SQL)) {

            ps.setInt(1, id);
            rowDeleted = ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return rowDeleted;
    }

    // ✅ DISPLAY
    public List<Patient> selectAllPatients() {

        List<Patient> list = new ArrayList<>();

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(SELECT_ALL);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Patient p = new Patient(
                        rs.getInt("PatientID"),
                        rs.getString("PatientName"),
                        rs.getInt("Age"),
                        rs.getString("Gender"),
                        rs.getDate("AdmissionDate"),
                        rs.getString("Ailment"),
                        rs.getString("AssignedDoctor")
                );
                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}