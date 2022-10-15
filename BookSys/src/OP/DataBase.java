package OP;

import java.sql.*;


public class DataBase {
		   Statement sql=null;
		   static Connection con=null;
		  ResultSet rs=null;
		  PreparedStatement ps=null;
	   public DataBase() {
		   String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";//数据库引擎
		   String uri="jdbc:sqlserver://localhost:1433;DatabaseName=图书管理系统";
		   String Name="sa";
		   String passWord="159753456ffsail";
		   try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			con=DriverManager.getConnection(uri, Name, passWord);
			System.out.println("数据库连接成功了！");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			System.out.println("数据库连接失败了！");
		}
		   
	   }//main
	   
	 //返回SQL语句结果(finish)
	   public ResultSet select(String selectSQL){
		   try{
			   ps=con.prepareStatement(selectSQL);
		       rs=ps.executeQuery();
		   }catch(Exception e){
		    e.printStackTrace();
		   }
		   return rs;
		  }//getRS
	   
	   //增改
	   public void update(String sql){
		   int r=0;
	       try {
	    	   ps=con.prepareStatement(sql);
			   r=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   }
	   
	   //删除
	   public void delete(String sql){
		   int r=0;
	       try {
	    	   ps=con.prepareStatement(sql);
			   r=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   }
	   
}
