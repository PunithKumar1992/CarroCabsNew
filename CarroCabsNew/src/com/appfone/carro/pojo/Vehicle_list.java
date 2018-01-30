package com.appfone.carro.pojo;

public class Vehicle_list
{
  private int v_id;
  
  private String vehicle;
  private String km_per_day;
  private String price_per_km;
  private String driverbata;
  private String v_image;
  
  public Vehicle_list() {}
  
  public int getV_id()
  {
    return v_id;
  }
  
  public void setV_id(int v_id) { this.v_id = v_id; }
  
  public String getVehicle() {
    return vehicle;
  }
  
  public void setVehicle(String vehicle) { this.vehicle = vehicle; }
  
  public String getKm_per_day() {
    return km_per_day;
  }
  
  public void setKm_per_day(String km_per_day) { this.km_per_day = km_per_day; }
  
  public String getPrice_per_km() {
    return price_per_km;
  }
  
  public void setPrice_per_km(String price_per_km) { this.price_per_km = price_per_km; }
  
  public String getDriverbata() {
    return driverbata;
  }
  
  public void setDriverbata(String driverbata) { this.driverbata = driverbata; }
  
  public String getV_image() {
    return v_image;
  }
  
  public void setV_image(String v_image) { this.v_image = v_image; }
  


  public String toString()
  {
    return v_id + " " + vehicle + " " + km_per_day + " " + price_per_km + " " + driverbata + " " + v_image;
  }
}