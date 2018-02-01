package com.appfone.carro.Daoimpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.appfone.carro.Dao.TripbookingDao;
import com.appfone.carro.pojo.Tripbooking;

public class TripbookingDaoimpl implements TripbookingDao {
	
	
	@Override
	public void saveTrip(HttpServletRequest request) {
		
		 HttpSession session1=request.getSession();
		Tripbooking tb = new Tripbooking();
		tb.setVehicle(session1.getAttribute("car").toString());
		tb.setPer_day(session1.getAttribute("perday").toString());
		tb.setPer_km(session1.getAttribute("price").toString());
		tb.setDriverbata(session1.getAttribute("driverbata").toString());
		tb.setSource(session1.getAttribute("source").toString());
		tb.setDestination(session1.getAttribute("destination").toString());
		tb.setDistance(session1.getAttribute("idistance").toString());
		tb.setCust_name(session1.getAttribute("fullname").toString());
		tb.setCust_email(session1.getAttribute("email").toString());
		tb.setCust_address(session1.getAttribute("address").toString());
		tb.setCust_phone(session1.getAttribute("phone").toString());
		tb.setTrav_date(session1.getAttribute("date").toString());
		tb.setTravelling_days(session1.getAttribute("day").toString());
		tb.setBasic_amt(session1.getAttribute("basicamt").toString());
		tb.setGst(session1.getAttribute("gst").toString());
		tb.setFinal_bata(session1.getAttribute("finaldriverbata").toString());
		tb.setTotal_approx(session1.getAttribute("grandtotal").toString());
		
		Configuration cfg = new Configuration();
	    cfg.configure("hibernate.cfg.xml");
	    SessionFactory factory = cfg.buildSessionFactory();
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    session.persist(tb);
	    t.commit();
	    session.close();
	    
	
		
	}

}
