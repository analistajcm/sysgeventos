package br.com.rolebsb.servico;

import java.net.PasswordAuthentication;

import javax.mail.Authenticator;

public class SimpleAuth extends Authenticator {

	public String username = null;
	public String password = null;
	
	public SimpleAuth(String usuario, String senha) {
		username = usuario;
		password = senha;
	}
	protected PasswordAuthentication gePasswordAuthentication() {
		return new PasswordAuthentication(username, password.toCharArray());
	}
	
}
