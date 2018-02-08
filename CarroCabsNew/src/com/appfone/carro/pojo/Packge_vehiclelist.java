package com.appfone.carro.pojo;

public class Packge_vehiclelist {
	
	private int pv_id;
	private String vehicle_name;
	private String price;
	private String pack_vehicleimage;
	private Package_list packlist;
	
	public int getPv_id() {
		return pv_id;
	}
	public void setPv_id(int pv_id) {
		this.pv_id = pv_id;
	}
	public String getVehicle_name() {
		return vehicle_name;
	}
	public void setVehicle_name(String vehicle_name) {
		this.vehicle_name = vehicle_name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	


	

public Package_list getPacklist() {
		return packlist;
	}
	public void setPacklist(Package_list packlist) {
		this.packlist = packlist;
	}
public String getPack_vehicleimage() {
		return pack_vehicleimage;
	}
	public void setPack_vehicleimage(String pack_vehicleimage) {
		this.pack_vehicleimage = pack_vehicleimage;
	}
public String toString()
{
	return vehicle_name+" "+price+" " +pack_vehicleimage;
}
}
