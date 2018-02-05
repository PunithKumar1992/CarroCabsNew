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

import com.appfone.carro.Dao.Package_listDao;
import com.appfone.carro.pojo.Package_list;
import com.appfone.carro.pojo.Vehicle_list;

public class Package_listDaoimpl implements Package_listDao {

	private int size=0;
	private String[] package_list;
	private String[] pack_images;
	@Override
	public int getcountlist() {
		 Configuration cfg = new Configuration();
		    cfg.configure("hibernate.cfg.xml");
		    SessionFactory factory = cfg.buildSessionFactory();
		    Session session = factory.openSession();
		    Transaction t = session.beginTransaction();
		    Query query = session.createQuery("select count(*) from Package_list");
		    List list = query.list();
		    Iterator itr = list.iterator();
		    size = Integer.parseInt(itr.next().toString());
		    return size;
	}

	@Override
	public String[] getPackagenameslist() {
		Configuration cfg = new Configuration();
	    cfg.configure("hibernate.cfg.xml");
	    SessionFactory factory = cfg.buildSessionFactory();
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    Package_list v_list = new Package_list();
	    Criteria c = session.createCriteria(Package_list.class);
	    c.setProjection(Projections.property("pack_name"));
	    List list = c.list();
	    Iterator itr1 = list.iterator();
	    Iterator itr = list.iterator();
	    
	    package_list = new String[size];
	    int i = 0;
	    
	    while (itr.hasNext())
	    {
	      package_list[i] = itr.next().toString();
	      i++;
	    }
	    return package_list;
		
	}
	
	public static void main(String[] args) {
		int count=0;
		Package_listDaoimpl package_list=new Package_listDaoimpl();
		count=package_list.getcountlist();
		String package_list1[] = new String[count];
		package_list1=package_list.getPackagenameslist();
		for(int i=0;i<count;i++)
		{
			
			System.out.println(package_list1[i]);
		}
		
		
		
	}

	@Override
	public String[] getpack_imagelist() {
		Configuration cfg = new Configuration();
	    cfg.configure("hibernate.cfg.xml");
	    SessionFactory factory = cfg.buildSessionFactory();
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    Vehicle_list v_list = new Vehicle_list();
	    Criteria c = session.createCriteria(Package_list.class);
	    c.setProjection(Projections.property("pack_image"));
	    List list = c.list();
	    Iterator itr1 = list.iterator();
	    pack_images = new String[size];
	    int i = 0;
	    Iterator itr = list.iterator();
	    while (itr.hasNext())
	    {
	      pack_images[i] = itr.next().toString();
	      i++;
	    }
	    

	    return pack_images;
		
	}

}
