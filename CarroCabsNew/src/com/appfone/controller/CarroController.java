package com.appfone.controller;

import java.io.IOException;
import java.io.PrintStream;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.appfone.carro.util.EmailUtility;
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
    HttpSession session = request.getSession();
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
  

  @RequestMapping(value="/Contactinfo", method=RequestMethod.POST)
  public ModelAndView contactinfoControll(@RequestParam Map<String, String> reqparameter, HttpServletRequest request)
  {
    HttpSession session = request.getSession();
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

  
}