package com.appfone.carro.util;

import java.io.File;
import java.util.Properties;

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
import javax.mail.internet.MimeMultipart;


public class EmailUtility {
	
//	final String user="carrocar12345@gmail.com";
//    final String psw="car12345";//changes to be made accoordingly
   /* private String host;
	private String port;
	*/
	
	public void sendMail(String to ,String subject ,String msg,String abpath,String fullname)
	{
		 final String user="marketing@appfonehub.com";
	        final String psw="Appfone@123";//changes to be made accoordingly
	        

	        Properties props = new Properties();
	        props.put("mail.smtp.host", "mail.appfonehub.com");
	        props.put("mail.smtp.socketFactory.port", "465");
	        props.put("mail.smtp.auth", "true");
	        props.put("mail.smtp.port", "587");

	      

	        Session session = Session.getDefaultInstance(props,
	                new javax.mail.Authenticator() {
	                    protected PasswordAuthentication getPasswordAuthentication() {
	                        return new PasswordAuthentication(user,psw);
	                    }
	                });

	        try
	        {
	            System.out.println(to+""+subject+""+msg);

	            MimeMessage message = new MimeMessage(session);
	            message.setFrom(new InternetAddress(user));
	            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
	            message.setSubject(subject);
	            



	             BodyPart msgBodyPart1 = new MimeBodyPart();  
	             msgBodyPart1.setText(msg);

	                Multipart multipart = new MimeMultipart();
	                multipart.addBodyPart(msgBodyPart1);
	               
	            MimeBodyPart msgBodyPart2 = new MimeBodyPart();
	            
	           
	            System.out.println("abpath" +abpath);
	            
				 	String path = abpath;
				 	String name=fullname+".pdf";
				 	System.out.println("file path from email " +name);
		            String filename= path;
				
	           

	            message.setHeader("Content-Disposition", "attachement ; filename= \""+name+"\"");
	            DataSource src = new FileDataSource(filename);
	            //String src1=filename;
	            msgBodyPart2.setDataHandler(new DataHandler(src));
	            msgBodyPart2.setFileName(name);
	            multipart.addBodyPart(msgBodyPart2);
	            System.out.println(multipart);
	            message.setContent(multipart);
	            System.out.println("8888"); 
	            Transport.send(message);
	          // File delfile=new File(src1);
	            //src.delete();
	          
	        }
	        catch(MessagingException e)
	        {
	         System.out.println(e);
	        }
		
		
	}
	
	public  void delfile(String abpath)
	{
		File delfile=new File(abpath);
		delfile.delete();
	}
}