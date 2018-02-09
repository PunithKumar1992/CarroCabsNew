package com.appfone.carro.Daoimpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Projections;

import com.appfone.carro.Dao.Package_listDao;
import com.appfone.carro.pojo.Package_list;
import com.appfone.carro.pojo.Vehicle_list;
import com.appfone.carro.util.HibernateUtil;

public class Package_listDaoimpl implements Package_listDao {

	private int size = 0;
	private String[] package_list;
	private String[] pack_images;
	private String pack_sightimages;
	private String pack_selected;

	@Override
	public int getcountlist() {
		SessionFactory factory = HibernateUtil.getSessionFactory();
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
		SessionFactory factory=HibernateUtil.getSessionFactory();
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

		while (itr.hasNext()) {
			package_list[i] = itr.next().toString();
			i++;
		}
		return package_list;

	}

	


	@Override
	public String[] getpack_imagelist() {
		SessionFactory factory=HibernateUtil.getSessionFactory();
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
		while (itr.hasNext()) {
			pack_images[i] = itr.next().toString();
			i++;
		}

		return pack_images;

	}

	@Override
	public String getpack_sightimagelist(String packselected) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
	    Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		Vehicle_list v_list = new Vehicle_list();
		 String sql="select pack_sightimage from package_list p where  p.pack_name='"+packselected+"'";
		    SQLQuery query = session.createSQLQuery(sql);
		    query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
		List list= query.list();
		    Iterator itr1 = list.iterator();
		while (itr1.hasNext()) {
			pack_sightimages=itr1.next().toString();
		}
		pack_sightimages=pack_sightimages.substring(17);
		pack_sightimages=pack_sightimages.replace('}', ' ');
		
		
		return pack_sightimages;
		
	}
	
	

	

}
