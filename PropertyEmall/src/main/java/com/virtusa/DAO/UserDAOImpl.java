package com.virtusa.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.virtusa.Model.RegisterModel;

public class UserDAOImpl implements UserDAO {

	static Connection con;
	static PreparedStatement ps;
	public int insertData(RegisterModel r) {
		int status=0;
		try {
			con=ConnectionProvider.getCon();
			ps=con.prepareStatement("insert into userdetails values (?,?,?,?,?);");
			ps.setString(1,r.getUsername());
			ps.setString(2,r.getEmail());
			ps.setString(3, r.getPhoneno());
			ps.setString(4,r.getPassword());
			ps.setString(5, r.getUsertype());
			status=ps.executeUpdate();
			con.close();
			
		}catch(Exception e) {
			System.out.println(e);
		}		
		return 0;
	}

	public RegisterModel getUserDetails(String email, String pass) {
		RegisterModel r=new RegisterModel();
		try {
			con=ConnectionProvider.getCon();
			ps=con.prepareStatement("select * from userdetails where email=? and password=?");
			ps.setString(1, email);
			ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				r.setUsername(rs.getString(1));
				r.setEmail(rs.getString(2));
				r.setPhoneno(rs.getString(3));
				r.setPassword(rs.getString(4));
				r.setUsertype(rs.getString(5));
			}
			
			
		}catch(Exception e) {
			System.out.println(e);
		}
		return null;
	}


}
