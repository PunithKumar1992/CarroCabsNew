package com.appfone.carro.pojo;

import java.util.HashSet;
import java.util.Set;

public class Package_list {
	private int pack_id;
	private String pack_name;
	private String pack_image;
	private Set<Package_sightseen> sight_seen=new HashSet<Package_sightseen>();
	private Set<Package_sightseen> sub_sightseen=new HashSet<Package_sightseen>();
	private Set<Packge_vehiclelist>vehicle_name=new HashSet<Packge_vehiclelist>();
	private Set<Packge_vehiclelist>price=new HashSet<Packge_vehiclelist>();
	private Set<Packge_vehiclelist>pack_vehicleimage=new HashSet<Packge_vehiclelist>();
	private String pack_sightimage;
	
	
	public Package_list()
	{
		
	}
	public Set<Package_sightseen> getSub_sightseen() {
		return sub_sightseen;
	}
	public void setSub_sightseen(Set<Package_sightseen> sub_sightseen) {
		this.sub_sightseen = sub_sightseen;
	}
	
	public int getPack_id() {
		return pack_id;
	}
	public void setPack_id(int pack_id) {
		this.pack_id = pack_id;
	}
	public String getPack_name() {
		return pack_name;
	}
	public void setPack_name(String pack_name) {
		this.pack_name = pack_name;
	}
	public String getPack_image() {
		return pack_image;
	}
	public void setPack_image(String pack_image) {
		this.pack_image = pack_image;
	}
	public Set<Package_sightseen> getSight_seen() {
		return sight_seen;
	}
	public void setSight_seen(Set<Package_sightseen> sight_seen) {
		this.sight_seen = sight_seen;
	}
	
	
	

	

public Set<Packge_vehiclelist> getVehicle_name() {
		return vehicle_name;
	}
	public void setVehicle_name(Set<Packge_vehiclelist> vehicle_name) {
		this.vehicle_name = vehicle_name;
	}
	public Set<Packge_vehiclelist> getPrice() {
		return price;
	}
	public void setPrice(Set<Packge_vehiclelist> price) {
		this.price = price;
	}
	public Set<Packge_vehiclelist> getPack_vehicleimage() {
		return pack_vehicleimage;
	}
	public void setPack_vehicleimage(Set<Packge_vehiclelist> pack_vehicleimage) {
		this.pack_vehicleimage = pack_vehicleimage;
	}
	
	

public String getPack_sightimage() {
		return pack_sightimage;
	}
	public void setPack_sightimage(String pack_sightimage) {
		this.pack_sightimage = pack_sightimage;
	}
public String toString()
{
	return pack_name+" "+pack_image;
}
}
