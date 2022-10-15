//package OP;
//
//import java.sql.ResultSet;
//import java.sql.SQLException;
//
//public class test {
//	public static void main(String[] args) {
//		DataBase dBase=new DataBase();
//		ResultSet res = dBase.select("select * from Account");
//		try {
//			res.next();
//			System.out.print(res.getInt("ID"));
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	}
//}
