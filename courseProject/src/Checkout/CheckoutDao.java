package Checkout;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db.DbManager;
import domain.login.Customer;

public class CheckoutDao {
	static Connection conn;
	static PreparedStatement ps;
	DbManager db = new DbManager();
	
	public int add(String title, String price, String link) {
		int status = 0;
		try{
			String k = price;
			String j = title;
			String r = link;
			conn = db.getConnection();
			ps = conn.prepareStatement("insert into cart values(?,?,?)");
			ps.setString(1, price);
			ps.setString(2, title);
			ps.setString(3, link);
			status = ps.executeUpdate();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}
}
