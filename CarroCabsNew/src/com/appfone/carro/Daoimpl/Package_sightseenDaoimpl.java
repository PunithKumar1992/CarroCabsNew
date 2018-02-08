package com.appfone.carro.Daoimpl;

import java.util.Iterator;
import java.util.List;

import org.apache.hadoop.classification.InterfaceAudience.Private;
import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.appfone.carro.Dao.Package_sightseenDao;
import com.appfone.carro.util.HibernateUtil;

public class Package_sightseenDaoimpl implements Package_sightseenDao {
	private String[] pack_sightseen;
	private String[] pack_subsightseen;
	

	@Override
	public String[] getpackage_sightseen(String package1) {
		
		SessionFactory factory=HibernateUtil.getSessionFactory();
	    Session session=factory.openSession();  
	    Transaction t=session.beginTransaction();
	    t.begin();
	    
	    String sql="select sight_seen from package_list p,package_sightseen ps where p.pack_id=ps.pack_id AND p.pack_name='"+package1+"'";
	    SQLQuery query = session.createSQLQuery(sql);
	    query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
	   
	   List list = query.list();
	   int size=list.size();
	   pack_sightseen=new String[size];
	    Iterator itr = list.iterator();
	    for(int i=0;i<size;i++)
		   {
			   pack_sightseen[i]=itr.next().toString();
			   pack_sightseen[i]=pack_sightseen[i].substring(12);
			   pack_sightseen[i]=pack_sightseen[i].replace('}', ' ');
		   }
	  
	   t.commit();
	   session.close();
	  
		return pack_sightseen;
	}

	@Override
	public String[] getpackage_subsightseen(String package1) {
		SessionFactory factory=HibernateUtil.getSessionFactory();
	    Session session=factory.openSession();  
	    Transaction t=session.beginTransaction();
	    t.begin();
	    String sql="select sub_sightseen from package_list p,package_sightseen ps where p.pack_id=ps.pack_id AND p.pack_name='"+package1+"'";
	    SQLQuery query = session.createSQLQuery(sql);
	    query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
	   
	   List list = query.list();
	   int size=list.size();
	   pack_subsightseen=new String[size];
	    Iterator itr = list.iterator();
	    for(int i=0;i<size;i++)
		   {
			   pack_subsightseen[i]=itr.next().toString();
			   pack_subsightseen[i]=pack_subsightseen[i].substring(15);
			   pack_subsightseen[i]=pack_subsightseen[i].replace('}', ' ');
		   }
	    t.commit();
	   session.close();
	  
	   return pack_subsightseen;
	 
	}
	
	
	
	
}
