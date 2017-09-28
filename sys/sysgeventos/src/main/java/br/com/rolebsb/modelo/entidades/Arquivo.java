package br.com.rolebsb.modelo.entidades;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Entity
public class Arquivo {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private CommonsMultipartFile[] arquivos;
	private String descricao;
			

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public CommonsMultipartFile[] getArquivos() {
		return arquivos;
	}
	public void setArquivos(CommonsMultipartFile[] arquivos) {
		this.arquivos = arquivos;
	}


	
}
