package com.appfone.carro.Dao;

import javax.servlet.http.HttpServletRequest;

public interface Vehicle_listDao {
	
	public abstract String[] getVehiclenameslist();
	  
	  public abstract String[] getkm_per_daylist();
	  
	  public abstract String[] getprice_kmlist();
	  
	  public abstract String[] getdriverbatalist();
	  
	  public abstract String[] getv_imagelist();
	  
	  public abstract int getcountlist();
	  
}
