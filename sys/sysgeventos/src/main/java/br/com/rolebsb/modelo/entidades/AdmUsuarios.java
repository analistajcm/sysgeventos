package br.com.rolebsb.modelo.entidades;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class AdmUsuarios {

	@Id
	@GeneratedValue (strategy = GenerationType.AUTO)		
	private Long id;
	
	@ManyToOne
	private Eventos evento;
	
	@ManyToOne
	private Usuario usuario;

	
	private Boolean presenca;
	
	private Boolean organizador;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Eventos getEvento() {
		return evento;
	}

	public void setEvento(Eventos evento) {
		this.evento = evento;
	}

	public Usuario getUsario() {
		return usuario;
	}

	public void setUsario(Usuario usuario) {
		this.usuario = usuario;
	}
	
	public Boolean getPresenca() {
		return presenca;
	}

	public void setPresenca(Boolean presenca) {
		this.presenca = presenca;
	}

	public Boolean getOrganizador() {
		return organizador;
	}

	public void setOrganizador(Boolean organizador) {
		this.organizador = organizador;
	}

	
}
