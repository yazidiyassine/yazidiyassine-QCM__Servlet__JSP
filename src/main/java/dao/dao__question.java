package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.question;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/dao__question")
public class dao__question {

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
	
	public static List<question> getQuest(int id_form) throws SQLException, ClassNotFoundException {
		List<question> qust = new ArrayList<question>();
			String sql = "select  * from question where id_form=?";
			connect();
			PreparedStatement ps =  connect.prepareStatement(sql);
			ps.setInt(1,id_form);
			ResultSet res =ps.executeQuery();
			while(res.next()) {
				question quest = new question();
				quest.setId_question(res.getInt(1));
				quest.setId_form(res.getInt(2));
			    quest.setLib_quest(res.getString(3));
			    qust.add(quest);
			}
		disconnect();
		return qust;
	}
	
	
	

}
