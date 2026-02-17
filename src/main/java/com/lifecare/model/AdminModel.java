package com.lifecare.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.lifecare.dto.Patient;

public class AdminModel {
	public static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	public static final String URL = "jdbc:mysql://localhost:3306/";
	public static final String DB_NAME = "hospital";
	public static final String USER = "root";
	public static final String PASSWORD = "Notebook@123";

	public static Connection createConnection() {
		Connection con = null;
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL + DB_NAME, USER, PASSWORD);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return con;
	}

	public int checkLogin(String u, String p) {
		int i = 0;
		try {
			Connection con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from adminlogin where name =? and password = ?");
			ps.setString(1, u);
			ps.setString(2, p);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				i = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
	
	
	

	public int patientAdmit(Patient pt) {
		int i = 0;
		try {
			Connection con = createConnection();
			PreparedStatement ps = con.prepareStatement(
					
					//"insert into petient(pid,pname,gender,age, disease, bloodgroup,mobile) values(?,?,?,?,?,?)");
					
					"insert into pattients(pname,gender,age, disease, bloodgroup,mobile) values(?,?,?,?,?,?)");

					
//					"insert into patient(pname,gender,age, disease, bloodgroup,mobile) values(?,?,?,?,?,?)");
			
			
			
			ps.setString(1, pt.getName());
			ps.setString(2, pt.getGender());
			ps.setInt(3, pt.getAge());
			ps.setString(4, pt.getDisease());
			ps.setString(5, pt.getBloodGroup());
			ps.setString(6, pt.getMobile());

			i = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	
	
	public ArrayList<Patient> getAllPatients() {
		ArrayList<Patient> al = new ArrayList<Patient>();
		Connection con = null;
		try {
			con = createConnection();
			PreparedStatement ps = con.prepareStatement("select * from pattients");

			
//			PreparedStatement ps = con.prepareStatement("select * from patient");
			
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
//				Patient	pt = new Patient(rs.getString("pname"), rs.getString("gender"), rs.getInt("age"),
//						rs.getString("disease"), rs.getString("bloodgroup"), rs.getString("mobile"));
//				pt.setId(rs.getInt("pid"));
//				
				
				Patient pt = new Patient(rs.getString("pname"), rs.getString("gender"), rs.getInt("age"),
						rs.getString("disease"), rs.getString("bloodgroup"), rs.getString("mobile"));
				al.add(pt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return al;
	}
	
	

	public int deleteRecord(int id) {
		int i = 0;
		try {
			Connection con = createConnection();
			PreparedStatement ps = con.prepareStatement("delete from pattients where pid = ?");

			
//			PreparedStatement ps = con.prepareStatement("delete from patient where pid = ?");
			
			ps.setInt(1, id);
			i = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	
	
	public Patient getPatientRecord(int id) {
		Patient pt = null;
		Connection con = null;
		try {
			con = createConnection();
			
//			PreparedStatement ps = con.prepareStatement("select * from patient where pid = ?");
			
			
			
			PreparedStatement ps = con.prepareStatement("select * from pattients where pid = ?");

			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				pt = new Patient(rs.getString("pname"), rs.getString("gender"), rs.getInt("age"),
						rs.getString("disease"), rs.getString("bloodgroup"), rs.getString("mobile"));
				pt.setId(rs.getInt("pid"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return pt;
	}

	public int updateRecord(Patient pt) {
		int i=0;
		try {
			Connection con = createConnection();
			PreparedStatement ps = con.prepareStatement(
					
					
//					"update patient set pname=?, gender = ?, age=?, disease=?, bloodgroup=?, mobile=? where pid = ?");
					
					
					"update pattients set pname=?, gender = ?, age=?, disease=?, bloodgroup=?, mobile=? where pid = ?");

					
			ps.setString(1, pt.getName());
			ps.setString(2, pt.getGender());
			ps.setInt(3, pt.getAge());
			ps.setString(4, pt.getDisease());
			ps.setString(5, pt.getBloodGroup());
			ps.setString(6, pt.getMobile());
			ps.setInt(7, pt.getId());

			i = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return i;
	}

}
