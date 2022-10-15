package OP;

public class Book {
	   private int Bid;
       private String Bname;
       private double Bprice;
       private int Bstock;
       public Book() {}
       public Book(int Bid,String Bname,double Bprice,int Bstock) {
    	   this.Bid=Bid;
    	   this.Bname=Bname;
    	   this.Bprice=Bprice;
    	   this.Bstock=Bstock;
       }
	public String getBname() {
		return Bname;
	}
	public void setBname(String bname) {
		Bname = bname;
	}
	public double getBprice() {
		return Bprice;
	}
	public void setBprice(double bprice) {
		Bprice = bprice;
	}
	public int getBstock() {
		return Bstock;
	}
	public void setBstock(int bstock) {
		Bstock = bstock;
	}
	public int getBid() {
		return Bid;
	}
	public void setBid(int bid) {
		Bid = bid;
	}
}
