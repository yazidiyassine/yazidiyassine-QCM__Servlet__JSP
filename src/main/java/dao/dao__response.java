package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.question;
import beans.reponse;

public class dao__response {

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
	public static List<reponse> getRep(int id_question) throws SQLException, ClassNotFoundException {
	List<reponse> rep = new ArrayList<reponse>();
		String sql = "select * from reponse where id_question=?";
		connect();
		PreparedStatement ps =  connect.prepareStatement(sql);
		ps.setInt(1, id_question);
		ResultSet res = ps.executeQuery();
		while(res.next()) {
			reponse rp = new reponse();
		      rp.setId_reponse(res.getInt(1));
		      rp.setId_question(res.getInt(2));
		      rp.setLib_reponse(res.getString(3));
		      rp.setCorrect(res.getBoolean(4));
		      rep.add(rp);
		}
		disconnect();
	return rep;
}
	public static boolean repCorrect(int idRep) throws ClassNotFoundException, SQLException
	{
		boolean res = false;
		String sql = "select correct from reponse where id_reponse = ?";
		connect();
		PreparedStatement ps = connect.prepareStatement(sql);
		ps.setInt(1, idRep);
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			res = rs.getBoolean(1);
		}
		disconnect();
		return res;
	}
}

