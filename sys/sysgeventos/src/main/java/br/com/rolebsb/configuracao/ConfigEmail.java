package br.com.rolebsb.configuracao;

import java.util.ArrayList;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import br.com.rolebsb.servico.SimpleAuth;

public class ConfigEmail {
	private String mailSMTPServer;
	private String mailSMTPServerPort;
	
	public ConfigEmail() {
		mailSMTPServer = "smtp.gmail.com";
		mailSMTPServerPort = "465";
	}
	
	
	public void sendEmail(ArrayList<String> emails, String subject, String message) {
		Properties propriedade = new Properties();
		
		propriedade.put("mail.transport.protocol", "smtp");
		propriedade.put("mail.smtp.starttls", "true");
		propriedade.put("mail.smtp.host", mailSMTPServer);
		propriedade.put("mail.smtp.auth", "true");
		propriedade.put("mail.smtp.user", "rolebsb2017@gmail.com");
		propriedade.put("mail.debug", "true");
		propriedade.put("mail.smtp.port", mailSMTPServerPort);
		propriedade.put("mail.smtp.socketFactory.port", mailSMTPServerPort);
		propriedade.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		propriedade.put("mail.smtp.socketFactory.fallback", "false");
		
		SimpleAuth auth = new SimpleAuth("rolebsb2017@gmail.com", "2017set19");
		
		Session session = Session.getDefaultInstance(propriedade, auth);
		session.setDebug(true);
		
		Message msg = new MimeMessage(session);
		try{
			for(String email : emails){
				msg.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
				msg.setFrom(new InternetAddress("rolebsb2017@gmail.com"));
				msg.setSubject(subject);
				msg.setContent(message, "text/plain");	
			}
		}catch (Exception e){
			System.out.println(">>> ERRO: Completar Mensagem");
			e.printStackTrace();
		}
		
		Transport tr;
		try{
			tr = session.getTransport("smtp");
			
			tr.connect(mailSMTPServer, "rolebsb2017@gmail.com", "2017set19");
			msg.saveChanges();getClass();
			
			tr.sendMessage(msg, msg.getAllRecipients());
			tr.close();
		}catch (Exception e){
			System.out.println(">>>> ERRO: Envio Mensagem");
			e.printStackTrace();
		}
	}
}
