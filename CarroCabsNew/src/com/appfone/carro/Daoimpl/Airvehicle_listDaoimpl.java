package com.appfone.carro.Daoimpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Projections;

import com.appfone.carro.Dao.Airvehicle_listDao;
import com.appfone.carro.pojo.Airvehicle_list;
import com.appfone.carro.pojo.Vehicle_list;

public class Airvehicle_listDaoimpl implements Airvehicle_listDao {

	private int size;
	private String[] vehicle;
	private String[] base_price;
	private String[] gst;
	private String[] total;
	private String[] v_image;
	
	@Override
	public int getcountlist() {
	
		Configuration cfg = new Configuration();
	    cfg.configure("hibernate.cfg.xml");
	    SessionFactory factory = cfg.buildSessionFactory();
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    Query query = session.createQuery("select count(*) from Airvehicle_list");
	    List list = query.list();
	    Iterator itr = list.iterator();
	    size = Integer.parseInt(itr.next().toString());
	    return size;
		
	}

	
	
	@Override
	public String[] getVehiclenameslist() {
		Configuration cfg = new Configuration();
	    cfg.configure("hibernate.cfg.xml");
	    SessionFactory factory = cfg.buildSessionFactory();
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    Vehicle_list v_list = new Vehicle_list();
	    Criteria c = session.createCriteria(Airvehicle_list.class);
	    c.setProjection(Projections.property("vehicle"));
	    List list = c.list();
	    Iterator itr1 = list.iterator();
	    Iterator itr = list.iterator();
	    
	    vehicle = new String[size];
	    int i = 0;
	    
	    while (itr.hasNext())
	    {
	      vehicle[i] = itr.next().toString();
	      i++;
	    }
	    return vehicle;
	}

	@Override
	public String[] getv_imagelist() {
		Configuration cfg = new Configuration();
	    cfg.configure("hibernate.cfg.xml");
	    SessionFactory factory = cfg.buildSessionFactory();
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    Vehicle_list v_list = new Vehicle_list();
	    Criteria c = session.createCriteria(Airvehicle_list.class);
	    c.setProjection(Projections.property("v_image"));
	    List list = c.list();
	    Iterator itr1 = list.iterator();
	    Iterator itr = list.iterator();
	    
	    v_image = new String[size];
	    int i = 0;
	    
	    while (itr.hasNext())
	    {
	      v_image[i] = itr.next().toString();
	      i++;
	    }
	    return v_image;
		
	}

	
	@Override
	public String[] getBasicamtlist() {
		
		Configuration cfg = new Configuration();
	    cfg.configure("hibernate.cfg.xml");
	    SessionFactory factory = cfg.buildSessionFactory();
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    Vehicle_list v_list = new Vehicle_list();
	    Criteria c = session.createCriteria(Airvehicle_list.class);
	    c.setProjection(Projections.property("base_price"));
	    List list = c.list();
	    Iterator itr1 = list.iterator();
	    Iterator itr = list.iterator();
	    
	    base_price = new String[size];
	    int i = 0;
	    
	    while (itr.hasNext())
	    {
	      base_price[i] = itr.next().toString();
	      i++;
	    }
	    return base_price;
		
		
	}

	@Override
	public String[] getgstlist() {
		
		Configuration cfg = new Configuration();
	    cfg.configure("hibernate.cfg.xml");
	    SessionFactory factory = cfg.buildSessionFactory();
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    Vehicle_list v_list = new Vehicle_list();
	    Criteria c = session.createCriteria(Airvehicle_list.class);
	    c.setProjection(Projections.property("gst"));
	    List list = c.list();
	    Iterator itr1 = list.iterator();
	    Iterator itr = list.iterator();
	    
	   gst = new String[size];
	    int i = 0;
	    
	    while (itr.hasNext())
	    {
	      gst[i] = itr.next().toString();
	      i++;
	    }
	    return gst;
		
		
	}

	@Override
	public String[] gettotallist() {
		Configuration cfg = new Configuration();
	    cfg.configure("hibernate.cfg.xml");
	    SessionFactory factory = cfg.buildSessionFactory();
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    Vehicle_list v_list = new Vehicle_list();
	    Criteria c = session.createCriteria(Airvehicle_list.class);
	    c.setProjection(Projections.property("total"));
	    List list = c.list();
	    Iterator itr1 = list.iterator();
	    Iterator itr = list.iterator();
	    
	    total = new String[size];
	    int i = 0;
	    
	    while (itr.hasNext())
	    {
	      total[i] = itr.next().toString();
	      i++;
	    }
	    return total;
		
	}

	
}
