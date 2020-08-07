package com.virtusa.DAO;
import com.virtusa.Model.*;
public interface UserDAO {

	public int insertData(RegisterModel r);
	public RegisterModel getUserDetails(String email,String pass);
}
