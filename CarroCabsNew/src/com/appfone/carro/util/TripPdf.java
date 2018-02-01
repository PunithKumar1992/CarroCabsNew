package com.appfone.carro.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.channels.Pipe;
import java.sql.Blob;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
 import javax.servlet.annotation.WebServlet;
 import javax.servlet.http.HttpServlet;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 import javax.servlet.http.HttpSession;

 import java.io.File;

 import java.io.FileOutputStream;
 import java.io.OutputStream;
 import java.util.Date;
import java.util.Properties;

import com.itextpdf.text.BaseColor;
 import com.itextpdf.text.Chunk;
 import com.itextpdf.text.Document;
 import com.itextpdf.text.Element;
 import com.itextpdf.text.Image;
 import com.itextpdf.text.List;
 import com.itextpdf.text.ListItem;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
 import com.itextpdf.text.pdf.PdfPCell;
 import com.itextpdf.text.pdf.PdfPTable;
 import com.itextpdf.text.pdf.PdfWriter;
 import com.lowagie.text.Rectangle;
 import javax.activation.DataHandler;
 import javax.activation.DataSource;
 import javax.activation.FileDataSource;
 import javax.mail.BodyPart;
 import javax.mail.Message;
 import javax.mail.MessagingException;
 import javax.mail.Multipart;
 import javax.mail.PasswordAuthentication;
 import javax.mail.Session;
 import javax.mail.Transport;
 import javax.mail.internet.InternetAddress;  
 import javax.mail.internet.MimeBodyPart;
 import javax.mail.internet.MimeMessage;
 import javax.mail.internet.MimeMessage.RecipientType;
 import javax.mail.internet.MimeMultipart;




@WebServlet("/PdfServlet")


public class TripPdf  {
	private String host;
	private String port;
	private String user;
	private String pass;
	

	
	
String recipient=null;
String subject=null;
String content=null;
String email=null;
String fullname=null;
	
	public void createPdf(HttpServletRequest request, HttpServletResponse response,String absoluteDiskPath,String imgabsolutePath) throws  IOException {
	
		PrintWriter out=response.getWriter();
		HttpSession session =request.getSession();
		String car=session.getAttribute("car").toString();
		String price=session.getAttribute("price").toString();
		String perday=session.getAttribute("perday").toString();
		String driverbata=session.getAttribute("driverbata").toString();
		String source=session.getAttribute("source").toString();
		String destination=session.getAttribute("destination").toString();
		String distance=session.getAttribute("idistance").toString();
		distance=distance+"km";
		String way=session.getAttribute("way").toString();
		String date=session.getAttribute("date").toString();
		String days=session.getAttribute("day").toString();
		fullname=session.getAttribute("fullname").toString();
		 email=session.getAttribute("email").toString();
		String phonenumber=session.getAttribute("phone").toString();
		String Address=session.getAttribute("address").toString();
		String basicamt=session.getAttribute("basicamt").toString();
		basicamt=basicamt+"0 Rs";
		String finalbata=session.getAttribute("finaldriverbata").toString();
		finalbata=finalbata+"0 Rs";
		String gst=session.getAttribute("gst").toString();
		gst=gst+"0 Rs";
		String grandtotal=session.getAttribute("grandtotal").toString();
		grandtotal=grandtotal+"0 Rs";
		
		
		
		
try {
	
	Document document = new Document();
	
	
	PdfWriter pdfWriter = PdfWriter.getInstance(document, new FileOutputStream(absoluteDiskPath));
	document.open();
				
			pdfWriter.setPageEvent(new PDFEventListener());

			
		    

     Image image = Image.getInstance (imgabsolutePath);
     image.scaleAbsolute(120f, 60f); 


     PdfPTable table=new PdfPTable(2);

                     PdfPCell cell = new PdfPCell (new Paragraph ("Order Booking Details"));
      table.getDefaultCell().setBorder(PdfPCell.NO_BORDER);
      cell.setColspan (2);
      cell.setBorder(Rectangle.NO_BORDER);
      cell.setHorizontalAlignment (Element.ALIGN_CENTER);
      cell.setPadding (10.0f);
      cell.setBackgroundColor (new BaseColor (145, 225, 85));  
     
      
      PdfPCell cell1 = new PdfPCell (new Paragraph(""));
      
      cell1.setColspan (2);
      cell1.setBorder(Rectangle.NO_BORDER);
      cell1.setHorizontalAlignment (Element.ALIGN_CENTER);
      cell1.setPadding (10.0f);
  
      table.addCell(cell);   
      table.addCell(new Paragraph("    "));
      table.addCell(new Paragraph("    "));
      table.addCell(new Paragraph("    "));
      table.addCell(new Paragraph("    "));
     
      table.addCell("Selected Vechile");
      table.addCell(car);
      table.addCell("Price");
      table.addCell(price);
      table.addCell("Per Day");
      table.addCell(perday);
      table.addCell("Driver Bata");
      table.addCell(driverbata);
      table.addCell("Source Point");
      table.addCell(source);
      table.addCell("Destination Point");
      table.addCell(destination);
      table.addCell("Distance");
      table.addCell(distance);
      table.addCell("Trip Way");
      table.addCell(way);
      table.addCell("Travelling Date");
      table.addCell(date);
      table.addCell("Number of Days");
      table.addCell(days);
      table.addCell("Name");
      table.addCell(fullname);
      table.addCell("Email");
      table.addCell(email);
      table.addCell("Phone Number");
      table.addCell(phonenumber);
      table.addCell("Address");
      table.addCell(Address);
      table.addCell("Basic Amount");
      table.addCell(basicamt);
      table.addCell("Driver Bata");
      table.addCell(finalbata);
      table.addCell("Gst");
      table.addCell(gst);
      table.addCell("Total Approx.amount");
      table.addCell(grandtotal);
      table.setSpacingBefore(30.0f);       
      table.setSpacingAfter(30.0f);        								          


      List list=new List(true,30);
          list.add(new ListItem("Java4s"));
      list.add(new ListItem("Php4s"));
      list.add(new ListItem("Some Thing...")); 


         document.open();		       

document.add(image);
    document.add(new Paragraph("Document Generated On - "+new Date().toString())); 

document.add(table);

         document.close();
   System.out.println("Pdf created successfully..");

       } catch (Exception e) {
           e.printStackTrace();
       }
       System.out.println("success");
       
       
	
	}
	

	

	
	
	}
