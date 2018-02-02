package com.appfone.carro.Daoimpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.appfone.carro.Dao.AirportbookingDao;
import com.appfone.carro.pojo.Airportbooking;

public class AirportbookingDaoimpl implements AirportbookingDao{

	@Override
	public void saveTrip(HttpServletRequest request) {
		
		HttpSession session1=request.getSession();
		Airportbooking airbook = new Airportbooking();
		airbook.setBasicamt(session1.getAttribute("airbasicamt").toString());
		airbook.setDate(session1.getAttribute("airdate").toString());
		airbook.setGst(session1.getAttribute("airgst").toString());
		airbook.setDestination(session1.getAttribute("airdestination").toString());
		airbook.setSource(session1.getAttribute("airsource").toString());
		airbook.setTotal(session1.getAttribute("airtotal").toString());
		airbook.setVehicle(session1.getAttribute("aircar").toString());
		airbook.setName(session1.getAttribute("airfullname").toString());
		airbook.setPhone(session1.getAttribute("airphone").toString());
		airbook.setEmail(session1.getAttribute("airemail").toString());
		airbook.setAddress(session1.getAttribute("airaddress").toString());
		
		
		Configuration cfg = new Configuration();
	    cfg.configure("hibernate.cfg.xml");
	    SessionFactory factory = cfg.buildSessionFactory();
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    session.persist(airbook);
	    t.commit();
	    session.close();
		
		
	}

}
