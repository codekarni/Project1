import java.sql.*;
import java.io.*;
import javax.sevlet.*;
import javax.servlet.http.*;
public class SeeServlet extends HttpServlet
{
	public void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOExeption
	{
		Connection con=null;
		Statement st=null;
		ResultSet rs=null;
		res.setContentTyep("text/html");
		PrintWriter pw=res.getWriter();
		pw.println("<html><head><title>Place and relax</title><link type='text/css' rel='stylesheet' href='PlaceOrder.css'></head><body><section><form action='PlaceServlet' method='post'><label>Name</label><span><input type='text' name='name' required></span><br><label>House no.,Street</label><span><input type='text' name='add1' required></span><br>");
		pw.println("<label>Colony</label><span><input type='text' name='add2' required></span><br><p>The delivery sevices are at present,present in only listed cities,sorry for inconvinience but we will soon extend service more</p><label>City</label><span><select name='add3' required><optgroup label='Rajasthan'><option value='Kota'>KOTA</option><option value='Udaipur'>UDAIPUR</option></optgroup>");
		pw.println("<optgroup label='Madhya Pradesh'><option value='Indore'>INDORE</option></optgroup></select></span><label>State</label><span><select name='add4' required><option value='Rajasthan'>Rajasthan</option><option value='Rajasthan'>Madhya Pradesh</option></select></span><label>Contact</label><span><input type='number' name='contact' required></span><label>E-mail</label><span><input type='email' name='email' required></span>");
		pw.println("<div><input type='submit' name='bx1' value='Click here'><input type='reset' name='bx2' value='Reset'><!-- Third Button is <a href=''></a> --></div></form></section></body></html>");
	}
	public void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOExeption
	{
		doGet(req,res);
	}
}