package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.form;

public class dao__formulaire {

	private static Connection connect=null;
	private static String url="jdbc:mysql://localhost:3306/dbqcm";
	private static String user="root";
	private static String pass="";
	private static String driver="com.mysql.jdbc.Driver";
	
	public static void connect() throws SQLException, ClassNotFoundException{
		if(connect == null || connect.isClosed()) 
		{
		try {
			Class.forName(driver);
			connect = DriverManager.getConnection(url,user,pass);
			}
		 catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	}
	
	public static void disconnect() throws SQLException
	{
		if(connect != null && !connect.isClosed())
		{
			connect.close();
		}
	}
	public static List<form> getAll() {
		List<form> lsf = new ArrayList<form>();
		String sql = "select * from form";
		
		try {
			connect();
		PreparedStatement ps;
			ps = connect.prepareStatement(sql);
		
		ResultSet res = ps.executeQuery();
		while(res.next())
		{
			form f = new form();
			f.setId_form(res.getInt(1));
			f.setLib_form(res.getString(2));
			lsf.add(f);;
		}

		disconnect();
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lsf;
	}
}
	