package com.login;
import java.io.File;
import java.util.Properties;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.activation.*;
import javax.mail.internet.*;
public class SendMail 
{
	private static final String SMTP_HOST_NAME = "smtp.gmail.com";
	private static final String SMTP_PORT = "465";
	private static final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";   
	public static boolean sendResetMail(String recipient, String subject,String message,String filename)  
	{
		boolean debug = true;
		String from="testweb315@gmail.com";
		try
		{
			Properties props = new Properties();
			props.put("mail.smtp.host", SMTP_HOST_NAME);
			props.put("mail.smtp.auth", "true");
			props.put("mail.debug", "true");
			props.put("mail.smtp.port", SMTP_PORT);
			props.put("mail.smtp.socketFactory.port", SMTP_PORT);
			props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
			props.put("mail.smtp.socketFactory.fallback", "false");
			Session session = Session.getInstance(props,new javax.mail.Authenticator() 
			{
				protected PasswordAuthentication getPasswordAuthentication() 
				{
					return new PasswordAuthentication("testweb315@gmail.com", "testmail@123");
				}
			});
			
			session.setDebug(debug);
			Message msg = new MimeMessage(session);
			InternetAddress addressFrom = new InternetAddress(from);
			msg.setFrom(addressFrom);		
			InternetAddress addressTo = new InternetAddress();
			addressTo = new InternetAddress(recipient);
			msg.setRecipient(Message.RecipientType.TO, addressTo);
		    // Setting the Subject and Content Type
			msg.setSubject(subject);
			msg.setContent(message, "text/plain");
			BodyPart messageBodyPart = new MimeBodyPart();
			messageBodyPart.setText(message);
			Multipart multipart = new MimeMultipart();
			multipart.addBodyPart(messageBodyPart);
			if(filename.equals("no"))
			{ 
				   System.out.println("Information about Files");
			 }
			 else
			 {
				   messageBodyPart = new MimeBodyPart();
				   DataSource source = new FileDataSource(filename);
			       messageBodyPart.setDataHandler(new DataHandler(source));
				   File file = new File(filename);
				   messageBodyPart.setFileName(file.getName());
				   multipart.addBodyPart(messageBodyPart);
			   }
			   msg.setContent(multipart);
			   Transport.send(msg);
		}
		catch(Exception e)
		{
		     	System.out.println(e);
			    debug = false;
		}		
		return debug;
	}
	public static void main(String args[]) throws MessagingException, Exception
	{
		   String recipient="testweb315@gmail.com";
		   String subject="Test";
		   String message="Hi Welcome to Maximiner Website";
		   String filename="no";
		   boolean flag= SendMail.sendResetMail(recipient,subject,message,filename);
		   if(flag==true)
		   {
			 System.out.println("Hello Candidate, Email has been sent to your respective Email ID, Please Check your Email"); 
		   }
	}
}