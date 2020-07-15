<%@ page contentType="text/html; charset=utf-8" language="java" 
import="java.sql.*,javax.mail.*,javax.mail.internet.*,java.util.*,java.io.*,javax.activation.*,java.net.*,javax.servlet.http.*,com.sun.net.ssl.internal.www.protocol.https.*,java.security.Security" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<%@ page import="java.sql.*" %>
<%

Connection con=null;
		Cookie jol[]=request.getCookies();
		int ip=1,counter=9,fun=0,checkfun=0,sum=0,sum1=0,sum2=0,yt=0,counterfun=87,orderid=0,cell=0,halco=0,fela=0,opk=0;
		int checker=0,gella=0,trust=0;
		Statement st=null,st1=null,st2=null,st3=null,st4=null,st5=null;
		ResultSet rs=null,rs1=null,rs2=null,rs3=null,rs4=null,rs5=null;
		Cookie cko[]=request.getCookies();
		int authenticity=0;
		String nella="";
		Cookie ck[]=null;
		
String a=request.getParameter("image");
String b=request.getParameter("type");
String c=request.getParameter("color");
		String d=request.getParameter("name");
		String e=request.getParameter("add1");
		String f=request.getParameter("add2");
		String g=request.getParameter("add3");
		String h=request.getParameter("add4");
		String i=request.getParameter("contact");
		String j=request.getParameter("email");
		String k=request.getParameter("quantity");
		String l=request.getParameter("cost");
		String hg=request.getParameter("cart");
		String ok1=request.getParameter("OTP");
		String ok3=null,ok4=null,ok8="";
		int ok5=0,ok6=0,ok7=0,oks=0;
		if(ok1!=null&&!ok1.equals(""))
			oks=Integer.parseInt(ok1);
		String ok2=request.getParameter("resend");
		String v=null,q=null,gg=null,hh=null,jj=null,mes=null,gol=null,percost="",loc=null;
		String cost="",type="",color="",quantity="",sum1d=null,opd=null,sent="",deliver="";
		String body="";
		Cookie fat[]=request.getCookies();
		int uy=0,op=0;
		if(cko!=null)
		{
			for(int lo=0;lo<cko.length;lo++)
			{
				v=cko[lo].getName();
				if(v.equals("authentic"))
				{
					loc=cko[lo].getValue();
					authenticity=Integer.parseInt(loc);
					gella=authenticity+1;
					out.println("okcheck"+"	  "+authenticity);
					cko[lo].setMaxAge(0);
					response.addCookie(cko[lo]);
					Cookie ji=new Cookie("authentic","10");
					ji.setMaxAge(-515);
					response.addCookie(ji);
					nella=gella+"";
					cko[lo].setValue(nella);
					break;
				}
			}
		}
				
		int lp=0,quan=0,cos=0,toco=0,ic=0;
		
	
		int totalcost=0;
		totalcost=uy*op;
		out.println("<html><head><title>Pleasure you preffered us</title></head><body bgcolor='pink'>");
		if(authenticity==1)
		{
			Random rd=new Random();
			trust=rd.nextInt(1000);
			nella=""+trust;
			ok8="The OTP for placing order at GK's Collection is "+trust;
			Cookie cid=new Cookie("CheckUser",nella);
			cid.setMaxAge(-654564);
			response.addCookie(cid);
			try
				{
					String toa=j;
							String []to=toa.split(",");
							String sub="Check OTP";
							
							
				Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
				String host = "smtp.gmail.com";//GOOGLE SERVER NAME....
				String from1 = "singhkarni669@gmail.com";//THIS GMAIL ID WILL SEND MAIL....
					String pass = "123iamkarni123";//THIS IS PASSWORD OF SPECIFIED ID....
					Properties props = System.getProperties();
					props.put("mail.smtp.starttls.enable", "true"); // IF IT IS TRUE ONLY THEN EMAIL WILL BE //SENT....
					props.put("mail.smtp.host", host);
					props.put("mail.smtp.user", from1);
					props.put("mail.smtp.password", pass);
				props.put("mail.smtp.port", "587");//ASSIGN A PORT THROUGH WHICH ALL WORKING IS //DONE....
					props.put("mail.smtp.auth", "true");//MAKE AUTHORIZATION TRUE....
				 
					
					Session session1 = Session.getInstance(props,null);
				/*    Session session1 =    Session.getDefaultInstance(props,
							new javax.mail.Authenticator() {
								protected PasswordAuthentication getPasswordAuthentication() {
									return new PasswordAuthentication("username","pwd");
								}
							});*/

					MimeMessage message = new MimeMessage(session1);//THIS WILL BE USED TO ATTACH A //FILE LATER....
					message.setFrom(new InternetAddress(from1));
				 
					InternetAddress[] toAddress = new InternetAddress[to.length];
				 
					//TO GET THE ADDRESS OF ARRAY....
					for( int io=0; io < to.length; io++ ) 
					{ 
						toAddress[io] = new InternetAddress(to[io]);
					}
					//System.out.println(Message.RecipientType.TO);
				 //THIS WILL READ THE ADDRESSES ONE BY ONE WHICH ARE SPECIFIED TO SEND MAIL....
					for( int io=0; io < toAddress.length; io++)
					{ 
						message.addRecipient(Message.RecipientType.TO, toAddress[io]);
					}
					message.setSubject(sub);
					message.setText(ok8);
				out.println("hello1");    
				Transport transport = session1.getTransport("smtp");
				//Transport transport = new SMTPTransport(mailSession,new URLName("localhost"));

				out.println("hello2");    
				transport.connect(host, from1, pass);

				out.println("hello3");    
				transport.sendMessage(message, message.getAllRecipients());
					transport.close();
				   
					
					
					}
					catch(Exception ew)
					{
						out.println(ew);
						}
					%><h1>An OTP is sent to your mail,kindly enter the OTP below</h1>
					<form action="mailing.jsp"><input type="hidden" name="image" value="<%=a%>"><input type="hidden" name="type" value="<%=b%>"><input type="hidden" name="color" value="<%=c%>">
					<input type="hidden" name="name" value="<%=d%>"><input type="hidden" name="add1" value="<%=e%>"><input type="hidden" name="add2" value="<%=f%>"><input type="hidden" name="add3" value="<%=g%>">
					<input type="hidden" name="add4" value="<%=h%>"><input type="hidden" name="contact" value="<%=i%>"><input type="hidden" name="email" value="<%=j%>"><input type="hidden" name="quantity" value="<%=k%>">
					<input type="hidden" name="cost" value="<%=l%>"><input type="hidden" name="cart" value="<%=hg%>"><label>OTP</label>
					<input type="number" name="OTP" ><input type="submit" value="submit"><input type="submit" name="resend" value="resend">
					</form><%
		}
		else
		{
			out.println("hi1");
			if(ok2!=null)
			{
				out.println("hi2"+"	"+ok2);
				Random rd=new Random();
			trust=rd.nextInt(1000);
			if(fat!=null)
		{
			for(int lo=0;lo<fat.length;lo++)
			{
				v=fat[lo].getName();
				if(v.equals("CheckUser"))
				{
					fat[lo].setMaxAge(0);
					response.addCookie(fat[lo]);
				}
			}
		}
			nella=""+trust;
			ok8="The OTP for placing order at GK's Collection is "+trust;
			Cookie cid=new Cookie("CheckUser",nella);
			cid.setMaxAge(-654564);
			response.addCookie(cid);
			try
				{
					String toa=j;
							String []to=toa.split(",");
							String sub="Check OTP";
							
							
				Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
				String host = "smtp.gmail.com";//GOOGLE SERVER NAME....
				String from1 = "singhkarni669@gmail.com";//THIS GMAIL ID WILL SEND MAIL....
					String pass = "123iamkarni123";//THIS IS PASSWORD OF SPECIFIED ID....
					Properties props = System.getProperties();
					props.put("mail.smtp.starttls.enable", "true"); // IF IT IS TRUE ONLY THEN EMAIL WILL BE //SENT....
					props.put("mail.smtp.host", host);
					props.put("mail.smtp.user", from1);
					props.put("mail.smtp.password", pass);
				props.put("mail.smtp.port", "587");//ASSIGN A PORT THROUGH WHICH ALL WORKING IS //DONE....
					props.put("mail.smtp.auth", "true");//MAKE AUTHORIZATION TRUE....
				 
					
					Session session1 = Session.getInstance(props,null);
				/*    Session session1 =    Session.getDefaultInstance(props,
							new javax.mail.Authenticator() {
								protected PasswordAuthentication getPasswordAuthentication() {
									return new PasswordAuthentication("username","pwd");
								}
							});*/

					MimeMessage message = new MimeMessage(session1);//THIS WILL BE USED TO ATTACH A //FILE LATER....
					message.setFrom(new InternetAddress(from1));
				 
					InternetAddress[] toAddress = new InternetAddress[to.length];
				 
					//TO GET THE ADDRESS OF ARRAY....
					for( int io=0; io < to.length; io++ ) 
					{ 
						toAddress[io] = new InternetAddress(to[io]);
					}
					//System.out.println(Message.RecipientType.TO);
				 //THIS WILL READ THE ADDRESSES ONE BY ONE WHICH ARE SPECIFIED TO SEND MAIL....
					for( int io=0; io < toAddress.length; io++)
					{ 
						message.addRecipient(Message.RecipientType.TO, toAddress[io]);
					}
					message.setSubject(sub);
					message.setText(ok8);
				out.println("hello1");    
				Transport transport = session1.getTransport("smtp");
				//Transport transport = new SMTPTransport(mailSession,new URLName("localhost"));

				out.println("hello2");    
				transport.connect(host, from1, pass);

				out.println("hello3");    
				transport.sendMessage(message, message.getAllRecipients());
					transport.close();
				   
					
					
					}
					catch(Exception ew)
					{
						out.println(ew);
						}
					%><h1>An OTP is sent to your mail,kindly enter the OTP below</h1>
					<form action="mailing.jsp"><input type="hidden" name="image" value="<%=a%>"><input type="hidden" name="type" value="<%=b%>"><input type="hidden" name="color" value="<%=c%>">
					<input type="hidden" name="name" value="<%=d%>"><input type="hidden" name="add1" value="<%=e%>"><input type="hidden" name="add2" value="<%=f%>"><input type="hidden" name="add3" value="<%=g%>">
					<input type="hidden" name="add4" value="<%=h%>"><input type="hidden" name="contact" value="<%=i%>"><input type="hidden" name="email" value="<%=j%>"><input type="hidden" name="quantity" value="<%=k%>">
					<input type="hidden" name="cost" value="<%=l%>"><input type="hidden" name="cart" value="<%=hg%>"><label>OTP</label>
					<input type="number" name="OTP" ><input type="submit" value="submit"><input type="submit" name="resend" value="resend">
					</form><%
		}
		else
		{
			out.println("ok1");
				if(fat!=null)
				{
					out.println("ok2");
					for(int lo=0;lo<fat.length;lo++)
					{
						v=fat[lo].getName();
						if(v.equals("CheckUser"))
						{
							out.println("ok3");
							ok3=fat[lo].getValue();
							ok5=Integer.parseInt(ok3);
							out.println(ok3+"	"+ok5);
							if(oks==ok5)
							{checker=1;
								break;
							}
							break;
						}
					}
				}
				if(checker!=1)
				{
					%><h1>Wrong OTP entered,enter correct OTP</h1>
				
					<form action="mailing.jsp"><input type="hidden" name="image" value="<%=a%>"><input type="hidden" name="type" value="<%=b%>"><input type="hidden" name="color" value="<%=c%>">
					<input type="hidden" name="name" value="<%=d%>"><input type="hidden" name="add1" value="<%=e%>"><input type="hidden" name="add2" value="<%=f%>"><input type="hidden" name="add3" value="<%=g%>">
					<input type="hidden" name="add4" value="<%=h%>"><input type="hidden" name="contact" value="<%=i%>"><input type="hidden" name="email" value="<%=j%>"><input type="hidden" name="quantity" value="<%=k%>">
					<input type="hidden" name="cost" value="<%=l%>"><input type="hidden" name="cart" value="<%=hg%>"><label>OTP</label>
					<input type="number" name="OTP" ><input type="submit" value="submit"><input type="submit" name="resend" value="resend">
					</form><%
				}
		}
			}
	
		if(checker==1)
		{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/saree","root","");
		}
		catch(ClassNotFoundException e1)
		{
			out.println(e1);
		}
		catch(SQLException e2)
		{
			out.println(e2);
		}
		try
		{
			st4=con.createStatement();
			rs5=st4.executeQuery("select * from orderid");
			rs5.next();
			orderid=rs5.getInt(1);
			cell=orderid+1;
			for(yt=0;yt<jol.length;yt++)
				{
					mes=jol[yt].getName();
					if(mes.equals("CheckFun"))
					{
						gol=jol[yt].getValue();
						fun=1;
						break;
					}
				}
				if(fun==1)
				{
					if(gol.equals("yes"))
					{
						checkfun=1;
					}
				}
				out.println("hello1");
			if(hg.equals("yes"))
			{
				
				ck=request.getCookies();
				for(ic=0;ic<ck.length;ic++)
				{
					
					v=ck[ic].getName();
					if(v.equals("GKShop"))
					{
					
						q=ck[ic].getValue();
						lp=Integer.parseInt(q);
						counter=1;
						
						break;
					}
				}
				if(counter==1)
				{
				
					st4=con.createStatement();
					st=con.createStatement();
					st1=con.createStatement();
					st2=con.createStatement();
					rs=st4.executeQuery("select * from temp where customerid='"+lp+"'");
					while(rs.next())
					{
					
						gg=rs.getString(2);
						hh=rs.getString(3);
						jj=rs.getString(4);
						cos=rs.getInt(5);
						halco=1;
						quan=rs.getInt(6);
						toco=rs.getInt(7);
						
						rs3=st1.executeQuery("select * from sareesinfo where image_name='"+gg+"' and type='"+hh+"' and color='"+jj+"' and cost='"+cos+"'");
						rs3.next();
						
						
						int m=rs3.getInt(4);
						m=m-quan;
						
						st2.executeUpdate("update sareesinfo set quantity='"+m+"' where image_name='"+gg+"' and type='"+hh+"' and color='"+jj+"'");
						type=type+"+"+hh;
					
						color=color+"+"+jj;
						cost=cost+"+"+cos;
						quantity=quantity+"+"+quan;
						totalcost=totalcost+toco;
						percost=percost+"+"+cos;
					}
					rs1=st.executeQuery("select * from deliveryboy where status='free'");
				if(halco==1)
				{
				if(rs1.next())
				{
					
					int jk=rs1.getInt(5);
					int yr=rs1.getInt(7);
					yr++;
					int n=rs1.getInt(3);
					String o=rs1.getString(1);
					
					
					sum1=totalcost;
					if(checkfun==1)
						totalcost=totalcost-(int)10/100*totalcost;
				
					st1.executeUpdate("insert into deliverystatus (orderid,issue_date,deliveryboy,deliverboyid,cost,deliver_status) values('"+orderid+"',CURDATE(),'"+o+"','"+jk+"','"+totalcost+"','notdone')");
					
					ip++;
					
					
					st.executeUpdate("insert into orders (name,housetreet,colony,city,state,contact,email,cost,type,color,quantity) values('"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+totalcost+"','"+type+"','"+color+"','"+quantity+"','"+percost+"')");
					st4.executeUpdate("update orderid set orderid='"+cell+"' where orderid='"+orderid+"'");
					out.println("<h1><center>We are Thankful to you that you prefferd us and we will assure that you will have no complains from our side and you will be having a memorable journey with us</h1>");
					if(checkfun==1)
					{
						out.println("<h1>Your orderid is "+orderid+",Your order will reach you within 5 days by deliveryboy "+o+" with contact number "+n+",with total bill amounting to "+sum1+"->"+totalcost+"rs. ,the 10% discount is specially offered to you on being funtoo member, and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change</h1></center>");
						body="Your orderid is "+orderid+",with sarees of type="+type+",color="+color+",quantity="+quantity+" and per item cost="+percost+"Your order will reach you within 5 days by deliveryboy "+o+" with contact number "+n+",with total bill amounting to "+sum1+"->"+totalcost+"rs. ,the 10% discount is specially offered to you on being funtoo member, and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change";
					}
					else
					{
					out.println("<h1>Your orderid is "+orderid+",Your order will reach you within 5 days by deliveryboy "+o+" with contact number "+n+",with total bill amounting to "+totalcost+"rs. and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change</h1></center>" );
					body="Your orderid is "+orderid+",with sarees of type="+type+",color="+color+",quantity="+quantity+" and per item cost="+percost+"Your order will reach you within 5 days by deliveryboy "+o+" with contact number "+n+",with total bill amounting to "+totalcost+" and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change";
					}
					st1.executeUpdate("update deliveryboy set tasksonhand='"+yr+"' ,status='busy' where deliveryboyid='"+jk+"'");
			
					ck[ic].setMaxAge(0);
					jol[yt].setMaxAge(0);
				}
				else
				{
				
					rs2=st.executeQuery("select min(tasksonhand) from deliveryboy where status='available'");
					
					if(rs2.next())
					{
					
						int ac=rs2.getInt(1);
			
						rs=st1.executeQuery("select * from deliveryboy where tasksonhand='"+ac+"' and status='available'");
						rs.next();
						
						int jk=rs.getInt(5);
						int yr=rs.getInt(7);
						yr++;
						sent=rs.getString(4);
					
						String p=rs.getString(1);
						int ad=rs.getInt(3);
						
					
						sum1=totalcost;
						if(checkfun==1)
							totalcost=totalcost-(int)10/100*totalcost;
						
						st1.executeUpdate("insert into deliverystatus (orderid,issue_date,deliveryboy,deliverboyid,cost,deliver_status) values('"+orderid+"',CURDATE(),'"+p+"','"+jk+"','"+totalcost+"','notdone')");
						st4.executeUpdate("update orderid set orderid='"+cell+"' where orderid='"+orderid+"'");
						ip++;
						st.executeUpdate("insert into orders (name,housetreet,colony,city,state,contact,email,cost,type,color,quantity,percost) values('"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+totalcost+"','"+type+"','"+color+"','"+quantity+"','"+percost+"')");
						deliver="orderid= "+orderid+"	name= "+d+"	housestreet= "+e+"		colony= "+f+"		city= "+g+"		state= "+h+"	contact= "+i+"		cost= "+totalcost+"	type= "+type+"	color= "+color+"	quantity= "+quantity+"";

						out.println("<h1><center>We are Thankful to you that you prefferd us and we will assure that you will have no complains from our side and you will be having a memorable journey with us</h1>");
						if(checkfun==1){
							out.println("<h1>Your orderid is "+orderid+",Your order will reach you within 5 days by deliveryboy "+p+" with contact number "+ad+",with total bill amounting to "+sum1+"->"+totalcost+"rs.,the 10% discount is specially offered to you on being funtoo member and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change</h1></center>"); 
							body="Your orderid is "+orderid+",with sarees of type="+type+",color="+color+",quantity="+quantity+" and per item cost="+percost+"Your order will reach you within 5 days by deliveryboy "+p+" with contact number "+ad+",with total bill amounting to "+sum1+"->"+totalcost+"rs. ,the 10% discount is specially offered to you on being funtoo member, and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change";
						}
						else{
						out.println("<h1>Your orderid is "+orderid+",Your order will reach you within 5 days by deliveryboy "+p+" with contact number "+ad+",with total bill amounting to "+totalcost+"rs. and to be paid at delivery in cash,please keep exact amount,to avoid problem of change</h1></center>"); 
						body="Your orderid is "+orderid+",with sarees of type="+type+",color="+color+",quantity="+quantity+" and per item cost="+percost+"Your order will reach you within 5 days by deliveryboy "+p+" with contact number "+ad+",with total bill amounting to "+totalcost+"rs. , and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change";
						}
						st1.executeUpdate("update deliveryboy set tasksonhand='"+yr+"' ,status='busy' where deliveryboyid='"+jk+"'");
					
						ck[ic].setMaxAge(0);
						jol[yt].setMaxAge(0);
					}
					else
					{
						out.println("<h1>some error occured</h1></body></html>");
					}
					
				}
				}
				else
					out.println("sorry some error occured,kindly close browser and try again step by step");
			}
			else
			{
				out.println("sorry some error occured,kindly close browser and try again step by step");
			}
			}
			else
			{	
		out.println("hello2");
				if(l!=null)
				opk=Integer.parseInt(l);
			if(k!=null)
			uy=Integer.parseInt(k);
			if(uy<=0)
				uy=1;
			op=opk*uy;
				if(checkfun==1)
				{
					sum1=op;
					sum1d=sum1+"";
					op=op-(int)10/100*op;
					opd=opd+"";
				}
				st=con.createStatement();
				
				
				st1=con.createStatement();
				
				rs=st1.executeQuery("select * from sareesinfo where image_name='"+a+"' and type='"+b+"' and color='"+c+"'");
				
				st2=con.createStatement();
				st3=con.createStatement();
				if(rs.next())
				{
					int m=rs.getInt(4);
					int yu=Integer.parseInt(k);
					m=m-yu;
					if(m<0)
					{
						out.println("<h1>Insufficient stock,sorry</h1>");
						counterfun=0;
					}
					else{
						st2.executeUpdate("update sareesinfo set quantity='"+m+"' where image_name='"+a+"' and type='"+b+"' and color='"+c+"'");
						counterfun=1;
					}
				}
				
				else
					out.println("<h1>error occured</h1>");
				if(counterfun==1)
				{
					st.executeUpdate("insert into orders (name,housetreet,colony,city,state,contact,email,cost,type,color,quantity,percost) values('"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','"+i+"','"+j+"','"+op+"','"+b+"','"+c+"','"+k+"','"+opk+"')");
					st4.executeUpdate("update orderid set orderid='"+cell+"' where orderid='"+orderid+"'");
					deliver="orderid= "+orderid+"	name= "+d+"	housestreet= "+e+"		colony= "+f+"		city= "+g+"		state= "+h+"	contact= "+i+"		cost= "+op+"	type= "+b+"	color= "+c+"	quantity= "+k+"";
				rs1=st.executeQuery("select * from deliveryboy where status='free'");
				
				if(rs1.next())
				{
					int jk=rs1.getInt(5);
					int yr=rs1.getInt(7);
					yr++;
					int n=rs1.getInt(3);
					
					String o=rs1.getString(1);
					
					st1.executeUpdate("insert into deliverystatus (orderid,issue_date,deliveryboy,deliverboyid,cost,deliver_status) values('"+orderid+"',CURDATE(),'"+o+"','"+jk+"','"+op+"','notdone')");
					ip++;
					
					out.println("<h1><center>We are Thankful to you that you prefferd us and we will assure that you will have no complains from our side and you will be having a memorable journey with us</h1>");
					st1.executeUpdate("update deliveryboy set tasksonhand='"+yr+"' ,status='busy' where deliveryboyid='"+jk+"'");
					if(checkfun==1){
					out.println("<h1>Your orderid is "+orderid+",Your order will reach you within 5 days by deliveryboy "+o+" with contact number "+n+",with total bill amounting to "+sum1+"->"+op+"rs. ,the 10% discount is specially offered to you on being funtoo member and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change</h1></center>" );
					body="Your orderid is "+orderid+",with saree of type="+b+",color="+c+",quantity="+k+" and peritemcost="+opk+"Your order will reach you within 5 days by deliveryboy "+o+" with contact number "+n+",with total bill amounting to "+sum1+"->"+op+"rs. ,the 10% discount is specially offered to you on being funtoo member and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change";
					}
					else{
					out.println("<h1>Your orderid is "+orderid+",Your order will reach you within 5 days by deliveryboy "+o+" with contact number "+n+",with total bill amounting to "+op+"rs. ,and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change</h1></center>" );
					body="Your orderid is "+orderid+",with saree of type="+b+",color="+c+",quantity="+k+" and peritemcost="+opk+"Your order will reach you within 5 days by deliveryboy "+o+" with contact number "+n+",with total bill amounting to "+op+"rs. , and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change";
					}
				}
				else
				{
					rs2=st.executeQuery("select min(tasksonhand) from deliveryboy where status='available'");
					if(rs2.next())
					{
						
						int ac=rs2.getInt(1);
						
						rs=st1.executeQuery("select * from deliveryboy where tasksonhand='"+ac+"' and status='available'");
						rs.next();
						int jk=rs.getInt(5);
						int yr=rs.getInt(7);
						yr++;
						sent=rs.getString(4);
						
						String p=rs.getString(1);
						int ad=rs.getInt(3);
						
					
						st1.executeUpdate("insert into deliverystatus (orderid,issue_date,deliveryboy,deliverboyid,cost,deliver_status) values('"+orderid+"',CURDATE(),'"+p+"','"+jk+"','"+l+"','notdone')");
						
				
						ip++;
						out.println("<h1><center>We are Thankful to you that you prefferd us and we will assure that you will have no complains from our side and you will be having a memorable journey with us</h1>");
						st1.executeUpdate("update deliveryboy set tasksonhand='"+yr+"' ,status='busy' where deliveryboyid='"+jk+"'");
						if(checkfun==1){
					out.println("<h1>Your orderid is "+orderid+",Your order will reach you within 5 days by deliveryboy "+p+" with contact number "+ad+",with total bill amounting to "+sum1+"->"+op+"rs. ,the 10% discount is specially offered to you on being funtoo member and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change</h1></center>" );
					body="Your orderid is "+orderid+",with saree of type="+b+",color="+c+",quantity="+k+" and peritemcost="+opk+"Your order will reach you within 5 days by deliveryboy "+p+" with contact number "+ad+",with total bill amounting to "+sum1+"->"+op+"rs. ,the 10% discount is specially offered to you on being funtoo member and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change";
						}
					else{
					out.println("<h1>Your orderid is "+orderid+",Your order will reach you within 5 days by deliveryboy "+p+" with contact number "+ad+",with total bill amounting to "+op+"rs. ,and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change</h1></center>" );
					body="Your orderid is "+orderid+",with saree of type="+b+",color="+c+",quantity="+k+" and peritemcost="+opk+"Your order will reach you within 5 days by deliveryboy "+p+" with contact number "+ad+",with total bill amounting to "+op+"rs. , and bill to be paid at delivery in cash,please keep exact amount,to avoid problem of change";
					}
						
					}
					else
					{
						out.println("<h1>some error occured</h1></body></html>");
					}
				}
				}
			}
			if(fun==1)
			{
				out.println(jol[yt].getName()+"  "+jol[yt].getValue());
				jol[yt].setMaxAge(0);
			response.addCookie(jol[yt]);
				out.println("hello1");
			}
			if(counter==1)
			{
				ck[ic].setMaxAge(0);
				out.println("hello2");
				response.addCookie(ck[ic]);
			}
			con.close();
		}
		
	
	catch(SQLException e3)
		{
			out.println(e3);
		}
		catch(Exception e4)
		{
			out.println(e4);
		}
try
{
	String toa=j;
            String []to=toa.split(",");
            String sub="Order Placed";
            
			
Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
String host = "smtp.gmail.com";//GOOGLE SERVER NAME....
String from1 = "singhkarni669@gmail.com";//THIS GMAIL ID WILL SEND MAIL....
    String pass = "123iamkarni123";//THIS IS PASSWORD OF SPECIFIED ID....
    Properties props = System.getProperties();
    props.put("mail.smtp.starttls.enable", "true"); // IF IT IS TRUE ONLY THEN EMAIL WILL BE //SENT....
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.user", from1);
    props.put("mail.smtp.password", pass);
props.put("mail.smtp.port", "587");//ASSIGN A PORT THROUGH WHICH ALL WORKING IS //DONE....
    props.put("mail.smtp.auth", "true");//MAKE AUTHORIZATION TRUE....
 
	
	Session session1 = Session.getInstance(props,null);
/*    Session session1 =    Session.getDefaultInstance(props,
            new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("username","pwd");
                }
            });*/

    MimeMessage message = new MimeMessage(session1);//THIS WILL BE USED TO ATTACH A //FILE LATER....
    message.setFrom(new InternetAddress(from1));
 
    InternetAddress[] toAddress = new InternetAddress[to.length];
 
    //TO GET THE ADDRESS OF ARRAY....
    for( int io=0; io < to.length; io++ ) 
    { 
        toAddress[io] = new InternetAddress(to[io]);
    }
    //System.out.println(Message.RecipientType.TO);
 //THIS WILL READ THE ADDRESSES ONE BY ONE WHICH ARE SPECIFIED TO SEND MAIL....
    for( int io=0; io < toAddress.length; io++)
    { 
        message.addRecipient(Message.RecipientType.TO, toAddress[io]);
    }
    message.setSubject(sub);
    message.setText(body);
out.println("hello1");    
Transport transport = session1.getTransport("smtp");
//Transport transport = new SMTPTransport(mailSession,new URLName("localhost"));

out.println("hello2");    
transport.connect(host, from1, pass);

out.println("hello3");    
transport.sendMessage(message, message.getAllRecipients());
    transport.close();
   
	out.println("hello5");
	
	}
	catch(Exception ew)
	{
		out.println(ew);
		}



try
{
	String toa=sent;
            String []to=toa.split(",");
            String sub="Order to Deliver";
						out.println("hello6");
			
Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
String host = "smtp.gmail.com";//GOOGLE SERVER NAME....
String from1 = "singhkarni669@gmail.com";//THIS GMAIL ID WILL SEND MAIL....
    String pass = "123iamkarni123";//THIS IS PASSWORD OF SPECIFIED ID....
    Properties props = System.getProperties();
    props.put("mail.smtp.starttls.enable", "true"); // IF IT IS TRUE ONLY THEN EMAIL WILL BE //SENT....
    props.put("mail.smtp.host", host);
    props.put("mail.smtp.user", from1);
    props.put("mail.smtp.password", pass);
props.put("mail.smtp.port", "587");//ASSIGN A PORT THROUGH WHICH ALL WORKING IS //DONE....
    props.put("mail.smtp.auth", "true");//MAKE AUTHORIZATION TRUE....
 
	
	Session session1 = Session.getInstance(props,null);
/*    Session session1 =    Session.getDefaultInstance(props,
            new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("username","pwd");
                }
            });*/

    MimeMessage message = new MimeMessage(session1);//THIS WILL BE USED TO ATTACH A //FILE LATER....
    message.setFrom(new InternetAddress(from1));
 
    InternetAddress[] toAddress = new InternetAddress[to.length];
 
    //TO GET THE ADDRESS OF ARRAY....
    for( int io=0; io < to.length; io++ ) 
    { 
        toAddress[io] = new InternetAddress(to[io]);
    }
    //System.out.println(Message.RecipientType.TO);
 //THIS WILL READ THE ADDRESSES ONE BY ONE WHICH ARE SPECIFIED TO SEND MAIL....
    for( int io=0; io < toAddress.length; io++)
    { 
        message.addRecipient(Message.RecipientType.TO, toAddress[io]);
    }
    message.setSubject(sub);
    message.setText(deliver);
out.println("hello7");    
Transport transport = session1.getTransport("smtp");
//Transport transport = new SMTPTransport(mailSession,new URLName("localhost"));

out.println("hello8");    
transport.connect(host, from1, pass);

out.println("hello9");    
transport.sendMessage(message, message.getAllRecipients());
    transport.close();
   	
	
	
	}
	catch(Exception ew)
	{
		out.println(ew);
		}
		if(cko!=null)
		{
			for(int lo=0;lo<cko.length;lo++)
			{
				v=cko[lo].getName();
				if(v.equals("authentic"))
				{
					loc=cko[lo].getValue();
					authenticity=Integer.parseInt(loc);
					gella=authenticity+1;
					out.println("okcheck"+"	  "+authenticity);
					cko[lo].setMaxAge(0);
					response.addCookie(cko[lo]);
					break;
				}
			}
		}
			out.println("hello10");
		if(fat!=null)
		{
			for(int lo=0;lo<fat.length;lo++)
			{
				v=fat[lo].getName();
				if(v.equals("CheckUser"))
				{
					fat[lo].setMaxAge(0);
					response.addCookie(fat[lo]);
				}
			}
		}
		}

%>
</body>
</html>