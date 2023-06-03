package com.dao;

import java.io.ObjectInputFilter.Status;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.math3.stat.inference.OneWayAnova;

import com.db.DbConnection;
import com.dto.AppointmentInfoDTO;
import com.entity.Appointment;
import com.entity.PayBill;
import com.entity.User;
import com.mysql.cj.xdevapi.Result;

public class AppointmentDAO {

	private Connection conn;

	public AppointmentDAO() {
		conn = DbConnection.getCon();
	}

	public boolean addAppointment(int tripid, int userId, String string, String string2) {
		boolean f = false;
		Appointment ap = null;
		try {
			String sql = "insert into appointment(trip_id,user_id,payment_status,status) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, tripid);
			ps.setInt(2, userId);
			ps.setString(3, "pending");
			ps.setString(4, "pending");

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
    public int getdatabyId(int UserId,int tripId,String status) 
    {
    	List<Appointment> list = new ArrayList<Appointment>();
    	
    	AppointmentDAO dd = new AppointmentDAO();
    	int id=0;
	
		Appointment ap = null;
		try {
			String sql = "select * from appointment where trip_id=? and user_id=? and status=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(2, UserId);
			ps.setInt(1, tripId);
			ps.setString(3,status);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				
               id=rs.getInt("ap_id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return id;	
	}
    

	
	public boolean payment(PayBill p) {
		boolean f = false;

		try {
			String sql = "insert into pay_tbls(pay_id,user_id,card_no,card_type,cvv_no,ammount,name_card,exp_date) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, p.getPay_id());
			ps.setInt(2, p.getUser_id());
			ps.setString(3, p.getCardNo());
			ps.setString(4, p.getCardType());
			ps.setString(5, p.getCvvNo());
			ps.setString(6, p.getAmmount());
			ps.setString(7, p.getNameOnCard());
			ps.setString(8, p.getExpiry());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	public boolean addTripBookingByAdmin(Appointment ap) {
		boolean f = false;

		try {

			String sql = "insert into add_trip(departure,destination,start_date,start_time,end_date,end_time,price,vehicle) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, ap.getDeparture());
			ps.setString(2, ap.getDestination());
			ps.setString(3, ap.getStartDate());
			ps.setString(4, ap.getStartTime());
			ps.setString(5, ap.getEndDate());
			ps.setString(6, ap.getEndTime());
			ps.setString(7, ap.getPrice());
			ps.setString(8, ap.getVehicle());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	public List<AppointmentInfoDTO> getAllAppointmentByLoginUser(int UserId) {
		List<AppointmentInfoDTO> list = new ArrayList<AppointmentInfoDTO>();
		UserDao udo = new UserDao();
		AppointmentDAO dd = new AppointmentDAO();
		User user = udo.getUserById(UserId);
		AppointmentInfoDTO ap = null;
		try {
			String sql = "select * from appointment where user_id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, UserId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ap = new AppointmentInfoDTO();
				int tripId = rs.getInt("trip_id");
				Appointment ap1=dd.getTripInfo(tripId);
				int apid=rs.getInt("ap_id");		
				ap.setDeparture(ap1.getDeparture());
				ap.setDestination(ap1.getDestination());
				ap.setStartDate(ap1.getStartDate());
				ap.setStartTime(ap1.getStartTime());
				ap.setEndDate(ap1.getEndDate());
				ap.setEndTime(ap1.getEndTime());
				ap.setPayment(rs.getString("payment_status"));
				ap.setStatus(rs.getString("status"));
				ap.setUserName(user.getFullname());

				list.add(ap);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<AppointmentInfoDTO> getAllAddedTripsByAdmin() {
		List<AppointmentInfoDTO> list = new ArrayList<AppointmentInfoDTO>();

		AppointmentInfoDTO ap = null;
		try {
			String sql = "select * from  add_trip";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				ap = new AppointmentInfoDTO();
                
				ap.setApId(rs.getInt("id"));
				
				ap.setDeparture(rs.getString("departure"));
				ap.setDestination(rs.getString("destination"));
				ap.setStartDate(rs.getString("start_date"));
				ap.setStartTime(rs.getString("start_time"));
				ap.setEndDate(rs.getString("end_date"));
				ap.setEndTime(rs.getString("end_time"));
				ap.setPrice(rs.getString("price"));
				ap.setVehicle(rs.getString("vehicle"));

				list.add(ap);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public int countAppointment() {
		int i = 0;
		try {
			String sql = "select * from appointment";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

	public List<AppointmentInfoDTO> getsearchByCondition(String departure, String destination, String startdate,
			String enddate) {
		List<AppointmentInfoDTO> list = new ArrayList<AppointmentInfoDTO>();

		AppointmentInfoDTO ap = null;
		try {
			String sql = "select * from  add_trip where departure =? and destination=? and start_date=? and end_date=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, departure);
			ps.setString(2, destination);
			ps.setString(3, startdate);
			ps.setString(4, enddate);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				ap = new AppointmentInfoDTO();
				ap.setApId(rs.getInt("id"));
				ap.setDeparture(rs.getString("departure"));
				ap.setDestination(rs.getString("destination"));
				ap.setStartDate(rs.getString("start_date"));
				ap.setStartTime(rs.getString("start_time"));
				ap.setEndDate(rs.getString("end_date"));
				ap.setEndTime(rs.getString("end_time"));
				ap.setPrice(rs.getString("price"));
				ap.setVehicle(rs.getString("vehicle"));

				System.out.println(" ap is = " + ps);
				list.add(ap);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public AppointmentInfoDTO getAppointmentInfoById(int apid) {
		UserDao dd1 = new UserDao();
		AppointmentInfoDTO ap = null;
		AppointmentDAO dao=new AppointmentDAO();
		try {
			String sql = "select * from appointment where ap_id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, apid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ap = new AppointmentInfoDTO();
				
				ap.setApId(apid);
				int UserId = rs.getInt("user_id");

				User user = dd1.getUserById(UserId);
				ap.setUserName(user.getFullname());
				ap.setAge(user.getAge());
				ap.setGender(user.getGender());
                ap.setAddress(user.getAddress());
                ap.setUserEmail(user.getEmail());
                
                int tripId=rs.getInt("trip_id");
				Appointment ap1=dao.getTripInfo(tripId);
				ap.setDeparture(ap1.getDeparture());
				ap.setDestination(ap1.getDestination());
				ap.setStartDate(ap1.getStartDate());
				ap.setStartTime(ap1.getStartTime());
				ap.setEndDate(ap1.getEndDate());
				ap.setEndTime(ap1.getEndTime());
				ap.setVehicle(ap1.getVehicle());	
				ap.setPayment(rs.getString("payment_status"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ap;
	}

	public List<AppointmentInfoDTO> getAllAppointment() throws SQLException {

		List<AppointmentInfoDTO> list = new ArrayList<AppointmentInfoDTO>();

		AppointmentDAO dd = new AppointmentDAO();

		UserDao dd1 = new UserDao();

		AppointmentInfoDTO ap = null;
		try {
			String sql = "select * from appointment";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				int UserId = rs.getInt("user_id");

				User user = dd1.getUserById(UserId);
				
				int tripId=rs.getInt("trip_id");
				Appointment ap1=dd.getTripInfo(tripId);
				
				int apid=rs.getInt("ap_id");
				
				ap = new AppointmentInfoDTO();
                ap.setApId(apid);
				ap.setUserName(user.getFullname());
				ap.setDeparture(ap1.getDeparture());
				ap.setDestination(ap1.getDestination());
				ap.setStartDate(ap1.getStartDate());
				ap.setStartTime(ap1.getStartTime());
				ap.setEndDate(ap1.getEndDate());
				ap.setEndTime(ap1.getEndTime());
				ap.setPayment(rs.getString("payment_status"));
				ap.setStatus(rs.getString("status"));

				list.add(ap);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public AppointmentInfoDTO getAllAppointmentById(int id) throws SQLException {

		AppointmentDAO dd = new AppointmentDAO();

		UserDao dd1 = new UserDao();

		AppointmentInfoDTO ap = null;
		try {
			String sql = "select * from appointment where id";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				ap = new AppointmentInfoDTO();

				ap.setApId(rs.getInt("id"));

				ap.setStatus(rs.getString("status"));

				int UserId = rs.getInt("user_id");

				System.out.println("user is " + UserId);

				User user = dd1.getUserById(UserId);

				ap.setUserName(user.getFullname());
				ap.setAge(user.getAge());
				ap.setGender(user.getGender());
				ap.setAddress(user.getAddress());
				ap.setUserEmail(user.getEmail());

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ap;
	}

	public boolean updateCommentStatus(int apid) {
		boolean f = false;
		try {
			String sql = "update appointment set status = ? where ap_id = ? ";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setInt(2, apid);
			ps.setString(1, "Booking Accepted");

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean getSelectTripByAdmin(int id) {

		AppointmentDAO dd = new AppointmentDAO();

		UserDao dd1 = new UserDao();

		AppointmentInfoDTO ap = null;
		try {
			String sql = "select * from appointment where user_id";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {

				ap = new AppointmentInfoDTO();

				ap.setApId(rs.getInt("id"));

				ap.setDeparture(rs.getString("departure"));
				ap.setDestination(rs.getString("destination"));
				ap.setStartDate(rs.getString("startDate"));
				ap.setEndDate(rs.getString("endDate"));
				ap.setStartTime(rs.getString("startTime"));
				ap.setEndTime(rs.getString("endTime"));
				ap.setPrice(rs.getString("price"));
				ap.setVehicle(rs.getString("vehicle"));

				int UserId = rs.getInt("user_id");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;

	}

	public Appointment getAppointmentbyId(int id) {
		Appointment ap = null;

		try {
			String sql = "select * from appointment where ap_id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				ap = new Appointment();
			
				ap.setPayment(rs.getString("payment_status"));
				ap.setStatus(rs.getString("status"));


			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ap;

	}

	public PayBill getTripById(int tripid) {

		PayBill pb = null;

		try {
			String sql = "select * from add_trip where id = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, tripid);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				pb = new PayBill();
				pb.setAmmount(rs.getString("price"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pb;

	}
	
	public Appointment getTripInfo(int tripid) 
	{
		Appointment app=null;
		try 
		{
			String sql="select * from add_trip where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, tripid);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) 
			{
				app=new Appointment();
				app.setDeparture(rs.getString("departure"));
				app.setDestination(rs.getString("destination"));
				app.setStartDate(rs.getString("start_date"));
				app.setStartTime(rs.getString("start_time"));
				app.setEndDate(rs.getString("end_date"));
				app.setEndTime(rs.getString("end_time"));
				app.setPrice(rs.getString("price"));
				app.setVehicle(rs.getString("vehicle"));
			
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return app;

	}
	
	public boolean updatePaymentStatus(int id1) {
		boolean f = false;
		try {
			String sql = "update appointment set payment_status = ? where ap_id = ? ";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setInt(2, id1);
			ps.setString(1, "payment successful");

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean deleteAppointment(int apid) {
		boolean f=false;
		try 
		{
			String sql="delete from add_trip where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, apid);
			
			int i=ps.executeUpdate();
			if(i==1) 
			{
				f=true;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public boolean UpdateAppointment(int apid) {
		
		return false;
	}
	
}	
