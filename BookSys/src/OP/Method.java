package OP;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Exchanger;

public class Method {
	//用户登录校验方法
		public int checkLogin(String name, String pass) {
			DataBase db=new DataBase();
			int re=3;
			String upass="";
			ResultSet res = db.select("select PassWord from Account where UserName='" + name + "'");
			try {
				while (res.next()) {
					upass = res.getString("PassWord");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if (upass.equals("") || upass.equals(null)) {//用户名不存在！
				re = 0;
			} else if (upass.equals(pass)) {//登录成功
				re = 1;
			} else {//用户名或密码错误！
				re = 2;
			}
			return re;
		}

	//获取所有图书
		public List<Book> showAll(){
			DataBase db=new DataBase();
			ResultSet res=db.select("select * from Book");
			List<Book> booklist=new ArrayList<Book>();
			try {
				while(res.next()){
					Book b=new Book();
					b.setBid(res.getInt("Bid"));
					b.setBname(res.getString("Bname"));
					b.setBprice(res.getFloat("Bprice"));
					b.setBstock(res.getInt("Bstock"));
					booklist.add(b);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return booklist;
		}

		//获取查询条件图书
		public List<Book> showSelect(String col,String choice){
			if(col.equals(null) || choice.equals(null)){
				return showAll();
			}else{DataBase db=new DataBase();
			ResultSet res=db.select("select * from Book where "+col+"='"+choice+"'");
			List<Book> booklist=new ArrayList<Book>();
			try {
				while(res.next()){
					Book b=new Book();
					b.setBid(res.getInt("Bid"));
					b.setBname(res.getString("Bname"));
					b.setBprice(res.getFloat("Bprice"));
					b.setBstock(res.getInt("Bstock"));
					booklist.add(b);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return booklist;}
				
			
		}
		
		//新增图书
		public void addBook(String bid,String bn,String bp,String bs){
			DataBase db=new DataBase();
			db.update("insert into Book(Bname,Bprice,Bstock) values('"+bn+"',"+bp+","+bs+")");
		}
		
		//删除图书
		public void delBook(String bid){
			DataBase db=new DataBase();
			db.update("delete from Book where Bid="+bid);
		}
		
		//更新图书
		public void updBook(String check,String col,String text){
			DataBase db=new DataBase();
			db.update("update Book set "+col+"="+check+" where Bid="+text);
		}
		
		
		
}
