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

public class MainTest {

	
	
	public static void main(String[] args) {
		
		
		
		Configuration cfg=new Configuration();  
	    cfg.configure("hibernate.cfg.xml");//populates the data of the configuration file  
	    SessionFactory factory=cfg.buildSessionFactory();  
	    Session session=factory.openSession();  
	    Transaction t=session.beginTransaction();
	    t.begin();
	    String sql="select sub_sightseen from package_list p,package_sightseen ps where p.pack_id=ps.pack_id AND p.pack_name='Mysore Coorg 3Days 2Night Package'";
	  
	    
	    
	    
	    SQLQuery query = session.createSQLQuery(sql);
	   query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
	   
	   List result = query.list();
	   
	   Iterator itr= result.iterator();
	   
	   while(itr.hasNext())
	   {
		   System.out.println(itr.next());
	   }
	   
	}
}
