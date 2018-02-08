package com.appfone.carro.Daoimpl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.carro.Dao.PackagebookingDao;
import com.appfone.carro.pojo.Airportbooking;
import com.appfone.carro.pojo.Packagebooking;
import com.appfone.carro.util.HibernateUtil;

public class PackagebookingDaoimpl implements PackagebookingDao {

	@Override
	public void savePackagebooking(HttpServletRequest request) {
		HttpSession session1=request.getSession();
		Packagebooking packbook = new Packagebooking();
		packbook.setCust_address(session1.getAttribute("packageaddress").toString());
		packbook.setCust_email(session1.getAttribute("packageemail").toString());
		packbook.setCust_name(session1.getAttribute("packagefullname").toString());
		packbook.setCust_phone(session1.getAttribute("packagephone").toString());
		packbook.setGst(session1.getAttribute("packagegst").toString());
		packbook.setPackageselected(session1.getAttribute("packselected").toString());
		packbook.setPrice(session1.getAttribute("packageprice").toString());
		packbook.setTotal(session1.getAttribute("packagetotal").toString());
		packbook.setVehicle(session1.getAttribute("package_vehiclename").toString());
		packbook.setDate(session1.getAttribute("packagedate").toString());
		packbook.setPickup_point(session1.getAttribute("packagesource").toString());
		
		
		
		SessionFactory factory=HibernateUtil.getSessionFactory();
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    session.persist(packbook);
	    t.commit();
	    session.close();
		
		
	}
	

}
