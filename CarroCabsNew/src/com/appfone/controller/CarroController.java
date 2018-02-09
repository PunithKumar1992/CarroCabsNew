package com.appfone.controller;

import java.io.IOException;
import java.io.PrintStream;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.PathParam;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.appfone.carro.Daoimpl.AirportbookingDaoimpl;
import com.appfone.carro.Daoimpl.PackagebookingDaoimpl;
import com.appfone.carro.Daoimpl.TripbookingDaoimpl;
import com.appfone.carro.pojo.Trip;
import com.appfone.carro.util.Airportpdf;
import com.appfone.carro.util.EmailUtility;
import com.appfone.carro.util.Packagepdf;
import com.appfone.carro.util.SmsApi;
import com.appfone.carro.util.TripPdf;




@Controller
public class CarroController
{
	@Autowired
	private ServletContext context; 
  public CarroController() {}
  
  @RequestMapping({"/about"})
  public ModelAndView aboutusControll()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("about");
    return mv;
  }
  

  @RequestMapping({"/packages"})
  public ModelAndView packageControll()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("packages");
    return mv;
  }
  

  @RequestMapping({"/faq"})
  public ModelAndView faqControll()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("faq");
    return mv;
  }
  


  @RequestMapping({"/contact-us"})
  public ModelAndView contactusControll()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("contact-us");
    return mv;
  }
  

  @RequestMapping({"/outstation"})
  public ModelAndView outStationControll()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("outstation");
    return mv;
  }
  

  @RequestMapping({"/onedaypackage"})
  public ModelAndView oneDayPackageControll()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("onedaypackage");
    return mv;
  }
  

  @RequestMapping({"/packagetour"})
  public ModelAndView packagetourControll()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("packagetour");
    return mv;
  }
  

  @RequestMapping({"/corporate"})
  public ModelAndView corporateControll()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("corporate");
    return mv;
  }
  

  @RequestMapping({"/gallery"})
  public ModelAndView galleryControll()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("gallery");
    return mv;
  }
  

  @RequestMapping({"/testimonial"})
  public ModelAndView testimonialControll()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("testimonial");
    return mv;
  }
  

  @RequestMapping({"/CarList"})
  public ModelAndView CarListControll(@RequestParam Map<String, String> reqpar, HttpServletRequest request)
  {
    HttpSession session = request.getSession(false);
    String way = (String)reqpar.get("way");
    String source = (String)reqpar.get("source");
    String destination = (String)reqpar.get("destination");
    String date = (String)reqpar.get("date");
    String distance = (String)reqpar.get("distance");
    String day = (String)reqpar.get("days2");
    System.out.println("days is " + day);
    

    session.setAttribute("way", way);
    session.setAttribute("source", source);
    session.setAttribute("destination", destination);
    session.setAttribute("date", date);
    session.setAttribute("day", day);
    session.setAttribute("distance", distance);
    
    ModelAndView mv = new ModelAndView();
    mv.setViewName("CarList");
    return mv;
  }
  
  
  
  
  

  @RequestMapping(value="/Contactinfo")
  public ModelAndView contactinfoControll(@RequestParam Map<String, String> reqparameter, HttpServletRequest request)
  {
    HttpSession session = request.getSession(false);
    String car = (String)reqparameter.get("car");
    String perday = (String)reqparameter.get("perday");
    String price = (String)reqparameter.get("price");
    String driverbata = (String)reqparameter.get("driverbata");
    String vimage = (String)reqparameter.get("vimage");
    session.setAttribute("car", car);
    session.setAttribute("perday", perday);
    session.setAttribute("price", price);
    session.setAttribute("driverbata", driverbata);
    session.setAttribute("vimage", vimage);
    

    
    ModelAndView mv = new ModelAndView();
    mv.setViewName("Contactinfo");
    return mv;
  }
  
  
  @RequestMapping({"/CarListl"})
  public ModelAndView carlist1Controll()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("CarList");
    return mv;
  }
  
  @RequestMapping({"/Booking"})
  public ModelAndView bookingControll(@RequestParam Map<String, String> reqparam,HttpServletRequest request)
  {
	  HttpSession session= request.getSession();
	  String fullname=reqparam.get("fullname");
	  String phone=reqparam.get("phone");
	  String email =reqparam.get("email");
	  String address=reqparam.get("address");
	  session.setAttribute("fullname", fullname);
	  session.setAttribute("phone", phone);
	  session.setAttribute("email", email);
	  session.setAttribute("address", address);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("booking");
    return mv;
  }
  
  
  
  
  @RequestMapping({"/Final"})
  public ModelAndView FinalControll(HttpServletRequest  request,HttpServletResponse response)
  {
	  HttpSession session = request.getSession();
	  String fullname=session.getAttribute("fullname").toString();
	  String relativeWebPath = "/resource/pdf/"+fullname +".pdf";
		String absoluteDiskPath = context.getRealPath(relativeWebPath);
		System.out.println("absolutepath is" +absoluteDiskPath);
		String imgrelativePath = "/images/cp-logo.png";
		String imgabsolutePath = context.getRealPath(imgrelativePath);
		String to=session.getAttribute("email").toString();
		String subject="Booking Confirmation Mail";
		String msg ="Thank You for Using Carrocabs."+"\n" +" Your Booking is confirmed. Our Representative will Contatct You soon."+"\n"+"Find Your Booking Details in the below attacthment" +"\n" +"For More Queries Contact This No: 9342424268";
		
		String phonenumber= session.getAttribute("phone").toString();
		String car = session.getAttribute("car").toString();
		String source=session.getAttribute("source").toString();
		String destination=session.getAttribute("destination").toString();
		String email=session.getAttribute("email").toString();
		String grandtotal=session.getAttribute("grandtotal").toString();
		TripPdf tpdf=new TripPdf();
		try {
			tpdf.createPdf(request, response, absoluteDiskPath, imgabsolutePath);
		} catch (IOException e) {
			e.printStackTrace();
		}
	    TripbookingDaoimpl tpb=new TripbookingDaoimpl();
	    tpb.saveTrip(request);
		
		EmailUtility email1 = new EmailUtility();
		email1.sendMail(to, subject, msg, absoluteDiskPath, fullname);
		email1.sendMail("seema.yaladagi156@gmail.com", "Rider Booking Details", "Find the booking Details in the below Attachment", absoluteDiskPath, fullname);
		email1.delfile(absoluteDiskPath);
		
		 new SmsApi().sendSms(phonenumber, "Thank You For Choosing carrocabs. Your Booking is Confirmed Our Representative will Contact you Shortly.");
	       String userMsg ="Hi New Trip Booking Arrived. \n"
	       		+ "Selected Vehicle:"+car+"\n"
	       				+ "Pick'Up Point :"+source+"\n"
	       				+ "Destination :"+destination+"\n"
	       				+ "Name :"+fullname+"\n"
	       				+ "MobileNo :"+phonenumber+"\n"
	       				+ "Email :"+email+"\n"
	       				+ "Approx amount :"+grandtotal +"0 Rs";
	    		   
	       String sms2= new SmsApi().sendSms(/*"9886038268,7353723333"*/"9845214968,8951858472", userMsg);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("popup");
    return mv;
  }

  @RequestMapping(value="/AirCarList")
  public ModelAndView aircarlistControll(@RequestParam Map<String, String>reqparam,HttpServletRequest request)
  {
	HttpSession session = request.getSession();
	String airway=reqparam.get("airway");
	String airsource=reqparam.get("airsource");
	String airdestination=reqparam.get("airdestination");
	String airdate=reqparam.get("airdate");
	
	session.setAttribute("airway", airway);
	session.setAttribute("airsource", airsource);
	session.setAttribute("airdestination", airdestination);
	session.setAttribute("airdate", airdate);
	
    ModelAndView mv = new ModelAndView();
    mv.setViewName("aircarlist");
    return mv;
  }
  
  @RequestMapping({"/Aircontactinfo"})
  public ModelAndView aircontactinfoControll(@RequestParam Map<String, String> reqparam,HttpServletRequest request)
  {
	  HttpSession session=request.getSession();
	  String aircar=reqparam.get("aircar");
	  String airbasicamt=reqparam.get("airbasicamt");
	  String airgst=reqparam.get("airgst");
	  String airtotal=reqparam.get("airtotal");
	  session.setAttribute("aircar", aircar);
	  session.setAttribute("airbasicamt", airbasicamt);
	  session.setAttribute("airgst", airgst);
	  session.setAttribute("airtotal", airtotal);
	  
	  
    ModelAndView mv = new ModelAndView();
    mv.setViewName("aircontactinfo");
    return mv;
  }
  
  @RequestMapping(value="/airBooking")
  public ModelAndView airbookingControll(@RequestParam Map<String, String>reqparam,HttpServletRequest request)
  {
	  HttpSession session = request.getSession();
	  
	String airfullname=reqparam.get("airfullname");
	String airphone=reqparam.get("airphone");
	String airemail=reqparam.get("airemail");
	String airaddress=reqparam.get("airaddress");
	session.setAttribute("airfullname", airfullname);
	session.setAttribute("airphone", airphone);
	session.setAttribute("airemail", airemail);
	session.setAttribute("airaddress", airaddress);
    ModelAndView mv = new ModelAndView();
    mv.setViewName("airBooking");
    return mv;
  }
  
  @RequestMapping(value="/airportFinal")
  public ModelAndView airportFinalControll(HttpServletRequest request,HttpServletResponse response)
  {
	  HttpSession session=request.getSession();
	  String airfullname=session.getAttribute("airfullname").toString();
	  String airphonenumber=session.getAttribute("airphone").toString();
	  String aircar=session.getAttribute("aircar").toString();
	  String airsource=session.getAttribute("airsource").toString();
	  String airdestination=session.getAttribute("airdestination").toString();
	  String airemail=session.getAttribute("airemail").toString();
	  String airtotal=session.getAttribute("airtotal").toString();
	  String relativeWebPath = "/airresource/pdf/"+airfullname +".pdf";
		String absoluteDiskPath = context.getRealPath(relativeWebPath);
		
		String imgrelativePath = "/images/cp-logo.png";
		String imgabsolutePath = context.getRealPath(imgrelativePath);
		
		String subject="Booking Confirmation Mail";
		String msg ="Thank You for Using Carrocabs."+"\n" +" Your Booking is confirmed. Our Representative will Contatct You soon."+"\n"+"Find Your Booking Details in the below attacthment" +"\n" +"For More Queries Contact This No: 9342424268";
		
		
	  AirportbookingDaoimpl airport=new AirportbookingDaoimpl();
	  airport.saveTrip(request);
	  Airportpdf airpdf = new Airportpdf();
	  try {
		airpdf.createPdf(request, response, absoluteDiskPath, imgabsolutePath);
	} catch (IOException e) {

		e.printStackTrace();
	}
	  new SmsApi().sendSms(airphonenumber, "Thank You For Choosing carrocabs. Your Booking is Confirmed Our Representative will Contact you Shortly.");
      String userMsg ="Hi New Airport Trip Booking Arrived. \n"
      		+ "Selected Vehicle:"+aircar+"\n"
      				+ "Pick'Up Point :"+airsource+"\n"
      				+ "Destination :"+airdestination+"\n"
      				+ "Name :"+airfullname+"\n"
      				+ "MobileNo :"+airphonenumber+"\n"
      				+ "Email :"+airemail+"\n"
      				+ "Approx amount :"+airtotal +"0 Rs";
   		   
      String sms2= new SmsApi().sendSms(/*"9886038268,7353723333"*/"9845214968,8951858472", userMsg);

      EmailUtility email1 = new EmailUtility();
		email1.sendMail(airemail, subject, msg, absoluteDiskPath, airfullname);
		email1.sendMail("seema.yaladagi156@gmail.com", "Rider Booking Details", "Find the booking Details in the below Attachment", absoluteDiskPath, airfullname);
		email1.delfile(absoluteDiskPath);
		
    ModelAndView mv = new ModelAndView();
    mv.setViewName("popup");
    return mv;
  }
  
  @RequestMapping(value="/package_info1")
  public ModelAndView package_info1Controll(@RequestParam Map<String, String>reqparam,HttpServletRequest request)
  {

	  String packselected=reqparam.get("packselected");
	  String packselectedimg=reqparam.get("packselectedimg");
	  HttpSession session = request.getSession();
	  session.setAttribute("packselected", packselected);
	  session.setAttribute("packselectedimg", packselectedimg);
	  
	      ModelAndView mv = new ModelAndView();
    mv.setViewName("package_info1");
    return mv;
  }
  
  @RequestMapping(value="/PackCarList")
  public ModelAndView PackCarListControll()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("PackCarList");
    return mv;
  }
  
  @RequestMapping({"/packagecontact_info"})
  public ModelAndView packagecontact_infoControll(@RequestParam Map<String, String> reqparam,HttpServletRequest request)
  {
	  HttpSession session = request.getSession();
	  String package_vehiclename=reqparam.get("package_vehiclename");
	  String package_vehicleprice=reqparam.get("package_vehicleprice");
	  String package_vehicleimage=reqparam.get("package_vehicleimage");
	  
	  System.out.println("package car name"  +package_vehiclename);
	 session.setAttribute("package_vehiclename", package_vehiclename);
	 session.setAttribute("package_vehicleprice", package_vehicleprice);
	 session.setAttribute("package_vehicleimage", package_vehicleimage);
	 
    ModelAndView mv = new ModelAndView();
    mv.setViewName("packagecontact_info");
    return mv;
  }
  
  @RequestMapping({"/package_info2"})
  public ModelAndView package_info2Controll()
  {
	 
    ModelAndView mv = new ModelAndView();
    mv.setViewName("packages");
    return mv;
  }
  
  @RequestMapping({"/packagebooking"})
  public ModelAndView packageFinalControll(@RequestParam Map<String, String>reqparam,HttpServletRequest request)
  {
	  HttpSession session=request.getSession();
	 String packagefullname=reqparam.get("packagefullname");
	 String packagephone=reqparam.get("packagephone");
	 String packageemail=reqparam.get("packageemail");
	 String packageaddress=reqparam.get("packageaddress");
	 String packagedate=reqparam.get("packagedate");
	 String packagesource=reqparam.get("packagesource");
	 session.setAttribute("packagefullname", packagefullname);
	 session.setAttribute("packagephone", packagephone);
	 session.setAttribute("packageemail", packageemail);
	 session.setAttribute("packageaddress", packageaddress);
	 session.setAttribute("packagedate", packagedate);
	 session.setAttribute("packagesource", packagesource);
	 
	 
	 
	 
    ModelAndView mv = new ModelAndView();
    mv.setViewName("packagebooking");
    return mv;
  }
  
  @RequestMapping(value="/packageFinal")
  public ModelAndView packageFinalControll(HttpServletRequest request,HttpServletResponse response)
  {
	  HttpSession session=request.getSession();
	  String packagefullname=session.getAttribute("packagefullname").toString();
	  String packagephone=session.getAttribute("packagephone").toString();
	  String package_vehiclename=session.getAttribute("package_vehiclename").toString();
	  String packageemail=session.getAttribute("packageemail").toString();
	  String packagetotal=session.getAttribute("packagetotal").toString();
	  String packselected=session.getAttribute("packselected").toString();
	  String packagedate=session.getAttribute("packagedate").toString();
	  String packagepickup_point=session.getAttribute("packagesource").toString();
	  
	  String relativeWebPath = "/packageresource/pdf/"+packagefullname +".pdf";
		String absoluteDiskPath = context.getRealPath(relativeWebPath);
		
		String imgrelativePath = "/images/cp-logo.png";
		String imgabsolutePath = context.getRealPath(imgrelativePath);
		
		String subject="Booking Confirmation Mail";
		String msg ="Thank You for Using Carrocabs."+"\n" +" Your Booking is confirmed. Our Representative will Contatct You soon."+"\n"+"Find Your Booking Details in the below attacthment" +"\n" +"For More Queries Contact This No: 9342424268";
		
		PackagebookingDaoimpl packbooking= new PackagebookingDaoimpl();
		packbooking.savePackagebooking(request);
		 Packagepdf packpdf = new Packagepdf();
		  try {
			packpdf.createPdf(request, response, absoluteDiskPath, imgabsolutePath);
		} catch (IOException e) {

			e.printStackTrace();
		}
	 
	  new SmsApi().sendSms(packagephone, "Thank You For Choosing carrocabs. Your Booking is Confirmed Our Representative will Contact you Shortly.");
      String userMsg ="Hi New"+" "+packselected +"Package Trip Booking Arrived. \n"
      		+ "Selected Vehicle:"+package_vehiclename+"\n"
      				+ "Name :"+packagefullname+"\n"
      				+ "MobileNo :"+packagephone+"\n"
      				+ "Date :"+packagedate+"\n"
      				+ "Pickup_point :"+packagepickup_point+"\n"
      				+ "Email :"+packageemail+"\n"
      				+ "Approx amount :"+packagetotal +"0 Rs";
   		   
      String sms2= new SmsApi().sendSms(/*"9886038268,7353723333"*/"9845214968,8951858472", userMsg);

      EmailUtility email1 = new EmailUtility();
		email1.sendMail(packageemail, subject, msg, absoluteDiskPath, packagefullname);
		email1.sendMail("seema.yaladagi156@gmail.com", "Rider Booking Details", "Find the booking Details in the below Attachment", absoluteDiskPath, packagefullname);
		email1.delfile(absoluteDiskPath);
		
    ModelAndView mv = new ModelAndView();
    mv.setViewName("popup");
    return mv;
  }
  
  
}