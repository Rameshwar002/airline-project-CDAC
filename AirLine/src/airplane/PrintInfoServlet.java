package airplane;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/PrintInfoServlet")
public class PrintInfoServlet extends HttpServlet {
	
	
	public PrintInfoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
//			PrintWriter out=response.getWriter();
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airplaneticket","root","1234");
			
			
			PrintWriter out=response.getWriter();
			
			String fullname= request.getParameter("fullnames");
			String agename= request.getParameter("agename");
			String dobname= request.getParameter("dobname");
			String personaladdress= request.getParameter("personaladdress");
			String gender= request.getParameter("gender");
			String country= request.getParameter("country");
			String state= request.getParameter("state");
			String pincode= request.getParameter("pincode");
			String emailid= request.getParameter("emailid");
			String mobileno= request.getParameter("mobileno");
			String flightno= request.getParameter("flightno");
			try {

				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airplaneticket","root","1234");
				PreparedStatement ps = con.prepareStatement("INSERT into ticketinfo  VALUES(?,?,?,?,?,?,?,?,?,?,?)");
		
			ps.setString(1,fullname);
			ps.setString(2, agename);
			ps.setString(3, dobname);
			ps.setString(4, personaladdress);
			ps.setString(5, gender);
			ps.setString(6, country);
			ps.setString(7, state);
			ps.setString(8, pincode);
			ps.setString(9, emailid);
			ps.setString(10, mobileno);
			ps.setString(11, flightno);
//			CREATE TABLE ticketinfo (  fullname varchar(30), age  varchar(5), dob varchar(12),address varchar(100),gender varchar(10), country varchar(20), state varchar(20),pincode varchar(8),emailid varchar(20), mobileno varchar(14), flightno varchar(10) );
			
			int rs=ps.executeUpdate();
			
			if(rs != 0)
			{
				RequestDispatcher rd=request.getRequestDispatcher("PaymentInfo.jsp");
				rd.forward(request, response);
				request.getRequestDispatcher("BookingServlet").include(request, response);
			}
			
			//String sql = "SELECt* FROM ticketinfo ;";
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
		
			
		}
		
	}

}
