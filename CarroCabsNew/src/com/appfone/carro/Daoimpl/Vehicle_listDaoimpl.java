package com.appfone.carro.Daoimpl;

import com.appfone.carro.Dao.Vehicle_listDao;
import com.appfone.carro.pojo.Tripbooking;
import com.appfone.carro.pojo.Vehicle_list;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Projections;

public class Vehicle_listDaoimpl implements Vehicle_listDao
{
  private int[] v_id;
  private String[] vehicle;
  private String[] km_per_day;
  private String[] price_km;
  private String[] driverdata;
  private String[] v_image;
  private int size = 0;
  

  public Vehicle_listDaoimpl() {}
  
  public int getcountlist()
  {
    Configuration cfg = new Configuration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory factory = cfg.buildSessionFactory();
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();
    Query query = session.createQuery("select count(*) from Vehicle_list");
    List list = query.list();
    Iterator itr = list.iterator();
    size = Integer.parseInt(itr.next().toString());
    return size;
  }
  


  public String[] getVehiclenameslist()
  {
    Configuration cfg = new Configuration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory factory = cfg.buildSessionFactory();
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();
    Vehicle_list v_list = new Vehicle_list();
    Criteria c = session.createCriteria(Vehicle_list.class);
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
  


  public String[] getkm_per_daylist()
  {
    Configuration cfg = new Configuration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory factory = cfg.buildSessionFactory();
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();
    Vehicle_list v_list = new Vehicle_list();
    Criteria c = session.createCriteria(Vehicle_list.class);
    c.setProjection(Projections.property("km_per_day"));
    List list = c.list();
    km_per_day = new String[size];
    int i = 0;
    Iterator itr = list.iterator();
    while (itr.hasNext())
    {
      km_per_day[i] = itr.next().toString();
      i++;
    }
    
    return km_per_day;
  }
  
  public String[] getprice_kmlist()
  {
    Configuration cfg = new Configuration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory factory = cfg.buildSessionFactory();
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();
    Vehicle_list v_list = new Vehicle_list();
    Criteria c = session.createCriteria(Vehicle_list.class);
    c.setProjection(Projections.property("price_per_km"));
    List list = c.list();
    Iterator itr1 = list.iterator();
    price_km = new String[size];
    int i = 0;
    Iterator itr = list.iterator();
    while (itr.hasNext())
    {
      price_km[i] = itr.next().toString();
      i++;
    }
    
    return price_km;
  }
  
  public String[] getdriverbatalist()
  {
    Configuration cfg = new Configuration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory factory = cfg.buildSessionFactory();
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();
    Vehicle_list v_list = new Vehicle_list();
    Criteria c = session.createCriteria(Vehicle_list.class);
    c.setProjection(Projections.property("driverbata"));
    List list = c.list();
    Iterator itr1 = list.iterator();
    driverdata = new String[size];
    int i = 0;
    Iterator itr = list.iterator();
    while (itr.hasNext())
    {
      driverdata[i] = itr.next().toString();
      i++;
    }
    return driverdata;
  }
  

  public String[] getv_imagelist()
  {
    Configuration cfg = new Configuration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory factory = cfg.buildSessionFactory();
    Session session = factory.openSession();
    Transaction t = session.beginTransaction();
    Vehicle_list v_list = new Vehicle_list();
    Criteria c = session.createCriteria(Vehicle_list.class);
    c.setProjection(Projections.property("v_image"));
    List list = c.list();
    Iterator itr1 = list.iterator();
    v_image = new String[size];
    int i = 0;
    Iterator itr = list.iterator();
    while (itr.hasNext())
    {
      v_image[i] = itr.next().toString();
      i++;
    }
    

    return v_image;
  }


}