package com.appfone.controller;

import java.io.PrintStream;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class CarroController
{
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
}