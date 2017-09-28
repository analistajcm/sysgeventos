package br.com.rolebsb.modelo.entidades;

import java.util.List;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Eventos {

	@Id
	@GeneratedValue (strategy = GenerationType.AUTO)
	private Long id;
	
	
	@NotNull
	@NotEmpty
	private String nome;
	
	
	@NotNull
	@NotEmpty
	private String dataInicio;
	
	
	@NotNull
	@NotEmpty
	private String dataFim;
	@NotEmpty
	private String horarioInicio;
	@NotEmpty
	private String horarioFim;
	@NotNull
	@NotEmpty
	private String quantidadeVagas;
	@Lob
	private String descricao;
	private String nomePalestrante;
	private Boolean tipo;
	private String url;
	private String descricaoUrl;
	
	// Relacionamentos
	
	@OneToMany(mappedBy = "evento")
	private Set<Comentario> comentarios;
	
	@OneToMany
	private List<Arquivo> arquivo;
	
	
	public Long getId() {
		return id;
	}
	public Long getId(Long id) {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDataInicio() {
		return dataInicio;
	}
	public void setDataInicio(String dataInicio) {
		this.dataInicio = dataInicio;
	}
	public String getDataFim() {
		return dataFim;
	}
	public void setDataFim(String dataFim) {
		this.dataFim = dataFim;
	}
	
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getNomePalestrante() {
		return nomePalestrante;
	}
	public void setNomePalestrante(String nomePalestrante) {
		this.nomePalestrante = nomePalestrante;
	}
	public Boolean getTipo() {
		return tipo;
	}
	public void setTipo(Boolean tipo) {
		this.tipo = tipo;
	}
	
	public Set<Comentario> getComentarios() {
		return comentarios;
	}

	public void setComentarios(Set<Comentario> comentarios) {
		this.comentarios = comentarios;
	}
	public String getHorarioInicio() {
		return horarioInicio;
	}
	public void setHorarioInicio(String horarioInicio) {
		this.horarioInicio = horarioInicio;
	}
	public String getHorarioFim() {
		return horarioFim;
	}
	public void setHorarioFim(String horarioFim) {
		this.horarioFim = horarioFim;
	}
	public String getQuantidadeVagas() {
		return quantidadeVagas;
	}
	public void setQuantidadeVagas(String quantidadeVagas) {
		this.quantidadeVagas = quantidadeVagas;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getDescricaoUrl() {
		return descricaoUrl;
	}
	public void setDescricaoUrl(String descricaoUrl) {
		this.descricaoUrl = descricaoUrl;
	}
	public List<Arquivo> getArquivo() {
		return arquivo;
	}
	public void setArquivo(List<Arquivo> arquivo) {
		this.arquivo = arquivo;
	}
	
	
	
}
