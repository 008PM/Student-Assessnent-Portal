package com.mail;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Component;


@Component
public class Mailwali
{
	
	  private MailSender mailSender;  
	   
	@Autowired
	  public void setMailSender(MailSender mailSender) {  
	        this.mailSender = mailSender;  
	    }  
	
	
	   @Bean
	    public MailSender getMailSender() {
		return mailSender;
	}



		public void sendMail(String from, String to, String subject, String msg) {  
	        //creating message  
	        SimpleMailMessage message = new SimpleMailMessage();  
	        message.setFrom(from);  
	        message.setTo(to);  
	        message.setSubject(subject);  
	        message.setText(msg);  
	        //sending message  
	        mailSender.send(message);     
	    }  
}
