package br.com.rolebsb.modelo.servico;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.rolebsb.modelo.entidades.Usuario;
import br.com.rolebsb.modelo.repositorios.UsuarioRepositorio;

public class UsuarioServico {
	
	@Autowired UsuarioRepositorio usuarioRepositorio;
	Iterable<Usuario>  usuarios = usuarioRepositorio.findAll();
	
	private String email;
	private String senha;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	
}
