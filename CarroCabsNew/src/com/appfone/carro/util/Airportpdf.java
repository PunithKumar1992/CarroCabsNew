package com.appfone.carro.util;

import java.io.IOException;
import java.io.PrintWriter;
 import javax.servlet.http.HttpServletRequest;
 import javax.servlet.http.HttpServletResponse;
 import javax.servlet.http.HttpSession;

 import java.io.FileOutputStream;
 import java.util.Date;
import com.itextpdf.text.BaseColor;
 import com.itextpdf.text.Document;
 import com.itextpdf.text.Element;
 import com.itextpdf.text.Image;
 import com.itextpdf.text.List;
 import com.itextpdf.text.ListItem;
import com.itextpdf.text.Paragraph;
 import com.itextpdf.text.pdf.PdfPCell;
 import com.itextpdf.text.pdf.PdfPTable;
 import com.itextpdf.text.pdf.PdfWriter;
 import com.lowagie.text.Rectangle;
 


public class Airportpdf  {

	
	
String recipient=null;
String subject=null;
String content=null;
String airemail=null;
String airfullname=null;
	
	public void createPdf(HttpServletRequest request, HttpServletResponse response,String absoluteDiskPath,String imgabsolutePath) throws  IOException {
	
		PrintWriter out=response.getWriter();
		HttpSession session =request.getSession();
		String aircar=session.getAttribute("aircar").toString();
		String airsource=session.getAttribute("airsource").toString();
		String airdestination=session.getAttribute("airdestination").toString();
		String airway=session.getAttribute("airway").toString();
		String airdate=session.getAttribute("airdate").toString();
		airfullname=session.getAttribute("airfullname").toString();
		 airemail=session.getAttribute("airemail").toString();
		String airphonenumber=session.getAttribute("airphone").toString();
		String airaddress=session.getAttribute("airaddress").toString();
		String airbasicamt=session.getAttribute("airbasicamt").toString();
		airbasicamt=airbasicamt+"0 Rs";
		String airgst=session.getAttribute("airgst").toString();
		airgst=airgst+"0 Rs";
		String airtotal=session.getAttribute("airtotal").toString();
		airtotal=airtotal+"0 Rs";
		
		
		
		
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
      table.addCell(aircar);
      table.addCell("Source Point");
      table.addCell(airsource);
      table.addCell("Destination Point");
      table.addCell(airdestination);
      table.addCell("Trip Way");
      table.addCell(airway);
      table.addCell("Travelling Date");
      table.addCell(airdate);
      table.addCell("Name");
      table.addCell(airfullname);
      table.addCell("Email");
      table.addCell(airemail);
      table.addCell("Phone Number");
      table.addCell(airphonenumber);
      table.addCell("Address");
      table.addCell(airaddress);
      table.addCell("Basic Amount");
      table.addCell(airbasicamt);
      table.addCell("Gst");
      table.addCell(airgst);
      table.addCell("Total Approx.amount");
      table.addCell(airtotal);
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
