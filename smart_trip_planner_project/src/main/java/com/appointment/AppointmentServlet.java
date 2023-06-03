package com.appointment;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDAO;
import com.dto.AppointmentInfoDTO;
import com.entity.Appointment;

import com.entity.PayBill;
import com.entity.User;

@WebServlet("/appointments")
public class AppointmentServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String mode = req.getParameter("mode");

		HttpSession session = req.getSession();

		AppointmentDAO dao = new AppointmentDAO();

		AppointmentDAO dao2 = new AppointmentDAO();

		if (mode.equals("addAppointment")) {
			int tripid = Integer.parseInt(req.getParameter("id"));
			System.out.println("id is = " + tripid);

			User user = (User) session.getAttribute("user");
			int userId = user.getId();

			
			System.out.println("id is = " + userId);

			
			PayBill tripdetail = dao2.getTripById(tripid);

			if (dao.addAppointment(tripid, userId, "pending", "pending")) {
				
				int apppid = dao.getdatabyId(userId, tripid, "pending");
				System.out.println("apid  is sss = " + apppid);

				session.setAttribute("apid", apppid);

				
				session.setAttribute("tripDeatil", tripdetail);
				resp.sendRedirect("payment.jsp");
			} else {

				resp.sendRedirect("payBill.jsp");
			}
		}
		
		if (mode.equals("viewAppointments")) {

			User user = (User) session.getAttribute("user");
			int uid = user.getId();       
			
			List<AppointmentInfoDTO> appointments1 = dao.getAllAppointmentByLoginUser(uid);

			session.setAttribute("appointments1", appointments1);

			resp.sendRedirect("view_appointments.jsp");
		}

		

		if (mode.equals("makePayment")) {

			User user = (User) session.getAttribute("user");
			int uid = user.getId();

			String cardNO = req.getParameter("card_no");
			String creditCard = req.getParameter("creditCard");
			String cvv = req.getParameter("cvv");
			String ammount = req.getParameter("ammount");
			String nameOnCard = req.getParameter("NameOnCard");
			String expiry = req.getParameter("expiry");

			PayBill p = new PayBill();

			p.setUser_id(uid);
			p.setCardNo(cardNO);
			p.setCardType(creditCard);
			p.setCvvNo(cvv);
			p.setAmmount(ammount);
			p.setNameOnCard(nameOnCard);
			p.setExpiry(expiry);

			if (dao.payment(p)) {
				
				int id1 = (Integer) session.getAttribute("apid");
				
				

				System.out.println("id1 iss si = " + id1);
				
				boolean f = dao.updatePaymentStatus(id1);

				session.setAttribute("succMsg", "Payment Sucessfully");
				resp.sendRedirect("appointments?mode=viewAppointments");
			} else {
				session.setAttribute("errorMsg", "Something wrong on server");
				
			}
		
		}

		if (mode.equals("searchAppointment")) {

			String departure = req.getParameter("departure");
			String destination = req.getParameter("destination");
			String startdate = req.getParameter("startDate");
			String enddate = req.getParameter("endDate");

			System.out.println("depa = " + departure);

			List<AppointmentInfoDTO> appointments = dao.getsearchByCondition(departure, destination, startdate,
					enddate);

			System.out.println("appointments   .... = " + appointments);

			session.setAttribute("appointments", appointments);

			if (appointments.isEmpty()) {
				resp.sendRedirect("notAvailable.jsp");
			} else {
				resp.sendRedirect("search.jsp");
			}
		}

		if (mode.equals("addtripByAdmin")) {
			String departure = req.getParameter("departure");
			String destination = req.getParameter("destination");
			String startdate = req.getParameter("startDate");
			String starttime = req.getParameter("startTime");
			String enddate = req.getParameter("endDate");
			String endtime = req.getParameter("endTime");
			String price = req.getParameter("price");
			String vehicle = req.getParameter("vehicle");

			Appointment ap = new Appointment();

			ap.setDeparture(departure);
			ap.setDestination(destination);
			ap.setStartDate(startdate);
			ap.setStartTime(starttime);
			ap.setEndDate(enddate);
			ap.setEndTime(endtime);
			ap.setPrice(price);
			ap.setVehicle(vehicle);

			dao.addTripBookingByAdmin(ap);

			session.setAttribute("tripDetails", ap);
			resp.sendRedirect("admin_index.jsp");
		}

		if (mode.equals("viewAddedTripsByAdmin")) {

			List<AppointmentInfoDTO> appointments = dao.getAllAddedTripsByAdmin();

			session.setAttribute("appointments", appointments);

			resp.sendRedirect("view_addedTripBookingByAdmin.jsp");
		}

		if (mode.equals("viewAppointmentDetails")) {
		
			int apid = Integer.parseInt(req.getParameter("id"));
			
			System.out.println("apppp iddd = " + apid);

			AppointmentInfoDTO appointmentInfoDTO = dao.getAppointmentInfoById(apid);

			session.setAttribute("appoinmentDetails", appointmentInfoDTO);
			resp.sendRedirect("view_user.jsp");
			
		}
		
		AppointmentDAO dao1 = new AppointmentDAO();

		if (mode.equals("updateBooking")) {
			try {
				int apid=Integer.parseInt(req.getParameter("id"));
				
                System.out.println("update wal apid = " + apid);
				Appointment ap = new Appointment();
				ap.setId(apid);
				boolean f = dao1.updateCommentStatus(ap.getId());

				if (f == true) {
					String msg = "Booking Accepted";
					req.setAttribute("msg", msg);
				//	resp.sendRedirect("view_allAppointment.jsp");
					resp.sendRedirect("appointment");
					

				} else {
					session.setAttribute("errorMsg", "wrong on server");
					resp.sendRedirect("view_user.jsp");
				}

			} catch (Exception e) {

				e.printStackTrace();
			}
		}	
		if(mode.equals("removeAppointment")) 
		{
			int apid=Integer.parseInt(req.getParameter("id"));
			System.out.println("app11 = " + apid);
			
			boolean f=dao.deleteAppointment(apid);
			if(f==true) {
				resp.sendRedirect("appointments?mode=viewAddedTripsByAdmin");	
			
		}
			else {
				session.setAttribute("errorMsg", "wrong on server");
				resp.sendRedirect("appointments?mode=viewAddedTripsByAdmin");
			}			
		}
		
	}
}