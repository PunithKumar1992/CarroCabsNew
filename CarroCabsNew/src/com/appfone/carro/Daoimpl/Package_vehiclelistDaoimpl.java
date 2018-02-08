package com.appfone.carro.Daoimpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.carro.Dao.Package_vehiclelistDao;
import com.appfone.carro.util.HibernateUtil;

public class Package_vehiclelistDaoimpl implements Package_vehiclelistDao {

	private String pack_vehiclename[];
	private String pack_vehicleprice[];
	private String pack_vehicleimage[];
	@Override
	public String[] getPack_vehiclename(String packselected) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
	    Session session=factory.openSession();  
	    Transaction t=session.beginTransaction();
	    t.begin();
	    
	    String sql="select vehicle_name from package_list p,packge_vehiclelist pv where p.pack_id=pv.pack_id AND p.pack_name='"+packselected+"'";
	    SQLQuery query = session.createSQLQuery(sql);
	    query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
	   
	   List list = query.list();
	   int size=list.size();
	   pack_vehiclename=new String[size];
	    Iterator itr = list.iterator();
	    for(int i=0;i<size;i++)
		   {
	    	pack_vehiclename[i]=itr.next().toString();
	    	pack_vehiclename[i]=pack_vehiclename[i].substring(14);
	    	pack_vehiclename[i]=pack_vehiclename[i].replace('}', ' ');
		   }
	  
	   t.commit();
	   session.close();
		
		return pack_vehiclename;
	}

	@Override
	public String[] getPack_vehicleprice(String packselected) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
	    Session session=factory.openSession();  
	    Transaction t=session.beginTransaction();
	    t.begin();
	    
	    String sql="select price from package_list p,packge_vehiclelist pv where p.pack_id=pv.pack_id AND p.pack_name='"+packselected+"'";
	    SQLQuery query = session.createSQLQuery(sql);
	    query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
	   
	   List list = query.list();
	   int size=list.size();
	   pack_vehicleprice=new String[size];
	    Iterator itr = list.iterator();
	    for(int i=0;i<size;i++)
		   {
	    	pack_vehicleprice[i]=itr.next().toString();
	    	pack_vehicleprice[i]=pack_vehicleprice[i].substring(7);
	    	pack_vehicleprice[i]=pack_vehicleprice[i].replace('}', ' ');
	    	
		   }
	  
	   t.commit();
	   session.close();
		
		return pack_vehicleprice;
		
	}

	@Override
	public String[] getPack_vehicleimage(String packselected) {
	
		SessionFactory factory=HibernateUtil.getSessionFactory();
	    Session session=factory.openSession();  
	    Transaction t=session.beginTransaction();
	    t.begin();
	    
	    String sql="select pack_vehicleimage from package_list p,packge_vehiclelist pv where p.pack_id=pv.pack_id AND p.pack_name='"+packselected+"'";
	    SQLQuery query = session.createSQLQuery(sql);
	    query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
	   
	   List list = query.list();
	   int size=list.size();
	   pack_vehicleimage=new String[size];
	    Iterator itr = list.iterator();
	    for(int i=0;i<size;i++)
		   {
	    	pack_vehicleimage[i]=itr.next().toString();
	    	pack_vehicleimage[i]=pack_vehicleimage[i].substring(19);
	    	pack_vehicleimage[i]=pack_vehicleimage[i].replace('}', ' ');
		   }
	  
	   t.commit();
	   session.close();
		
		return pack_vehicleimage;
	}
	
	
	
}
