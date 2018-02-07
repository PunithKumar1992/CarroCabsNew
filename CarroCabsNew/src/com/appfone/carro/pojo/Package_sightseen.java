package com.appfone.carro.pojo;

public class Package_sightseen {
	private int pack_sightid;
	private String sight_seen;
	private String sub_sightseen;
	private Package_list packlist;
	
	public Package_sightseen()
	{
		
		
	}
	
	public int getPack_sightid() {
		return pack_sightid;
	}
	public void setPack_sightid(int pack_sightid) {
		this.pack_sightid = pack_sightid;
	}
	public String getSight_seen() {
		return sight_seen;
	}
	public void setSight_seen(String sight_seen) {
		this.sight_seen = sight_seen;
	}
	public String getSub_sightseen() {
		return sub_sightseen;
	}
	public void setSub_sightseen(String sub_sightseen) {
		this.sub_sightseen = sub_sightseen;
	}
	public Package_list getPacklist() {
		return packlist;
	}
	public void setPacklist(Package_list packlist) {
		this.packlist = packlist;
	}
public String toString()
{
	return sight_seen+"."+sub_sightseen;
}
}
