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
 


public class Packagepdf  {

	
	
String recipient=null;
String subject=null;
String content=null;
String packageemail=null;
String packagefullname=null;
	
	public void createPdf(HttpServletRequest request, HttpServletResponse response,String absoluteDiskPath,String imgabsolutePath) throws  IOException {
	
		PrintWriter out=response.getWriter();
		HttpSession session =request.getSession();
		String packcar=session.getAttribute("package_vehiclename").toString();
		packagefullname=session.getAttribute("packagefullname").toString();
		packageemail=session.getAttribute("packageemail").toString();
		String packagephone=session.getAttribute("packagephone").toString();
		String packageaddress=session.getAttribute("packageaddress").toString();
		String packageprice=session.getAttribute("packageprice").toString();
		packageprice=packageprice+"0 Rs";
		String packgst=session.getAttribute("packagegst").toString();
		packgst=packgst+"0 Rs";
		String packtotal=session.getAttribute("packagetotal").toString();
		packtotal=packtotal+"0 Rs";
		
		
		
		
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
      table.addCell(packcar);
      table.addCell("Name");
      table.addCell(packagefullname);
      table.addCell("Email");
      table.addCell(packageemail);
      table.addCell("Phone Number");
      table.addCell(packagephone);
      table.addCell("Address");
      table.addCell(packageaddress);
      table.addCell("Basic Amount");
      table.addCell(packageprice);
      table.addCell("Gst");
      table.addCell(packgst);
      table.addCell("Total Approx.amount");
      table.addCell(packtotal);
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
