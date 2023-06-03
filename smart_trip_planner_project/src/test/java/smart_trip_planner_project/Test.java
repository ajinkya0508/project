package smart_trip_planner_project;

import com.dao.AppointmentDAO;

public class Test {
	
	public static void main(String[] args) {
		AppointmentDAO dao=new AppointmentDAO();
	 int id=	dao.getdatabyId(4, 20, "pending");
		
	}

}
